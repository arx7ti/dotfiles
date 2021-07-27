;; -*- lexical-binding: t; -*-

(use-package! ob-translate
  :after org)

(use-package! google-translate
  :custom
  (google-translate-backend-method 'curl)
  :init
  (map! :leader
        (:nv "C-t" 'google-translate-smooth-translate))
  :config
  (defun google-translate--search-tkk () "Search TKK." (list 430675 2721866130)))
