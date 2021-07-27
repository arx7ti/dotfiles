;; -*- lexical-binding: t; -*-

(use-package! exwm
  :when (featurep! :personal exwm)
  :init
  (setq mouse-autoselect-window t
        focus-follows-mouse t)
  :config
  (add-hook 'exwm-init-hook
            (lambda ()
              (dolist (frame (frame-list))
                (set-frame-parameter frame 'alpha 100))))
  (defun run-exwm ()
    "Launch exwm displaying battery and time."
    (interactive)
    (progn
      (exwm-enable)
      (display-battery-mode)
      (display-time-mode)))
  (defun make-screenshot ()
    (interactive)
    (start-process-shell-command "maim" nil "cd && screenshot"))
  (defun maimpick ()
    (interactive)
    (start-process-shell-command "maim" nil "cd && maimpick"))
  (defun emuwheelinertia ()
    (interactive)
    (message (format "Ball Scroll Inertia: %s"
                     (string-trim (shell-command-to-string "emuwheelinertia"))))))

(use-package! exwm-config
  :after exwm
  :init
  (defun switch-system-im ()
    (interactive)
    (start-process-shell-command "xkb-switch" nil "xkb-switch -n"))
  (defun clipmenu ()
    (interactive)
    (start-process-shell-command "clipmenu" nil "clipmenu"))
  (defun print-volume ()
    (message "Volume: %s%%" (car (split-string (shell-command-to-string "pulsemixer --get-volume") "[ ]"))))
  (defun vol-up ()
    (interactive)
    (start-process-shell-command "pulsemixer" nil "pulsemixer --change-volume +5")
    (print-volume))
  (defun vol-down ()
    (interactive)
    (start-process-shell-command "pulsemixer" nil "pulsemixer --change-volume -5")
    (print-volume))
  (defun displayselect ()
    (interactive)
    (start-process-shell-command "displayselect" nil "displayselect"))
  :config
  (defun recreate-vterm-popup ()
    (interactive)
    (+vterm/toggle t))
  (setq exwm-input-global-keys
        `(([?\s-r] . exwm-reset)
          ([?\s-w] . exwm-workspace-switch)
          (\,@ (mapcar (lambda (i)
                         `(,(kbd (format "s-%d" i)) .
                           (lambda ()
                             (interactive)
                             (exwm-workspace-switch-create ,i))))
                       (number-sequence 0 9)))
          (\,@ (mapcar (lambda (i)
                         `(,(kbd (format "<s-kp-%d>" i)) .
                           (lambda ()
                             (interactive)
                             (exwm-workspace-switch-create ,i))))
                       (number-sequence 0 9)))
          (,(kbd "s-&") . (lambda (command)
                            (interactive (list (read-shell-command ">> ")))
                            (start-process-shell-command command nil command)))
          (,(kbd "s-b") . switch-to-buffer)
          (,(kbd "s-i") . exwm-input-toggle-keyboard)
          (,(kbd "s-f") . exwm-layout-toggle-fullscreen)
          (,(kbd "s-F") . exwm-floating-toggle-floating)
          (,(kbd "s-h") . evil-window-left)
          (,(kbd "s-l") . evil-window-right)
          (,(kbd "s-j") . evil-window-down)
          (,(kbd "s-k") . evil-window-up)
          (,(kbd "s-'") . +eshell/toggle)
          (,(kbd "s-t") . +vterm/toggle)
          (,(kbd "M-s-t") . recreate-vterm-popup)
          (,(kbd "s-v") . counsel-set-clip)
          (,(kbd "s-a") . switch-system-im)
          ;; (,(kbd "s-ф") . switch-system-im)
          (,(kbd "s-c") . clipmenu)
          (,(kbd "s--") . vol-down)
          (,(kbd "s-=") . vol-up)
          (,(kbd "<XF86AudioLowerVolume>") . vol-down)
          (,(kbd "<XF86AudioRaiseVolume>") . vol-up)
          (,(kbd "s-p p") . make-screenshot)
          (,(kbd "s-p P") . maimpick)
          (,(kbd "s-q") . kill-buffer)
          (,(kbd "s-Q") . kill-buffer-and-window)
          (,(kbd "<s-f3>") . displayselect)
          (,(kbd "s-[") . emuwheelinertia)))

  ;; (setq exwm-input-simulation-keys
  ;;       `((,(kbd "M-w") . [C-c])
  ;;         (,(kbd "C-i") . [C-c])
  ;;         (,(kbd "C-y") . [C-v])
  ;;         (,(kbd "C-s") . [C-f])
  ;;         (,(kbd "C-f") . [right])
  ;;         (,(kbd "C-b") . [left])
  ;;         (,(kbd "C-n") . [down])
  ;;         (,(kbd "C-p") . [up])
  ;;         (,(kbd "C-a") . [home])
  ;;         (,(kbd "C-e") . [end])
  ;;         (,(kbd "M-v") . [prior])
  ;;         (,(kbd "C-v") . [next])
  ;;         (,(kbd "C-d") . [delete])
  ;;         (,(kbd "C-k") . [S-end delete])
  ;;         (,(kbd "M-f") . [C-right])
  ;;         (,(kbd "M-b") . [C-left])))

  (when (featurep! +sim-duplicate)
    (when (featurep! :personal russian)
      (add-to-list 'exwm-input-global-keys
                   `(,(kbd "s-ф") . switch-system-im))))

  (setq exwm-workspace-number 10)
  (setq exwm-workspace-show-all-buffers t)
  (setq exwm-layout-show-all-buffers t)

  (defun exwm-rename-buffer ()
    "Update buffer name with window name."
    (interactive)
    (exwm-workspace-rename-buffer
     (concat exwm-class-name ":"
             (if (<= (length exwm-title) 50) exwm-title
               (concat (substring exwm-title 0 49) "...")))))

  (add-hook 'exwm-update-class-hook 'exwm-rename-buffer)
  (add-hook 'exwm-update-title-hook 'exwm-rename-buffer)

  (set-popup-rule! "^\Pavucontrol" :slot -1 :size 0.4 :select t))

(use-package! exwm-systemtray
  :after exwm
  :config
  (exwm-systemtray-enable))

(use-package! exwm-xim
  :after exwm
  :init
  (when (featurep! :editor evil)
    (evil-set-initial-state 'exwm-mode 'emacs)
    (defvar s-space 8388640
      "Key value for s-SPC.")
    (defvar m-space 134217760
      "Key value for M-SPC.")
    (push ?\C-\\ exwm-input-prefix-keys)
    (push m-space exwm-input-prefix-keys))
  :config
  (exwm-xim-enable))


(use-package! exwm-randr
  :after exwm
  :config
  (setq exwm-randr-workspace-monitor-plist '(1 "HDMI-0" 7 "DP-5" 8 "DP-5" 9 "DP-5"))
  (add-hook 'exwm-randr-screen-change-hook
            (lambda ()
              (start-process-shell-command
               "xrandr" nil "xrandr --output HDMI-0 --left-of DP-5 --auto")))
  (exwm-randr-enable))

(use-package! exwm-edit
  :after exwm)

(run-exwm)
