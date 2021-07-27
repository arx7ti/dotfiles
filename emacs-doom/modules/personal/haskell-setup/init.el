;; -*- lexical-binding: t; -*-

(when (featurep! :personal haskell-setup +shm)
  (defvar shm "structured-haskell-mode"
    "SHM package name.")
  (defvar shm-repo
    (format "https://github.com/projectional-haskell/%s" shm)
    "SHM github repository.")
  (defvar shm-dir (concat private-packages-dir "/" shm)
    "Directory in PRIVATE-PACKAGES-DIR to store SHM.")

  (unless (file-directory-p shm-dir)
    (make-directory shm-dir t))

  (start-process-shell-command
   "Download SHM"
   nil
   (format "git clone %s %s"
           shm-repo shm-dir))

  (start-process-shell-command
   "Byte-compile SHM."
   nil
   (format "cd %s/elisp && make" shm-dir))

  (add-to-list 'load-path (format "%s/elisp" shm-dir)))
