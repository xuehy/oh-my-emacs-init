(use-package youdao-dictionary
  :ensure t
  :init
  (setq url-automatic-caching t)
  :bind (
	 ([f12] . youdao-dictionary-search-at-point)
	 )
  )
(provide 'init-dict)
