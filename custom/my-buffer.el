(set-window-dedocated-p

 (display-buffer-use-some-window )

 (sticky-window-keep-window-visible

(defun toggle-current-window-dedication ()
   (interactive)
   (let* ((window    (selected-window))
          (dedicated (window-dedicated-p window)))
     (set-window-dedicated-p window (not dedicated))
     (message "Window %sdedicated to %s"
              (if dedicated "no longer " "")
              (buffer-name))))
  (global-set-key [pause] 'toggle-current-window-dedication)
