;; toggle off's
;; (menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(global-linum-mode 1)
(global-visual-line-mode 1)

;; set font family and size
(set-frame-font "FiraCode NF 14" nil t)
   
;; org mode bulletin points
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; spacline and icons
(require 'all-the-icons)
(require 'spaceline-config)
(setq-default
 powerline-height 24
 powerline-default-separator 'wave
 spaceline-flycheck-bullet "❖ %s"
 spaceline-separator-dir-left '(right . right)
 spaceline-separator-dir-right '(left . left))

;; centaur tabs
(require 'centaur-tabs)
(centaur-tabs-mode t)
(setq centaur-tabs-style "box")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-plain-icons t)
(setq centaur-tabs-set-bar 'under)
(setq x-underline-at-descent-line t)

;; projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; autocosing parens
(require 'autopair)
(autopair-global-mode)

;; emacs dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
