;; by Jakomo
;; I'm sorry you have to see this


;;install libclang irony-mode for cpp

;;(global-unset-key (kbd "C-S-p"))
;;(global-set-key (kbd "C-S-p") 'projectile-reset-known-projects)
;;(global-set-key (kbd "C-S-p") 'treemacs-add-and-display-current-project-exclusively)

(define-key input-decode-map [?\C-m] [C-m])
;; now we can do this:
(defun notRET ()
  (interactive)	
  (message "C-m is not the same as RET anymore"))

;; Write customization made throught "customize" in "customized.el"
(setq custom-file "~/.emacs.d/custom/customized.el")
;; Load the customization file "customized.el"
(load-file custom-file)

(load-file "~/.emacs.d/custom/overlay.el")
;;(global-set-key (kbd "<f11>") nil)
;;(global-set-key (kbd "<f11>") 'toggle-frame-maximized)

;; Set-up the package manager for the first installation 
(load-file "~/.emacs.d/custom/package.el")

;; Define the used package manager
(load-file "~/.emacs.d/custom/packagemanager.el")

;; Replace packet manager with "straight"
;; Uses more repositories to download packages from
(load-file "~/.emacs.d/custom/defvar-straight.el")

;; Introduce 'comment-region, comment selected region
(load-file "~/.emacs.d/custom/evil-commentary.el")

;; Function to automatik kill *scratch* buffer
(load-file "~/.emacs.d/custom/defun-remove-scratch.el")

;; Default theme
(load-file "~/.emacs.d/custom/spacemacs-theme.el")

;; Integration for autocompletion, works with dabbrev
(load-file "~/.emacs.d/custom/corfu.el")

;;(global-set-key (kbd "RET") 'corfu-quit)
(define-key corfu-map (kbd "<RET>") 'keyboard-quit)
;;(define-key corfu-map (kbd "<RET>") 'newline)
;; ;; (define-key corfu-map "\t" nil)

;;(load-file "~/.emacs.d/custom/yasnippet.el")

;;(load-file "~/.emacs.d/custom/lsp-bridge.el")

;; Brackets higlighted with side characters
(load-file "~/.emacs.d/custom/highlight-indent-guides.el")

;;(load-file "~/.emacs.d/custom/golden-ratio.el")

(load-file "~/.emacs.d/custom/emacs.el")
(global-unset-key (kbd "M-w"))
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

;; (global-unset-key (kbd "M-S-<right>"))
;; (global-set-key (kbd "M-S-<right>") 'next-buffer)
;; (global-unset-key (kbd "M-S-<left>"))
;; (global-set-key (kbd "M-S-<left>") 'previous-buffer)
(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-unset-key (kbd "C-S-b"))
(global-set-key (kbd "C-S-b") 'kill-buffer)

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

(global-unset-key (kbd "C-x S-<right>"))
(global-set-key (kbd "C-x S-<right>") 'split-window-right)
(global-unset-key (kbd "C-x S-<left>"))
(global-set-key (kbd "C-x S-<left>") 'split-window-left)
(global-unset-key (kbd "C-x S-<down>"))
(global-set-key (kbd "C-x S-<down>") 'split-window-below)
(global-unset-key (kbd "C-x S-<up>"))
(global-set-key (kbd "C-x S-<up>") 'split-window-preferred-function)

(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'isearch-repeat-forward)

;;(global-unset-key (kbd "C-g"))
;;(global-set-key (kbd "C-g") 'find-file-other-window)
(global-unset-key (kbd "C-S-g"))
(global-set-key (kbd "C-S-g") 'find-file-at-point)

(global-unset-key (kbd "C-f"))
(global-set-key (kbd "C-f") 'isearch-forward)

;; Gives info in autocompletion
(load-file "~/.emacs.d/custom/dabbrev.el")

;; Allow autocompletion to search without requiring correct spelling
(load-file "~/.emacs.d/custom/orderless.el")

;;(load-file "~/.emacs.d/custom/fancy-dabbrev.el")

;; Autocompletiotion for CPP (1/2)
(load-file "~/.emacs.d/custom/irony.el")

;; Autocompletiotion for CPP (2/2)
(load-file "~/.emacs.d/custom/company.el")

;;(load-file "~/.emacs.d/custom/auto-dim-other-buffers.el")

;;(load-file "~/.emacs.d/custom/defun-highlight-current-window.el")

;; Use whole line for cut/copy when no text is selected
(load-file "~/.emacs.d/custom/whole-line-or-region.el")

;; Popup-kill-ring - better killing means better paste!
(load-file "~/.emacs.d/custom/popup-kill-ring.el")

;; Gives completion at point, works well with "corfu"
(load-file "~/.emacs.d/custom/cape.el")

;; Provides a vertical completions UI 
(load-file "~/.emacs.d/custom/vertico.el")

;; Project management
(load-file "~/.emacs.d/custom/projectile.el")

;; Fold text regions
(load-file "~/.emacs.d/custom/origami.el")

;; Brackets color-coded
(load-file "~/.emacs.d/custom/rainbow-delimiters.el")

;; Gives tree to navigate filepath
(load-file "~/.emacs.d/custom/treemacs.el")
(global-unset-key (kbd "<C-m>"))
(global-set-key (kbd "<C-m>") 'treemacs-select-window)
(global-unset-key (kbd "C-S-m"))
(global-set-key (kbd "C-S-m") 'treemacs)
(define-key treemacs-mode-map (kbd "<left>") 'treemacs-root-up)
(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)

;;(load-file "~/.emacs.d/custom/treemacs-icons-dired.el")

;; Built-in terminal
(load-file "~/.emacs.d/custom/multi-term.el")
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'multi-term-dedicated-open)
(global-unset-key (kbd "C-S-t"))
(global-set-key (kbd "C-S-t") 'multi-term-dedicated-close)

;; Check spelling error in some coding languages
(load-file "~/.emacs.d/custom/flymake.el")

;;(load-file "~/.emacs.d/custom/minimap.el")

;;(load-file "~/.emacs.d/custom/which-key.el")

;;(load-file "~/.emacs.d/custom/aggressive-indent.el")

(load-file "~/.emacs.d/custom/defun-indent-buffer.el")
(global-set-key (kbd "S-<iso-lefttab>") 'indent-buffer)

;; Real time collaborative programming enviroment
(load-file "~/.emacs.d/custom/crdt.el")

;; Store the files history
(load-file "~/.emacs.d/custom/savehist.el")

;; Add annotations to minibuffers
(load-file "~/.emacs.d/custom/marginalia.el")

;;(load-file "~/.emacs.d/custom/ggtags.el")

;; Better undo
(load-file "~/.emacs.d/custom/undo-fu.el")

(load-file "~/.emacs.d/custom/undo-fu-session.el")
;; Undo history saver
(global-unset-key (kbd "C-_"))
(global-set-key (kbd "C-_") 'undo-fu-only-undo)
(global-unset-key (kbd "C--"))
(global-set-key (kbd "C--") 'undo-fu-only-redo)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo-fu-only-undo)
(global-unset-key (kbd "C-S-z"))
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)

;;(load-file "~/.emacs.d/custom/key-chord.el")

;;(load-file "~/.emacs.d/custom/icicles.el")

;;(load-file "~/.emacs.d/custom/use-package-chords.el")

;; Customized Keybindings
(load-file "~/.emacs.d/custom/globalkb.el")

;;(load-file "~/.emacs.d/custom/bookmark+.el")

;;(load-file "~/.emacs.d/custom/magit.el")

;;(load-file "~/.emacs.d/custom/all-the-icons.el")

;; (global-unset-key (kbd "C-c g"))
;; (global-set-key (kbd "C-c g") 'magit-file-dispatch)

;;(load-file "~/.emacs.d/custom/dedicated-window.el")

(setq byte-compile-warnings '(cl-functions))

(load-file "~/.emacs.d/custom/defun-toggle-menu.el")
(global-unset-key (kbd "<f11>"))
(global-set-key (kbd "<f11>") 'menu-toggle)

(global-unset-key (kbd "<f2>"))
(global-set-key (kbd "<f2>") 'treemacs)

(global-unset-key (kbd "<f3>"))
(global-set-key (kbd "<f3>") 'multi-term-dedicated-toggle)
;;(multi-term)

;;(define-key ibuffer-mode-map (kbd "RET") 'ibuffer-visit-buffer-other-window previous-window)



(load-file "~/.emacs.d/custom/ibuffer.el")

;; (add-to-list 'ibuffer-list-buffers
;;          '(".*" display-buffer-in-side-window
;;           (side . left) (window-width . 30)))

;; (global-unset-key (kbd "<f3>"))
;; (global-set-key (kbd "<f3>") 'ibuffer-list-buffers)

(load-file "~/.emacs.d/custom/nyan-mode.el")

(load-file "~/.emacs.d/custom/kind-icon.el")

(load-file "~/.emacs.d/custom/centaur-tab.el")




(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'centaur-tabs-forward)
(global-unset-key (kbd "M-S-<left>"))
(global-set-key (kbd "M-S-<left>") 'centaur-tabs-backward)

;; (load-file "~/.emacs.d/custom/sr-speedbar.el")
;; (setq speedbar-initial-expansion-list-name "quick buffers")
;; (setq speedbar-use-images nil) ; use text for buttons
;; (setq sr-speedbar-right-side nil) ; put on left side

;; (custom-set-variables
;;  '(display-buffer-alist
;;    '(("\\*Ibuffer\\*" display-buffer-in-side-window
;;       (side . left)
;;       (slot . -1)
;;       (window-parameters . ((no-other-window . t)))))))



;; (defvar b_list 1)

;; (defun b-list ()
;;   "Switch between showing bufferlist windows"
;;   (interactive)
;;   (cond
;;    ((= b_list 1)
;;     ;; (message "Displaying no utility window")
    
;;     (condition-case nil (display-buffer "*Ibuffer*"
;;                     '(display-buffer-in-side-window . ((side . left)
;;                                                        (window-width . 30))))
      
;;     (setq b_list 2))

;;    ((= b_list 2)
;;     ;;(delete-window-on &optional "*Ibuffer")
;;     (delete-window (get-buffer-window "*Ibuffer*"))
;;     (setq b_list 1))
;;    )
;;   )

;; (global-unset-key (kbd "<f3>"))
;; (global-set-key (kbd "<f3>") 'b-list)

;; (defalias 'list-buffers 'ibuffer)
;; (setq ibuffer-shrink-to-minimum-size t)
;; (setq ibuffer-always-show-last-buffer nil)
;; (setq ibuffer-sorting-mode 'recency)
;; (setq ibuffer-use-header-line t)
