(setq package-archives '(
	("melpa" . "http://melpa.milkbox.net/packages/")
	("org" . "http://orgmode.org/elpa/")
	("gnu" . "http://elpa.gnu.org/packages/")
))

(require 'package)
(package-initialize)

(require 'evil)
(evil-mode 1)

(load-theme 'molokai t)
(set-frame-font "Source Code Pro-9")

(if window-system
    (progn
      (menu-bar-mode -1)
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(global-hl-line-mode 1)

(define-key evil-normal-state-map (kbd "M-<left>") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-<down>") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-<up>") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-<right>") 'evil-window-right)
