(require 'my_noobmode)

(add-hook 'tex-mode-hook
	  (lambda ()
	    (local-set-key [f1] 'help-for-help)
	     (local-unset-key (kbd "M-w"))
	     (global-set-key (kbd "M-w") 'kill-ring-save)
	     (global-unset-key (kbd "C-w"))
	     (global-set-key (kbd "C-w") 'kill-region)
	     (global-unset-key (kbd "C-y"))
	     (global-set-key (kbd "C-y") 'yank)
	     (global-unset-key (kbd "C-v"))
	     (global-set-key (kbd "C-v") 'yank)
	     (global-unset-key (kbd "C-;"))
	     (global-set-key (kbd "C-;") 'comment-region)
	     (global-unset-key (kbd "C-,"))
	     (global-set-key (kbd "C-,") 'uncomment-region)
	     ;; ;;;;;;;;
	     (global-unset-key (kbd "C-b"))
	     (global-set-key (kbd "C-b") 'switch-to-buffer)
	     (global-unset-key (kbd "C-S-b"))
	     (global-set-key (kbd "C-S-b") 'kill-buffer)
	     ;; ;;;;;;;;
	     (global-unset-key (kbd "M-<left>"))
	     (global-set-key (kbd "M-<left>") 'windmove-left)
	     (global-unset-key (kbd "M-<right>"))
	     (global-set-key (kbd "M-<right>") 'windmove-right)
	     (global-unset-key (kbd "M-<up>"))
	     (global-set-key (kbd "M-<up>") 'windmove-up)
	     (global-unset-key (kbd "M-<down>"))
	     (global-set-key (kbd "M-<down>") 'windmove-down)
	     (global-unset-key (kbd "C-k"))
	     (global-set-key (kbd "C-k") 'delete-window)
	     (global-unset-key (kbd "C-x <right>"))
	     (global-set-key (kbd "C-x <right>") 'split-window-right)
	     (global-unset-key (kbd "C-x <left>"))
	     (global-set-key (kbd "C-x <left>") 'split-window-left)
	     (global-unset-key (kbd "C-x <down>"))
	     (global-set-key (kbd "C-x <down>") 'split-window-below)
	     (global-unset-key (kbd "C-x <up>"))
	     (global-set-key (kbd "C-x <up>") 'split-window-preferred-function)
	     ;; ;;;;;;;;
	     (global-unset-key (kbd "C-x S-<right>"))
	     (global-set-key (kbd "C-x S-<right>") 'split-window-right)
	     (global-unset-key (kbd "C-x S-<left>"))
	     (global-set-key (kbd "C-x S-<left>") 'split-window-left)
	     (global-unset-key (kbd "C-x S-<down>"))
	     (global-set-key (kbd "C-x S-<down>") 'split-window-below)
	     (global-unset-key (kbd "C-x S-<up>"))
	     (global-set-key (kbd "C-x S-<up>") 'split-window-preferred-function)
	     ;; ;;;;;;;;
	     (global-unset-key (kbd "C-s"))
	     (global-set-key (kbd "C-s") 'isearch-repeat-forward)
	     ;; ;;;;;;;;
	     (global-unset-key (kbd "C-S-g"))
	     (global-set-key (kbd "C-S-g") 'find-file-at-point)
	     ;; ;;;;;;;;
	     (global-unset-key (kbd "C-f"))
	     (global-set-key (kbd "C-f") 'isearch-forward)

	     

	     ))

