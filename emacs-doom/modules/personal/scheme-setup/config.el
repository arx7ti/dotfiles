;; -*- lexical-binding: t; -*-

(when (featurep! :lang scheme)
  (after! geiser

    (defun set-scheme ()
      (make-variable-buffer-local (defvar scheme nil))
      (add-hook 'window-configuration-change-hook
                (lambda ()
                  (setq geiser-default-implementation scheme)) nil t))

    (add-hook 'text-mode-hook #'set-scheme)
    (add-hook 'prog-mode-hook #'set-scheme)

    (defun ni/geiser-set-scheme (impl)
      "Associates current buffer with a given Scheme implementation."
      (interactive)
      (save-excursion
        (geiser-syntax--remove-kws)
        (geiser-impl--set-buffer-implementation impl)
        (geiser-repl--set-up-repl impl)
        (geiser-syntax--add-kws)
        (geiser-syntax--fontify)))))
