;;; personal/ewal/config.el -*- lexical-binding: t; -*-

(use-package! ewal
  :when (featurep! :personal ewal)
  :init (setq ewal-use-built-in-always-p nil
              ewal-use-built-in-on-failure-p t
              ewal-built-in-palette "sexy-material"))

(use-package! ewal-evil-cursors
  :when (featurep! :personal ewal)
  :after (ewal-spacemacs-themes ewal-doom-themes)
  :config (ewal-evil-cursors-get-colors
           :apply t :spaceline t))

(use-package! ewal-spacemacs-themes
  :when (featurep! :personal ewal +spacemacs)
  :config (progn
            (load-theme 'ewal-spacemacs-modern t)
            (add-hook 'doom-load-theme-hook
                      (lambda () (enable-theme 'ewal-spacemacs-modern)))))

(use-package! ewal-doom-themes
  :when (featurep! :personal ewal +doom)
  :config (progn
            (load-theme 'ewal-doom-one t)
            (add-hook 'doom-load-theme-hook
                      (lambda () (enable-theme 'ewal-doom-one)))))
