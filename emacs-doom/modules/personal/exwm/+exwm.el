(require 'exwm)
(require 'exwm-config)
(require 'exwm-systemtray)
(require 'exwm-xim)
(require 'exwm-randr)
(require 'exwm-edit)

(defun switch-system-im ()
  (interactive)
  (start-process-shell-command "xkb-switch" nil "xkb-switch -n"))

(setq mouse-autoselect-window t
      focus-follows-mouse t)

(setq exwm-input-global-keys
      `(([?\s-r] . exwm-reset)
        ([?\s-w] . exwm-workspace-switch)
        ,@(mapcar (lambda (i)
                    `(,(kbd (format "s-%d" i)) .
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9))
        (,(kbd "s-&") . (lambda (command)
                          (interactive (list (read-shell-command ">> ")))
                          (start-process-shell-command command nil command)))
        (,(kbd "s-h") . evil-window-left)
        (,(kbd "s-l") . evil-window-right)
        (,(kbd "s-j") . evil-window-down)
        (,(kbd "s-k") . evil-window-up)
        (,(kbd "s-'") . +eshell/toggle)
        (,(kbd "s-t") . +vterm/toggle)
        (,(kbd "s-a") . switch-system-im)))

(when (featurep! +sim-duplicate)
  (when (featurep! :personal russian)
    (add-to-list 'exwm-input-global-keys
                 `(,(kbd "s-ф") . switch-system-im))))

(setq exwm-workspace-number 1)
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

(exwm-systemtray-enable)
(exwm-xim-enable)

(when (featurep! :editor evil)
  (evil-set-initial-state 'exwm-mode 'emacs)
  (defvar m-space 134217760
    "Key value for M-SPC.")
  (push ?\C-\\ exwm-input-prefix-keys)
  (push m-space exwm-input-prefix-keys))

(setq exwm-randr-workspace-monitor-plist '(0 "HDMI-1"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output eDP-1 --left-of HDMI-1 --auto")))
(exwm-randr-enable)

(defun run-exwm ()
  "Launch exwm displaying battery and time."
  (interactive)
  (progn
    (exwm-enable)
    (display-battery-mode)
    (display-time-mode)))
