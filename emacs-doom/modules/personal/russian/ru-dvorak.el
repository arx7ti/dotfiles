;;; ~/.doom.d/ru-dvorak.el -*- lexical-binding: t; -*-

(require 'quail)
(quail-define-package "ru-dvorak" "Russian" "RD" t
                  "Russian layout matching Mac keyboard labels"
                  nil t nil nil nil nil nil nil nil nil t)
(seq-mapn (lambda (k v) (quail-defrule (char-to-string k) v))
          "`1234567890[]',.pyfgcrl/=\\aoeuidhtns-;qjkxbmwvz~!@#$%^&*(){}\"<>PYFGCRL?+|AOEUIDHTNS_:QJKXBMWVZäêÄ·"
          "'1234567890-=йцукенгшщзхъ/фывапролджэячсмитьбю.~!\"#;%:?*()_+ЙЦУКЕНГШЩЗХЪ|ФЫВАПРОЛДЖЭЯЧСМИТЬБЮ,[]{}")
(provide 'ru-dvorak)
