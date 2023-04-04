(defvar menu_toggle 2 "Initial setting for the `menu_toggle` global variable.")

(defun menu-toggle ()
  "Switch between displaying or not menu and toolbar."
  (interactive)
  (cond
   ((= menu_toggle 1)
    (message "Displaying no menu-bar or toolbar")
    (menu-bar-mode -1)
    (tool-bar-mode -1)
    (setq menu_toggle 2))
   
   ((= menu_toggle 2)
    (message "Displaying only menu-bar")
    (menu-bar-mode 1)
    (tool-bar-mode -1)
    (setq menu_toggle 3))

   ((= menu_toggle 3)
    (message "Displaying both menu-bar and  toolbar")
    (menu-bar-mode 1)
    (tool-bar-mode 1)
    (setq menu_toggle 1))
   )
  )

;;(setq utility_toggle 1)


(defvar utility_toggle 2 "Initial setting for the `menu_toggle` global variable.")

;; (defun utility-toggle ()
;;   "Switch between showing utility windows"
;;   (interactive)
;;   (cond
;;    ((= utility_toggle 1)
;;     (message "Displaying no utility window")
;;     ;; (condition-case nil (treemacs-quit)
;;     ;;   (error nil))
;;     (condition-case nil (multi-term-dedicated-close)
;;       (error nil))
;;     (setq utility_toggle 2))

;;    ((= utility_toggle 2)
;;     (message "Displaying treemacs")
;;     (treemacs)
;;     (select-window (previous-window))
;;     ;;;(multi-term-dedicated-close)
;;     (setq utility_toggle 3))

;;    ((= utility_toggle 3)
;;     ;;(treemacs-quit)
;;     (message "Displaying multi-term")
;;     (treemacs)
;;     (multi-term-dedicated-open)
;;     (setq utility_toggle 1))
;;    )
;;   )

;; (setq utility_toggle 1)


;; (condition-case nil (treemacs)
;;   (error nil))
;;--------------------------------------
;; (defun switch-to-from-treemacs ()
;;   (interactive)
;;   (if (treemacs-is-treemacs-window-selected?)
;;       (aw-flip-window)
;;     (treemacs-select-window)))

;; (defun my-treemacs-down()
;;   "eeeh"
;;   (interactive)
;;   (let
;;       (
;;   (treemacs-select-window)
;;   (next-line)
;;   (select-window (previous-window))
;;   ))
;; )
;; (global-unset-key (kbd "M-<down>"))
;; (global-set-key (kbd "M-<down>") 'my-treemacs-down)
;; (define-key treemacs-mode-map (kbd "M-<down>") 'next-line)

;;------------------------------
;; (defun utility-toggle ()
;;   "Switch between showing utility windows"
;;   (interactive)
;;   (cond
   
;;    ((= utility_toggle 1)
;;     ;;    (condition-case nil 
    
    
;;     (multi-term-dedicated-close)
;;     (message "Displaying no utility window")
    
;;     ;; (error (message "Tried to not display any utility window..."))
;;     ;;     (error (message "Tried to not display any utility window..."))
    
    
;;     (setq utility_toggle 2))

;;    ((= utility_toggle 2)
;; 					;  (condition-case nil (
;;     (message "Displaying treemacs")
;;     (treemacs)
;;     (select-window (previous-window))

;;     ;;    (add-hook 'mytreemacs-mode-hook
;;     ;;              (lambda ()
;;     ;; (local-unset-key (kbd "M-down"))
;;     ;; (local-set-key (kbd "M-down") #'switch-to-from-treemacs)
;;     ;;		))
;; 					;			 )
;; 					;     (error (message "Tried to display treemacs...")))
;;     (setq utility_toggle 3))

;;    ((= utility_toggle 3)
;; 					;    (condition-case nil (
;;     (message "Displaying bufferlist")
;;     (display-buffer "*Ibuffer*"
;; 		    '(display-buffer-in-side-window . ((side . left)
;; 						       (window-width . 35)
;; 						       (dedicated . side))))
;; 					;			 )
;; 					;      (error (message "Tried to display bufferlist...")))

;;     (setq utility_toggle 4))
   
;;    ((= utility_toggle 4)
;; 					;    (condition-case nil (
;;     (message "Displaying multi-term")
;;     (delete-window (get-buffer-window "*Ibuffer*"))
;;     (multi-term-dedicated-open)
;; 					;			 )
;; 					;      (error (message "Tried to display multi-term...")))
;;     (setq utility_toggle 1))
;;    )
;;   )




;; ---------------------------------

  ;; (defun ibuffer-advance-motion (direction)
  ;;       (forward-line direction)
  ;;       (beginning-of-line)
  ;;       (if (not (get-text-property (point) 'ibuffer-filter-group-name))
  ;;           t
  ;;         (ibuffer-skip-properties '(ibuffer-filter-group-name)
  ;;                                  direction)
  ;;         nil))
  ;; (defun ibuffer-previous-line (&optional arg)
  ;;   "Move backwards ARG lines, wrapping around the list if necessary."
  ;;   (interactive "P")
  ;;   (or arg (setq arg 1))
  ;;   (let (err1 err2)
  ;;     (while (> arg 0)
  ;;       (cl-decf arg)
  ;;       (setq err1 (ibuffer-advance-motion -1)
  ;;             err2 (if (not (get-text-property (point) 'ibuffer-title)) 
  ;;                      t
  ;;                    (goto-char (point-max))
  ;;                    (beginning-of-line)
  ;;                    (ibuffer-skip-properties '(ibuffer-summary 
  ;;                                               ibuffer-filter-group-name) 
  ;;                                             -1)
  ;;                    nil)))
  ;;     (and err1 err2)))
  ;; (defun ibuffer-next-line (&optional arg)
  ;;   "Move forward ARG lines, wrapping around the list if necessary."
  ;;   (interactive "P")
  ;;   (or arg (setq arg 1))
  ;;   (let (err1 err2)
  ;;     (while (> arg 0)
  ;;       (cl-decf arg)
  ;;       (setq err1 (ibuffer-advance-motion 1)
  ;;             err2 (if (not (get-text-property (point) 'ibuffer-summary)) 
  ;;                      t
  ;;                    (goto-char (point-min))
  ;;                    (beginning-of-line)
  ;;                    (ibuffer-skip-properties '(ibuffer-summary 
  ;;                                               ibuffer-filter-group-name
  ;;                                               ibuffer-title)
  ;;                                             1)
  ;;                    nil)))
  ;;     (and err1 err2)))
