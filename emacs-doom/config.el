(remove-hook 'org-mode-hook #'+literate-enable-recompile-h)

(setq warning-minimum-level :emergency)
(setq +doom-dashboard-pwd-policy "~/")
(setq projectile-ignored-projects '("/tmp"))
(setq large-file-warning-threshold nil)
(setq evil-escape-key-sequence nil)

(remove-hook 'lispy-mode-hook #'turn-off-smartparens-mode)

(defun unfill-paragraph ()
  (interactive)
  (mark-paragraph)
  (next-line)
  (fill-region (region-beginning) (region-end)))

(setq user-full-name ""
      user-mail-address "")

;; font
(defvar used-font "Iosevka")
;; (defvar used-font "Fira Code")
(setq doom-font (font-spec :family used-font :size 18))
(add-hook! after-setting-font-hook
           :append
           (set-fontset-font "fontset-default" 'windows-1251 used-font)
           (set-fontset-font "fontset-default" 'symbol "Noto Color Emoji" nil 'prepend)
           (set-fontset-font "fontset-default" 'unicode "Noto Color Emoji" nil 'prepend))

;; delims
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode-enable)

;; theme
(setq doom-gruvbox-dark-variant 'hard
      doom-gruvbox-light-variant 'hard
      doom-gruvbox-brighter-comments t
      doom-gruvbox-light-brighter-comments t
      doom-solarized-dark-brighter-comments t
      doom-solarized-dark-brighter-text t
      doom-solarized-dark-brighter-modeline t
      doom-dracula-colorful-headers t
      doom-dracula-brighter-comments t
      doom-dracula-brighter-modeline t
      acme-theme-black-fg t)
(setq doom-theme 'acme)

(add-hook 'doom-load-theme-hook
          #'(lambda ()
              (doom-themes-set-faces nil
                '(font-lock-comment-face :slant 'italic))))

(setq display-line-numbers-type 'relative)

;; disable mixed-pitch-font
(setq +zen-mixed-pitch-modes nil)

;; pdf-mode midnight colors
;; (after! acme-theme
;;   (setq pdf-view-midnight-colors '("#000000" . "#FFFFE8"))
;;   (add-hook 'pdf-tools-enabled-hook #'pdf-view-midnight-minor-mode))

(use-package! polymode
  :init
  (add-hook 'polymode-init-inner-hook #'evil-normalize-keymaps))

(use-package! poly-org
  :after polymode
  :config
  (setq org-edit-src-content-indentation 0
        org-startup-indented nil
        org-src-fontify-natively t
        org-adapt-indentation nil))

(setq company-idle-delay 0
      company-minimum-prefix-length 1)
(with-eval-after-load 'company
  (company-flx-mode +1))

(setq org-directory "~/org/")

(defvar banner-dirname (expand-file-name "~/.doom.d/banners/"))

(defvar banner-list
  (directory-files banner-dirname 'full (rx ".png" eos) 'sort)
  "A list of banners for Doom Dashboard.")

(defun set-random-banner ()
  (setq fancy-splash-image
        (nth (random (- (length banner-list) 1)) banner-list)))

(add-hook 'window-configuration-change-hook #'set-random-banner)

(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque: ")
  (dolist (frame (frame-list))
    (set-frame-parameter frame 'alpha value)))

(advice-add 'doom-special-buffer-p
            :override (lambda (&rest args)
                        (with-current-buffer (car args)
                          (derived-mode-p 'special-mode))))

(setq initial-major-mode 'org-mode)

(defun compiler ()
  (interactive)
  (save-window-excursion
    (save-buffer)
    (async-shell-command
     (format "compiler %s"
             (shell-quote-argument
              (buffer-file-name))))))
