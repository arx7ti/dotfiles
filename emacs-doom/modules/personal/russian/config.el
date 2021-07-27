;;; -*- lexical-binding: t; -*-

(cond
 ((featurep! :personal russian +dvorak)
  (progn
    (load! "ru-dvorak")
    (use-package! ru-dvorak
      :init
      (setq default-input-method 'ru-dvorak))))
 ((featurep! :personal russian +cmk-dh)
  (progn
      (load! "ru-cmk-dh")
      (use-package! ru-cmk
        :init
        (setq default-input-method 'ru-cmk))))
 ((featurep! :personal russian)
  (setq default-input-method 'russian-computer)))

;; (when (featurep! :personal russian +dvorak)
;;     (progn
;;       (load! "ru-dvorak")
;;       (use-package! ru-dvorak
;;         :init
;;         (setq default-input-method 'ru-dvorak))))

;; (when (featurep! :personal russian +cmk-dh)
;;     (progn
;;       (load! "ru-cmk-dh")
;;       (use-package! ru-cmk
;;         :init
;;         (setq default-input-method 'ru-cmk))))

;; (when (featurep! :personal russian)
;;   (setq default-input-method 'russian-computer))
