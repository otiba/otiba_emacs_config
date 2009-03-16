;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; 初期設定
(setq howm-menu-lang 'ja)
(global-set-key "\C-c,," 'howm-menu)
(autoload 'howm-menu "howm-mode" "Hitori Otegaru Wiki Modoki" t)
;; ToDoメニューの表示数
(custom-set-variables
 '(howm-menu-todo-num 7))
