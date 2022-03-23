(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :bind ("C-<return>" . ivy-immediate-done))

(use-package all-the-icons-ivy
  :ensure t
  :init
  (setq all-the-icons-ivy-file-commands
	'(counsel-find-file counsel-file-jump counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir counsel-projectile-switch-project))
  (add-hook 'after-init-hook 'all-the-icons-ivy-setup))

(provide 'init-ivy)
