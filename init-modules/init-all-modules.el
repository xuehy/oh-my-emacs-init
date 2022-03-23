;;; 插件源配置
(require 'init-repo)
(require 'init-0)
;;; 通用选项配置
(use-package init-common)
(use-package init-dired)
(use-package init-sidebar)
;;; 主题配置
(use-package init-theme)
(use-package init-modeline)
(use-package init-calendar)
(use-package init-org)
;; windows does not support ligature and vterm
(use-package init-ligature
  :unless (or (eq system-type 'windows-nt) (not (display-graphic-p))))
(use-package init-vterm
  :unless (eq system-type 'windows-nt))
;;; 窗口配置
(use-package init-frame)

;;;编程及编辑环境初始化配置
(use-package init-mode)
(use-package init-whichkey)
(use-package init-magit)
(use-package init-glsl)
;;; tramp模式配置
(use-package init-tramp)
(use-package init-projectile)
(use-package init-ivy)
(use-package init-counsel)
(use-package init-dashboard)

(use-package init-lsp)
(use-package init-k8s
  :unless (eq system-type 'windows-nt))
(use-package init-dict)
(provide 'init-all-modules)
