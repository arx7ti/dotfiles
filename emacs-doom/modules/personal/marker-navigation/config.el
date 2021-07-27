;; -*- lexical-binding: t; -*-

(defun go-to-marker ()
  (interactive)
  (search-forward "<++>")
  (delete-backward-char 4)
  (evil-insert 0))

(defun insert-marker ()
  (interactive)
  (insert "<++>"))

(map!
 :ni "M-c" 'go-to-marker
 :ni "C-<" 'insert-marker)
