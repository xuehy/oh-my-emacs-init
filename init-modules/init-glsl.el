(use-package company-glsl
  :ensure t
  :config
  (when (executable-find "glslangValidator")
    (add-to-list 'company-backends 'company-glsl)))
(provide 'init-glsl)
