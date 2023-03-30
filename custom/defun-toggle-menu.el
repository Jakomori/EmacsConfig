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

(defun utility-toggle ()
  "Switch between showing utility windows"
  (interactive)
  (cond
   ((= utility_toggle 1)
    (message "Displaying no utility window")
    ;; (condition-case nil (treemacs-quit)
    ;;   (error nil))
    (condition-case nil (multi-term-dedicated-close)
      (error nil))
    (setq utility_toggle 2))

   ((= utility_toggle 2)
    (message "Displaying treemacs")
    (treemacs)
    (select-window (previous-window))
    ;;;(multi-term-dedicated-close)
    (setq utility_toggle 3))

   ((= utility_toggle 3)
    ;;(treemacs-quit)
    (message "Displaying multi-term")
    (treemacs)
    (multi-term-dedicated-open)
    (setq utility_toggle 1))
   )
  )

;;(setq utility_toggle 1)
