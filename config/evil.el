;; evil mode setup
(require 'evil)
(evil-mode 1)

;;evil escape
(evil-escape-mode 1)
(setq-default evil-escape-key-sequence "jk")
(setq-default evil-escape-delay 0.2)

;; evil commentary
(evil-commentary-mode 1)

;; evil leader
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

;; evil leader keybindings
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "q" 'kill-buffer
  "f" 'neotree-toggle
  "s" 'save-buffer
  "h" 'centaur-tabs-backward
  "l" 'centaur-tabs-forward
  "w" 'save-buffers-kill-emacs
  )

;; evil-snipe
(require 'evil-snipe)
(evil-snipe-mode +1)
(evil-snipe-override-mode +1)

;; evil-surround
(require 'evil-surround)
(global-evil-surround-mode 1)
