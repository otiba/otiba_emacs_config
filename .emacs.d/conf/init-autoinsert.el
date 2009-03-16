;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'autoinsert)
(require 'cl)

(add-hook 'before-save-hook 'time-stamp)

(setq auto-insert-directory "~/.emacs.d/insert/")

(setq auto-insert-alist
      (nconc '(
	       ("\\.tex$" . ["template.tex" my-template])
	       ) auto-insert-alist))

(add-hook 'find-file-hooks 'auto-insert)

(defvar template-replacements-alists
  '(("%file%" . (lambda () (file-name-nondirectory (buffer-file-name))))))

(defun my-template ()
  (time-stamp)
  (mapc #'(lambda(c)
	    (progn
	      (goto-char (point-min))
	      (replace-string (car c) (funcall (cdr c)) nil)))
	template-replacements-alists)
  (goto-char (point-max))
  (message "done."))
