;;; .emacs -*- lexical-binding: t; -*-
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(tool-bar-mode -1)
(menu-bar-mode -1)
(load-theme 'leuven-dark t)
(scroll-bar-mode -1)

(unless (package-installed-p 'evil)
  (package-refresh-contents)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)

(setq display-line-numbers-type 'visual)
(global-display-line-numbers-mode 1)

(set-face-attribute 'default nil :height 150)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-o") 'other-window)

(global-auto-revert-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(dart-mode evil markdown-mode)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq project-vc-extra-root-markers '(".project"))
