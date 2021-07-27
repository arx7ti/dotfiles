;; -*- lexical-binding: t; -*-

(use-package! esh-autosuggest
  :when (featurep! :personal eshell-setup)
  :after eshell
  :hook (eshell-mode . esh-autosuggest-mode))

(when (featurep! :personal eshell-setup)
  (after! eshell
    (set-eshell-alias!
     "doom" "{~/.emacs.d/bin/doom $1}"
     "dc" "find-file-other-window '~/.doom.d/README.org'"
     "hep" "find-file-other-window '~/.config/nixpkgs/config.nix'"
     "hec" "find-file-other-window '~/.config/nixpkgs/home.nix'"
     "eec" "find-file-other-window '~/.config/nixpkgs/derive/emacs/default.nix'"
     "ff" "find-file-other-window $1"
     "r" "dired-other-window $1"
     "mkd" "{mkdir -p $*}"
     "nix" "PAGER='' nix $*"
     "nix-env-s" "{PAGER='' nix-env -f '<nixpkgs>' $*}"
     "nix-env-u" "{PAGER='' nix-env -f '<unstable>' $*}"
     "run" "{nohup $* 2>&1 >/dev/null &}")
    (use-package! em-smart
      :config
      (setq eshell-where-to-jump 'begin
            eshell-review-quick-commands nil
            eshell-smart-space-goes-to-end t)
      (add-hook 'eshell-mode-hook 'eshell-smart-initialize))
    (use-package! esh-module
      :config
      (add-to-list 'eshell-modules-list 'eshell-tramp))))
