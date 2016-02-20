(require 'package)
(when (>= emacs-major-version 24)
  ;(require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)
(elpy-enable)
(elpy-use-ipython)
;If you find the (Python Elpy yas AC ElDoc Fill) mode line annoying, also add:
; (elpy-clean-modeline)
(load-theme 'tsdh-dark)
;; set transparency
;; (set-frame-parameter (selected-frame) 'alpha '(85 85))
;; (add-to-list 'default-frame-alist 'alpha 85 85)

;; don't need toolbar, TODO make it toogle
(tool-bar-mode -1)
;; don't need menubar, TODO make it toogle
(menu-bar-mode -1)

;; sort python imports  IPYTHON ERROR?
; (require 'pyimpsort)
; (eval-after-load 'pyton
;  '(define-key python-mode-map "/C-c/C-u" #'pyimpsort-buffer))

;; column number
(setq column-number-mode t)
;; line number
(global-linum-mode t)
