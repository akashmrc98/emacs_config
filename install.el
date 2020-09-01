;; select all lines and use c-x c-e to install
(defun check_packages()
  (setq package-selected-packages
      '(
        org-bullets
	all-the-icons
	spaceline
	spaceline-all-the-icons
	centaur-tabs
	projectile
	autopair
	dashboard
	dracula
	evil
	evil-escape
	evil-commentary
	evil-leader
	evil-snipe
	evil-surround
	neotree
	auto-complete
	auto-complete-config
	yasnippet
	auto-complete-c-headers
	iedit
	flycheck
	flymake
	flymake-google-cpplint
	google-c-style
	irony-mode
	web-mode
	emmet-mode
	js2-mode
	js2-refactor
	xref-js2
	vue-mode
	))
  (package-install-selected-packages)
  )

(check_packages)
