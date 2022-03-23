(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(add-hook 'after-init-hook 'global-company-mode)
(setq explicit-shell-file-name "/bin/bash")
(define-key global-map "\M-*" 'pop-tag-mark)
(setq make-backup-files nil)

(cond
 
 ((eq system-type 'windows-nt)
  (setq grep-command "wsl grep -nH ")
  (setq find-program "wsl find")
  (setq ediff-diff-program "wsl diff")
  (defadvice grep-compute-defaults (around grep-compute-defaults-advice-null-device)
    "Use cygwin's /dev/null as the null-device."
    (let ((null-device "/dev/null"))
      ad-do-it))
  (ad-activate 'grep-compute-defaults)
  (setq exec-path (append exec-path '("C:/Program Files/glslang-master-windows-x64-Release/bin" "c:/Program Files/ripgrep-13.0.0-x86_64-pc-windows-msvc/"))))

 ((eq system-type 'darwin)
  (setq exec-path (append exec-path '("/usr/local/bin/"))))
			 

 ((eq system-type 'gnu/linux)
  (let ((path (shell-command-to-string "$SHELL -cl \"printf %s \\\"\\\$PATH\\\"\"")))
    (setenv "PATH" path)
    (setq exec-path (split-string path path-separator)))))

(setq enable-local-variables :all)
(provide 'init-common)
