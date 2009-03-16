;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;;
;; ddskk
;;

;; サーバを使用
(setq skk-server-host "localhost")
(setq skk-server-portnuhm 1178)
;; 辞書ファイルは使わない
(setq skk-aux-large-jisyo nil)
;; 「．」「，」を使用
(setq skk-kutouten-type 'en)

(setq skk-auto-insert-paren t)

(add-hook 'skk-load-hook
	  (lambda ()
	    (require 'context-skk)))

(require 'skk-study)