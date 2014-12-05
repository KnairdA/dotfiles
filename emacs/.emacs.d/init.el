(setq package-archives '(
	("melpa" . "http://melpa.milkbox.net/packages/")
	("org" . "http://orgmode.org/elpa/")
	("gnu" . "http://elpa.gnu.org/packages/")
	("org" . "http://orgmode.org/elpa/")
))

(require 'package)
(package-initialize)

(require 'evil)
(evil-mode 1)
(global-evil-tabs-mode t)

(setq inhibit-startup-message t)
(load-theme 'molokai t)
(set-frame-font "Source Code Pro-9")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-hl-line-mode 1)
(setq-default tab-width 4)
(setq make-backup-files nil)
(setq auto-save-default nil)

(define-key evil-normal-state-map (kbd "M-<left>") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-<down>") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-<up>") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-<right>") 'evil-window-right)
