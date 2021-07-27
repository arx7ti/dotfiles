;; -*- lexical-binding: t; -*-


(when (and (featurep! :completion company)
           (featurep! :personal company-setup))
  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t
        company-backends '(company-capf))
  ;; Use the tab-and-go frontend.
  ;; Allows TAB to select and complete at the same time.
  (company-tng-configure-default)
  (setq company-frontends
        '(company-tng-frontend
          company-pseudo-tooltip-frontend
          company-echo-metadata-frontend)))

(use-package! company-tabnine
  :after company
  :defer t
  :when (and (featurep! :personal company-setup +tabnine)
             (featurep! :completion company))
  :config
  (setq company-tabnine--disable-next-transform nil)
  (defun my-company--transform-candidates (func &rest args)
    (if (not company-tabnine--disable-next-transform)
        (apply func args)
      (setq company-tabnine--disable-next-transform nil)
      (car args)))

  (defun my-company-tabnine (func &rest args)
    (when (eq (car args) 'candidates)
      (setq company-tabnine--disable-next-transform t))
    (apply func args))

  (advice-add #'company--transform-candidates :around #'my-company--transform-candidates)
  (advice-add #'company-tabnine :around #'my-company-tabnine))

(when (featurep! :tools lsp +eglot)
  (after! eglot
    (add-to-list 'eglot-stay-out-of 'company)))
