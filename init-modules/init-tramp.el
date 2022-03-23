(use-package tramp
  :config
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path)
  (add-to-list 'tramp-remote-path "/usr/bin"))
(provide 'init-tramp)
