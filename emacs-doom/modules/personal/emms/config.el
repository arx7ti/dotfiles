;; -*- lexical-binding: t; -*-

(use-package! emms
  :init
  (emms-all)
  (emms-default-players)
  (map!
   :leader
   (:nv "ep" 'emms-pause
    :nv "es" 'emms-stop
    :nv "eo" 'emms-play-file
    :nv "ef" 'emms-seek-forward
    :nv "eb" 'emms-seek-backward
    :nv "e=" 'emms-volume-raise
    :nv "e-" 'emms-volume-lower)))
