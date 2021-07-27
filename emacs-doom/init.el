;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(defvar evil-respect-visual-line-mode nil)

(doom! :completion
       company
       (ivy +fuzzy +prescient +icons)

       :ui
       ;; (ligatures +iosevka +extra)
       deft
       doom
       doom-dashboard
       doom-quit
       hl-todo
       hydra
       indent-guides
       nav-flash
       ophints
       (popup +defaults)
       treemacs
       ;; unicode
       vc-gutter
       vi-tilde-fringe
       window-select
       zen

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       lispy
       multiple-cursors
       rotate-text
       snippets
       word-wrap

       :emacs
       (dired +ranger +icons)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       eshell
       vterm

       :checkers
       syntax
       ;; (spell +flyspell +hunspell)
       grammar

       :tools
       ;; ansible
       direnv
       ;; (debugger +lsp)
       ;; docker
       ;; ein
       ;; (eval +overlay)
       ;; (lookup +offline +docsets)
       ;; (lsp +peek)
       magit
       pdf
       ;; rgb
       ;;upload

       :os
       (:if IS-MAC macos)
       ;;tty

       :lang
       (cc +lsp)
       ;; clojure
       ;; common-lisp
       ;; data
       ;; (elm +lsp)
       emacs-lisp
       ;; haskell
       ;; hy
       (json +lsp)
       ;; (javascript +lsp)
       (latex +latexmk +cdlatex +lsp +fold)
       (markdown +grip)
       nix
       (org +dragndrop +gnuplot +jupyter +pretty +pandoc)
       (python)
       ;; (rust +lsp)
       ;; scheme
       sh
       web
       (yaml +lsp)

       :email
       ;; (mu4e +gmail)

       :personal
       ;; personal-packages                ; should be loaded first
       exwm
       ;; eshell-setup
       ;; emms
       ;; marker-navigation
       ;; scrolling
       ;; im
       ;; dvorak
       ;; (russian +dvorak)
       ;; atomic-chrome
       ;; google-translate
       ;; (company-setup)
       ;; spell-setup
       ;; lispy-setup
       (org-setup +nix)
       ;; markdown-setup
       ;; haskell-setup
       ;; rust-setup
       ;; python-setup
       ;; scheme-setup
       nix-setup
       ;; (ewal +doom)
       ;; appearance-extra

       :config
       literate
       (default +bindings +smartparens))
