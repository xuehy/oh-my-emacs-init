(use-package kubernetes
  :ensure t
  :commands (kubernetes-overview)
  :config
  (setq kubernetes-poll-frequency 3600
        kubernetes-redraw-frequency 3600))

(defun kubernetes-enter-namespace (namespace) (interactive "MNamespace: ")
       (kubernetes-set-namespace namespace kubernetes-state--current-state))
(provide 'init-k8s)
