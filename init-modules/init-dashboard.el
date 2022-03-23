(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  :init
  (setq dashboard-banner-logo-title (car (split-string (emacs-version) "\n")))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-items '((recents . 5)
                          (bookmarks . 5)
			  (projects . 5 )))
  (setq dashboard-footer-messages '("Carpe diem!"))
  (setq dashboard-footer-icon (all-the-icons-octicon "dashboard"
                                                     :height 1.1
                                                     :v-adjust -0.05
                                                     :face 'font-lock-keyword-face)))
(provide 'init-dashboard)
