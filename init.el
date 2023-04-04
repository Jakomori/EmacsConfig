;(defvar emacspath "~/.emacs.d/")

;(load-file (emacspath "setup/jinit.el")

;;(load-file "~/.emacs.d/inits/jinit.el")

;; (custom-set-variables
;;  '(display-buffer-alist
;;    '(("\\*eshell" display-buffer-in-side-window
;;       (side . bottom)
;;       (slot . -1)
;;       (window-parameters . ((no-other-window . t)))))))

;;(setq menu_toggle 1)
;;	1) No menu-bar or toolbar
;;	2) Only menu-bar
;;	3) Both menu-bar and toolbar

;; (custom-set-variables
;;  '(display-buffer-alist
;;    '(("*MULTI-TERM-DEDICATED*" display-buffer-in-side-window
;;       (side . bottom)
;;       (slot . -1)
;;       (window-parameters . ((no-other-window . t)))))))

;; (setq multi-term-dedicated-window-height 5)

(add-to-list 'load-path "~/.emacs.d/setup/")
(require 'jinit)

(provide 'init)
