;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


;;
;; gnuplot
;;
(setq load-path (append (list "~/.emacs.d/elisp/gnuplotmode0.6.0") load-path))
(autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
(autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)
(setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode)) auto-mode-alist))
(global-set-key [(f9)] 'gnuplot-make-buffer)

