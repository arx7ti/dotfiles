;; -*- lexical-binding: t; -*-

(use-package! atomic-chrome
  :init
  (setq atomic-chrome-default-major-mode 'markdown-mode)
  (setq atomic-chrome-buffer-open-style 'frame)
  (atomic-chrome-start-server))
