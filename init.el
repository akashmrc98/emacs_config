;; adding melpa packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; declaring packages
(load-file "./.emacs.d/custom/evil.el")
(load-file "./.emacs.d/custom/basic.el")
(load-file "./.emacs.d/custom/neotree.el")
(load-file "./.emacs.d/custom/ide.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4933" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("24714e2cb4a9d6ec1335de295966906474fdb668429549416ed8636196cb1441" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" default)))
 '(flymake-google-cpplint-command "/home/akash/anaconda3/bin/cpplint")
 '(package-selected-packages
   (quote
    (dashboard prettier vue-mode xref-js2 js2-mode emmet-mode web-mode autopair all-the-icons-dired centaur-tabs spaceline-all-the-icons spaceline irony flymake-cursor google-c-style flymake-google-cpplint iedit evil-surround auto-compile auto-complete-c-headers yasnippet company flymake-json flymake-eslint flycheck neotree dracula-theme evil-snipe org-bullets org-babel-eval-in-repl gruvbox-theme evil-leader evil-escape evil-commentary)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#282828"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

