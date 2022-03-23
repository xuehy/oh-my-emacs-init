(use-package vterm
  :ensure t
  :config
  (setq vterm-kill-buffer-on-exit t))

(use-package vterm-toggle
  :after (vterm)
  :ensure t
  :bind ([C-f2] . vterm-toggle-cd))

(provide 'init-vterm)

