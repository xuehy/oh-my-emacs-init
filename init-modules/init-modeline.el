(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode)
      :config
      (cond
       ((eq system-type 'windows-nt) (setq doom-modeline-buffer-file-name-style 'relative-from-project))
       (t 
	(setq doom-modeline-buffer-file-name-style 'auto)))
      (column-number-mode 1)
      (setq doom-modeline-column-zero-based 'nil)
      (setq doom-modeline-env-version 'nil))

(provide 'init-modeline)
