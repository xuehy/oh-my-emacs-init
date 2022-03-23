(cond
 ((eq system-type 'gnu/linux)
  (when window-system (set-frame-size (selected-frame) 150 40)))
 
 ((eq system-type 'windows-nt)
  (when window-system (set-frame-size (selected-frame) 130 30)))
 
 ((eq system-type 'darwin)
  (if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (width . 125) ; chars
              (height . 40)))
      (setq default-frame-alist
            '(
              (width . 125)
              (height . 40)))))
  (setq-default scroll-bar-width 15)))

;(set-frame-parameter (selected-frame) 'alpha '(99 . 99))
;(add-to-list 'default-frame-alist '(alpha . (99 . 99)))
(provide 'init-frame)
