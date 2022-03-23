(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(eval-after-load "dired"
  ;; don't remove `other-window', the caller expects it to be there
  '(defun dired-up-directory (&optional other-window)
     "Run Dired on parent directory of current directory."
     (interactive "P")
     (let* ((dir (dired-current-directory))
     	    (orig (current-buffer))
     	    (up (file-name-directory (directory-file-name dir))))
       (or (dired-goto-file (directory-file-name dir))
     	   ;; Only try dired-goto-subdir if buffer has more than one dir.
     	   (and (cdr dired-subdir-alist)
     		(dired-goto-subdir up))
     	   (progn
     	     (kill-buffer orig)
     	     (dired up)
     	     (dired-goto-file dir))))))
(eval-after-load "dired" '(progn (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)))

(put 'dired-find-alternate-file 'disabled nil)
(setq dired-listing-switches "-lah")
(provide 'init-dired)
