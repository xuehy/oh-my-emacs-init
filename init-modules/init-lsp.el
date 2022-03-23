(use-package lsp-treemacs
  :ensure t)
(use-package lsp-mode
  :ensure t
  :after company
  :init
  (setq gc-cons-threshold (* 100 1024 1024)
	read-process-output-max (* 1024 1024)
	company-idle-delay 0.0
	company-minimum-prefix-length 1
	lsp-idle-delay 0.1)  ;; clangd is fast
  
  :config
  (lsp-enable-which-key-integration)
  (lsp-treemacs-sync-mode 1)
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (setq company-backends (remove 'company-files company-backends))
  (add-to-list 'company-backends 'company-files)
  (setq lsp-rust-server 'rust-analyzer)
  :hook (
	 (c-mode . lsp)
	 (c++-mode . lsp)
	 (lsp-mode . yas-minor-mode)
	 (rust-mode . lsp)
	 )
  :commands lsp
  )
(use-package flycheck
  :ensure t
  :defer t
  :bind ("C-c C-n" . flycheck-next-error))

(use-package lsp-pyright
  ;; install nodejs first
  :ensure t
  :defer t
  :init (setq lsp-pyright-python-executable-cmd "python")
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))
(provide 'init-lsp)
