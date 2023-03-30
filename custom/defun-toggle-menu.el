(defvar menu_toggle 1 "Initial setting for the `menu_toggle` global variable.")

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

(setq menu_toggle 3)
