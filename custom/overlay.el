
;; Don't show startup message
(setq inhibit-startup-message t)

;; The buffer name become its path
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                (buffer-file-name)"%b"))))

;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Vertical Scrolling
(setq scroll-step 1)
(setq scroll-margin 5)

;; ;;Removes *scratch* from buffer after the mode has been set.
;; (defun remove-scratch-buffer ()
;; ;;   "Disable the scratch buffer when opening a file."
;;  (if (get-buffer "*scratch*")
;;       (kill-buffer "*scratch*")))

;; Don't ask confirm to kill a process
(setq confirm-kill-processes nil)

;; Hide the toolbar, menu bar and scrollbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Higlights the current line
(global-hl-line-mode t)

;; Display the lines number
(global-display-line-numbers-mode t)

;; (defun show:menu ()
;;   "Toggle the menu visualization"
;;   (interactive)
;;   (if 

;; (defvar show_menu()
;;   (let ((show_menu 0))
;;     (cond
;;      ((equal show_menu 0)
;;       (setq show_menu 1)
;;       (menu-bar-mode t)
;;       ;;(altro)
;;       )
;;      ((equal show_menu 1)
;;       (menu-bar-mode -1)
;;       (setq show_menu 0))
;;      )))


;; Move the backup fies to user-emacs-directory/.backup
(setq backup-directory-alist `(("." . ,(expand-file-name ".backup" user-emacs-directory))))
;; Make many backups to stay safe
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t
      backup-by-copying-when-linked t)
