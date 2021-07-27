;; -*- lexical-binding: t; -*-

(when (featurep! :lang rust)
  (when (and (featurep! :tools lsp)
             (not (featurep! :tools lsp +eglot)))
    (after! rustic
      (setq rustic-lsp-server 'rust-analyzer))))
