(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :config
  (setq projectile-enable-caching 't)
  :bind (([f5] . projectile-find-file)
	 ([f7] . projectile-switch-project)
	 ([f9] . projectile-ripgrep)
	 ))

(provide 'init-projectile)
