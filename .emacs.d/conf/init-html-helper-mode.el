;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(add-to-load-path "~/.emacd.d/elisp")
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))

