;; -*- no-byte-compile: t; -*-

(if (featurep! +nix)
    (package! exwm :ignore t)
  (package! exwm))
(package! exwm-edit)
