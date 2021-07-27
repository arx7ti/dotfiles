;; -*- lexical-binding: t; -*-

(map! :map python-mode-map
      :nvi "M-," 'pop-tag-mark)

(use-package! elpy
  :when (not (featurep! :lang python +lsp))
  :defer t
  :init
  (setq elpy-rpc-virtualenv-path 'current)
  (setq elpy-rpc-python-command "python3")
  (setq elpy-get-info-from-shell t)
  (setq elpy-get-info-from-shell-timeout 0)
  (elpy-enable)
  (map! :map python-mode-map
        :nvi "M-." 'elpy-goto-definition)

  (defun py-completion-setup ()
    (set (make-local-variable 'company-backends)
         '(elpy-company-backend
           company-capf
           company-yasnippet))))

(when (and (featurep! :lang python +lsp)
           (not (featurep! :lang python +pyright)))
  (setq lsp-python-ms-executable
        (executable-find "python-language-server"))
  (after! lsp-python-ms
    (set-lsp-priority! 'mspyls 1)))

(when (featurep! org)
  (add-to-list 'org-structure-template-alist
               '("j" . "src jupyter-python :async yes")))

(when (and (featurep! :completion company)
           (featurep! :tools lsp))
  (remove-hook 'python-mode-local-vars-hook
               #'+python-init-anaconda-mode-maybe-h))

(when (not (featurep! :lang python +lsp))
  (add-hook 'python-mode-hook
            (lambda ()
              (set-company-backend! '(python-mode)
                '(elpy-company-backend)))))

(use-package! ox-ipynb
  :when (featurep! :lang org)
  :defer t
  :after ox)
