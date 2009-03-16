;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-




;;
;; YaTeX
;;
(setq auto-mode-alist
           (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
     (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq load-path (cons "~/.emacs.d/elisp/yatex1.73" load-path))
(add-hook 'yatex-mode-hook '(lambda() (reftex-mode t)))
