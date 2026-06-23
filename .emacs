(tool-bar-mode -1)
(menu-bar-mode -1)
(load-theme 'leuven-dark t)
(scroll-bar-mode -1)

(setq display-line-numbers-type 'visual)
(global-display-line-numbers-mode 1)

(set-face-attribute 'default nil :height 150)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-o") 'other-window)

(global-auto-revert-mode 1)

(setq treesit-language-source-alist
      '((typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
        (tsx        "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")))

(setq treesit-language-source-alist
      '((mach "https://github.com/octalide/mach-tree-sitter")))

(add-to-list 'auto-mode-alist '("\\.mach\\'" . mach-ts-mode))

(setq treesit-language-source-alist
 '((bash "https://github.com/tree-sitter/tree-sitter-bash")
   (cmake "https://github.com/uyha/tree-sitter-cmake")
   (css "https://github.com/tree-sitter/tree-sitter-css")
   (elisp "https://github.com/Wilfred/tree-sitter-elisp")
   (go "https://github.com/tree-sitter/tree-sitter-go")
   (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
   (dockerfile "https://github.com/camdencheek/tree-sitter-dockerfile")
   (html "https://github.com/tree-sitter/tree-sitter-html")
   (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
   (json "https://github.com/tree-sitter/tree-sitter-json")
   (make "https://github.com/alemuller/tree-sitter-make")
   (markdown "https://github.com/ikatyang/tree-sitter-markdown")
   (python "https://github.com/tree-sitter/tree-sitter-python")
   (toml "https://github.com/tree-sitter/tree-sitter-toml")
   (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
   (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
   (yaml "https://github.com/ikatyang/tree-sitter-yaml")))

(setq explicit-shell-file-name "powershell.exe")
(setq explicit-powershell.exe-args '("-ExecutionPolicy" "Bypass" "-NoInteractive"))

(add-to-list 'auto-mode-alist '("\\.ts\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))

(setq find-program "C:/msys64/usr/bin/find.exe"
      grep-program "C:/msys64/usr/bin/grep.exe")

(setq explicit-shell-file-name "powershell.exe")
;; Remove default arguments that cause startup failures in Emacs buffers
(setq explicit-powershell.exe-args '())
