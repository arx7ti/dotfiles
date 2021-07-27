;; -*- no-byte-compile: t; -*-
;;; personal/ewal/packages.el

(when (featurep! :personal ewal)
    (progn
      (package! ewal)
      (package! ewal-evil-cursors)))

(when (featurep! :personal ewal +spacemacs)
    (package! ewal-spacemacs-themes))

(when (featurep! :personal ewal +doom)
  (package! ewal-doom-themes))
