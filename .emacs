(tool-bar-mode -1)
(menu-bar-mode -1)
(load-theme 'leuven-dark t)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :height 180)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-o") 'other-window)

(setq treesit-language-source-alist
      '((typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
        (tsx        "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")))

(setq explicit-shell-file-name "powershell.exe")
(setq explicit-powershell.exe-args '("-ExecutionPolicy" "Bypass" "-NoInteractive"))

(add-to-list 'auto-mode-alist '("\\.ts\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))

(setq find-program "C:/msys64/usr/bin/find.exe"
      grep-program "C:/msys64/usr/bin/grep.exe")

(setq explicit-shell-file-name "powershell.exe")
;; Remove default arguments that cause startup failures in Emacs buffers
(setq explicit-powershell.exe-args '())

(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode -1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
