;; -*- lexical-binding: t; -*-

(when (featurep! :lang haskell)
  (when (and (featurep! :tools lsp)
             (not (featurep! :tools lsp +eglot)))
    (after! lsp-haskell
      (setq lsp-haskell-process-path-hie
            (executable-find
             "haskell-language-server-wrapper"))))
  (after! haskell-mode
    (map! :map haskell-error-mode-map
          :n "q" '+popup/quit-window)
    (setq haskell-process-args-ghci
          '("-ignore-dot-ghci" "-ferror-spans"))))

(when (and (featurep! :completion company)
           (featurep! :personal company-setup +tabnine)
           (not (featurep! :lang haskell +lsp)))
  (add-hook 'haskell-mode-hook
            (lambda ()
              (set-company-backend! '(haskell-mode)
                `(:separate
                  company-capf :with company-tabnine
                  company-files
                  company-yasnippet)))))

(when (featurep! :personal haskell-setup +shm)
  (use-package! shm
    :after haskell-mode
    :defer t
    :hook
    (haskell-mode . structured-haskell-mode)))
