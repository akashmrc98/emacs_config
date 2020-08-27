;; auto-complete 
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; yasnippets
(require 'yasnippet)
(yas-global-mode 1)

;; auto-complete-c-headers
;; type this command in the shell after this g++ -xc++ -E -v
; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-pc-linux-gnu/10.1.0/include")
)

; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;; iedit
;; C-; to activate multi cusors
;; c-' to deactivate iedit
(require 'iedit)

;; flymake-google-cpplint
(defun my:flycheck ()
  (require 'flymake-google-cpplint)
  (flymake-mode 1)
  (flycheck-mode 1)
  (flymake-cursor-mode 1))
(add-hook 'c-mode-hook 'my:flycheck)
(add-hook 'c++-mode-hook 'my:flycheck)

;; google-c-style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; turn on semantic mode
(semantic-mode 1)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

;; webmode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; emmet mode
(require 'emmet-mode)

;; js setup
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda ()
(add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)
;; M-. Jump to definition
;; M-? Jump to references
;; M-, Pop back to where M-. was last invoked

;; vuejs
(require 'vue-mode)
