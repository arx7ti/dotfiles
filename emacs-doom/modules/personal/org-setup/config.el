;; -*- lexical-binding: t; -*-

(after! org-mode
  (setq org-todo-keywords '((sequence "T" "0" "|" "V")
                            (sequence "&" "|" "X")))
  (add-to-list 'org-latex-packages-alist
               '("AUTO" "babel" t ("pdflatex")))
  (add-to-list 'org-latex-packages-alist
               '("AUTO" "polyglossia" t ("xelatex" "lualatex")))
  ;; Then use '#+LANGUAGE: ru' to get Russian
  
  (setq org-default-notes-file
        (concat org-directory "/notes.org"))
  (setq-default org-display-custom-times t)
  (setq org-time-stamp-custom-formats
        '("<%d.%m.%Y>" . "<%d.%m.%Y %H:%M>"))

  (add-hook 'org-mode-hook
            #'(lambda ()
                (turn-off-auto-fill)
                (+word-wrap-mode)))

  (setq org-image-actual-width 400))

(when (featurep! :completion company)
  (add-hook 'org-mode-hook
            (lambda ()
              (set-company-backend! '(org-mode)
                `(:separate
                  company-capf
                  ,@(when (featurep! :personal company-setup +tabnine)
                      '(:with company-tabnine))
                  company-files
                  company-dabbrev
                  company-yasnippet
                  company-ispell)))))
