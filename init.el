(require 'package)
;; 递归遍历加载路径，将这些路径加入到加载列表中
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`"
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

;; 递归加载~/.emacs.d/site-lisp目录
(add-subdirs-to-load-path "~/.emacs.d/init-modules")
(require 'init-all-modules)
