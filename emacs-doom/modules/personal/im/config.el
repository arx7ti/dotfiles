;; -*- lexical-binding: t; -*-

;; Taken from [https://github.com/emacs-evil/evil/issues/605]
;; and [https://github.com/khaoos-abominable/dotfiles/blob/master/spacemacs/dotspacemacs]
;; Rebind commands that don't respect input method
(when (featurep! :editor evil)
  (after! evil
    (load! "khaoos-respect-im")))
