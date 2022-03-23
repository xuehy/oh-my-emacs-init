;;; color theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-tomorrow-night t))


(defvar *my-theme-mode*' dark)
   
(defun change-theme () (interactive)
  (if (equal *my-theme-mode* 'dark)
      (progn (disable-theme 'doom-tomorrow-night)
	     (load-theme 'doom-nord-light t)
	     (setq *my-theme-mode* 'light))
    (progn (disable-theme 'doom-nord-light)
	   (load-theme 'doom-tomorrow-night t)
	   (setq *my-theme-mode* 'dark))
    ))
;(global-set-key (kbd "<f9>") 'change-theme)

;;; rainbow delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode)
  )

;;; font configure
(cond
 ;;; wsl on PC
 ((eq system-type 'gnu/linux)
  (set-face-attribute 'default nil :family "Fira Code" :foundry "CTDB" :slant 'normal :weight 'normal :height 108 :width 'normal)
  (setq-default line-spacing 8)
  (progn (setq w32-use-visible-system-caret nil)
	 (dolist (charset '(kana han symbol cjk-misc bopomofo))
	   (if (display-graphic-p)
	       (set-fontset-font (frame-parameter nil 'font)
				 charset (font-spec :family "WenQuanYi Micro Hei" :size 20)))))
  )

 ((eq system-type 'windows-nt)
  (set-face-attribute 'default nil :family "Fira Code Retina" :foundry "outline" :slant 'normal :weight 'normal :height 108 :width 'normal)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (if (display-graphic-p)
	(set-fontset-font (frame-parameter nil 'font)
			  charset (font-spec :family "Microsoft Yahei"
					     :size 20)))))
 
 ((eq system-type 'gnu/linux)
  (set-face-attribute 'default nil :family "Fira Code" :foundry "CTDB" :slant 'normal :weight 'normal :height 128 :width 'normal)
  (setq-default line-spacing 8))

 ((eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Fira Code" :foundry "CTDB" :slant 'normal :weight 'medium :height 150 :width 'normal)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (if (display-graphic-p)
	(set-fontset-font (frame-parameter nil 'font)
			  charset (font-spec :family "Monaco"
					     :size 13))))
  (setq-default line-spacing 8)))

;;; modern icons
(use-package all-the-icons
  :ensure t)


(provide 'init-theme)

