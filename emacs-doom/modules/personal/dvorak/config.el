;; -*- lexical-binding: t; -*-

(when (and (featurep! :ui doom-dashboard)
           (featurep! :personal dvorak))
  (defun extra-keys ()
    (keyboard-translate ?\C-t ?\C-x)
    (keyboard-translate ?\C-x ?\C-t))
  (add-hook '+doom-dashboard-mode-hook #'extra-keys))
