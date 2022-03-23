;; install FiraCode-Regular-Symbol first: use M-x fira-code-mode-install-fonts

(cond
 ((eq system-type 'gnu/linux)
  (use-package fira-code-mode
    :ensure t
    :custom (fira-code-mode-disabled-ligatures '("[]" "#{" "#(" "#_" "#_(" "x")) ;; List of ligatures to turn off
    :hook prog-mode) ;; Enables fira-code-mode automatically for programming major modes
  )
 ((eq system-type 'darwin)
  (use-package fira-code-mode
    :ensure t
    :custom (fira-code-mode-disabled-ligatures '("[]" "x"))  ; ligatures you don't want
    :hook prog-mode)                                         ; mode to enable fira-code-mode in
  ))
(provide 'init-ligature)
