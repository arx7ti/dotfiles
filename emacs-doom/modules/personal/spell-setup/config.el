;; -*- lexical-binding: t; -*-

(with-eval-after-load 'ispell
  (progn
    (defun ispell-get-coding-system () 'utf-8)
    (setenv "LANG" "en_US.UTF-8")
    (setq ispell-program-name (executable-find "hunspell")
            ispell-dictionary "ru_RU,en_GB,en_US"
            ispell-personal-dictionary "~/.doom.d/personal_dict")
    (ispell-set-spellchecker-params)
    (ispell-hunspell-add-multi-dic ispell-dictionary)
    (unless (file-exists-p ispell-personal-dictionary)
        (write-region "" nil ispell-personal-dictionary nil 0))))
