;; -*- lexical-binding: t; -*-

(when (featurep! :completion company)
  (when (featurep! :tools lsp +eglot)
    (add-hook 'nix-mode-hook
              (lambda ()
                (set-company-backend! '(nix-mode)
                  `(:separate
                    company-nixos-options
                    ,(when (featurep! :personal company-setup +tabnine)
                       'company-tabnine)
                    company-files
                    company-yasnippet))))))
