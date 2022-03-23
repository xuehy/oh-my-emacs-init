(electric-pair-mode 1)
(tool-bar-mode -1)

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

(use-package anzu
  :ensure t
  :config
  (global-anzu-mode +1)
  )

(use-package diminish
  :ensure t
  :config
  (diminish 'anzu-mode)
  (diminish 'undo-tree-mode)
  )
(provide 'init-mode)
