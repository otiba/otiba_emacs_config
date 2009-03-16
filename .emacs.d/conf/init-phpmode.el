;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;;
;; php-mode
;;
(add-to-load-path "~/.emacs.d/elisp/php-mode-1.5.0")
(autoload 'php-mode "php-mode")
(setq auto-mode-alist
      (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
