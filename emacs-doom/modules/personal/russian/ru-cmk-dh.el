;;; ~/.doom.d/ru-dvorak.el -*- lexical-binding: t; -*-

(require 'quail)
(quail-define-package "ru-cmk" "Russian" "RC" t
                  "Russian layout matching Mac keyboard labels"
                  nil t nil nil nil nil nil nil nil nil t)
(seq-mapn (lambda (k v) (quail-defrule (char-to-string k) v))
          "`1234567890-=qwfpbjluy;[]\\arstgmneio'xcdvzkh,./~!@#$%^&*()_+QWFPBJLUY:{}|ARSTGMNEIO\"XCDVZKH<>?"
          "ё1234567890-=йцукенгшщзхъ\\фывапролджэячсмитьбю.Ё!\"#;%:?*()_+ЙЦУКЕНГШЩЗХЪ/ФЫВАПРОЛДЖЭЯЧСМИТЬБЮ,")
(provide 'ru-cmk)
