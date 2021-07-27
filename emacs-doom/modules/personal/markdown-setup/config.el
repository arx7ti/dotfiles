;; -*- lexical-binding: t; -*-

(when (featurep! :lang markdown)
  (setq markdown-hide-urls t)
  (add-to-list 'auto-mode-alist
               '("\\.rmd\\'" . markdown-mode)))

(when (featurep! :completion company)
  (add-hook 'markdown-mode-hook
            (lambda ()
              (set-company-backend! '(markdown-mode)
                `(:separate
                  company-capf
                  ,@(when (featurep! :personal company-setup +tabnine)
                      '(:with company-tabnine))
                  company-files
                  company-dabbrev
                  company-yasnippet
                  company-ispell)))))
