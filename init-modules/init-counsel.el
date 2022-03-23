(use-package counsel
  :ensure t
  :after ivy
  :config
  (counsel-mode t)
  :bind ([f6] . counsel-recentf))

(use-package counsel-projectile
  :ensure t
  :after ivy
  :config
  (counsel-projectile-mode t))

(provide 'init-counsel)
