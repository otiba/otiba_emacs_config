;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; 引数をload-pathに追加する．
;; http://svn.coderepos.org/share/dotfiles/emacs/kentaro/
(defun add-to-load-path (&rest paths)
  (mapc '(lambda (path)
	   (add-to-list 'load-path path))
	(mapcar 'expand-file-name paths)))

;; load-pathを追加
(add-to-load-path "~/.emacs.d/elisp" ;;elisp格納ディレクトリ
		  "~/.emacs.d/conf") ;;個別の設定格納ディレクトリ

;; 個別の設定をロード
(load "init-color")
(load "init-global")
(load "init-skk")
(load "init-howm")
;;(load "init-gnuplot")
;;(load "init-yatex")
(load "init-mew")
;;(load "init-elscreen")
;;(load "init-highlighting.el")
;:(load "init-phpmode.el")
;;(load "init-anything.el")
(load "init-html-helper-mode")
(load "init-hatena")
;;(load "init-autoinsert")
;;(load "init-git-emacs.el")
;;(load "init-clisp")
;;(load "init-gauche")
(load "init-outputz")