;; load the package
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))


;; disable the tool bar
(tool-bar-mode -1)

;; turn on highlighting current line
(global-hl-line-mode 1)

;; auto insert closing bracket
(electric-pair-mode 1)

;; matching parenthesis highlight
(progn
  (show-paren-mode 1)
  (setq show-pare-style 'parenthesis)
  )

;; remember cursor position, for emacs 25.1 or later
;;(save-place-mode 1)

;; show line number
(global-linum-mode 1)

;; make typing delete/overwrites selected text
(delete-selection-mode 1)

;; use f12 open shell 
(global-set-key [f12] 'shell)

;; use f7 to compile file
(global-set-key [f7] 'compile)

;; use f4 to autoformat the whole buffer
(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key [f4] 'indent-buffer)

;;===========================================================================
;;sr-speedbar-mode
;;===========================================================================
(require 'sr-speedbar)

(setq speedbar-show-unknown-files t)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-skip-other-window-p t)
(setq sr-speedbar-max-width 10)
(setq sr-speedbar-width-x 10)

(global-set-key [f2] 'sr-speedbar-toggle)
(global-set-key (kbd "s-r") 'sr-speedbar-refresh-toggle)


