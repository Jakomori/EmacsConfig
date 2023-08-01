;; by Jakomo
;; I'm sorry you have to see this

(add-to-list 'load-path "~/.emacs.d/jinit/")

;; Install libclang irony-mode for cpp

(define-key input-decode-map [?\C-m] [C-m])
(defun my_notRET ()
  (interactive)	
  (message "C-m is not the same as RET anymore"))

;; Write customization made throught "customize" in "customized.el"
(setq custom-file "~/.emacs.d/jinit/customized_setting.el")
;; Load the customization file "customized.el"
(load-file custom-file)

(require 'overlay_setting)
(global-set-key (kbd "<f11>") nil)
(global-set-key (kbd "<f11>") 'toggle-frame-maximized)

;; Set-up the package manager for the first installation 
(require 'package_setting)

;; Define the used package manager
(require 'packagemanager_setting)

;; Replace packet manager with "straight"
;; Uses more repositories to download packages from
(require 'defvar-straight)

;; Introduce 'comment-region, comment selected region
(require 'evil-commentary_config)

;; Function to automatik kill *scratch* buffer
;;(require 'defun-remove-scratch)

;; Default theme
(require 'spacemacs-theme_config)

;; Integration for autocompletion, works with dabbrev
(require 'corfu_config)
(define-key corfu-map (kbd "<RET>") 'keyboard-quit)

;; (require 'yasnippet_config)

;; (require 'lsp-bridge_config)

;; Brackets higlighted with side characters
(require 'defun-highlight-indent-guides)

;; (require golden-ratio_config)

(require 'emacs_config)
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

;; Gives info in autocompletion
(require 'dabbrev_config)

;; Allow autocompletion to search without requiring correct spelling
(require 'orderless_config)

;;(require 'fancy-dabbrev_config)

;; Autocompletiotion for CPP (1/2)
(require 'irony_config)

;; Autocompletiotion for CPP (2/2)
(require 'company_config)

;; (require 'auto-dim-other-buffer_config)

;; (require 'defun-highlight-current-window)

;; Use whole line for cut/copy when no text is selected
(require 'whole-line-or-region_config)

;; Popup-kill-ring - better killing means better paste!
(require 'popup-kill-ring_config)

;; Gives completion at point, works well with "corfu"
(require 'cape_config)

;; Provides a vertical completions UI
(require 'vertico_config)

;; Project management
(require 'projectile_config)

;; Fold text regions
(require 'origami_config)
(global-unset-key (kbd "C-."))
(global-set-key (kbd "C-.") 'origami-toggle-node)

;; Brackets color-coded
(require 'rainbow-delimiters_config)

;; Gives tree to navigate filepath
(require 'treemacs_config)
;; (global-unset-key (kbd "<C-m>"))
;; (global-set-key (kbd "<C-m>") 'treemacs-select-window)
(global-unset-key (kbd "C-S-m"))
(global-set-key (kbd "C-S-m") 'treemacs)
(define-key treemacs-mode-map (kbd "<left>") 'treemacs-root-up)
(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)
(define-key treemacs-mode-map (kbd "<RET>") 'nil)
(define-key treemacs-mode-map (kbd "<RET>") 'treemacs-visit-node-ace)

;; (define-key treemacs-mode-map (kbd "<RET>") #'treemacs-visit-node-in-most-recently-used-window)
;; (treemacs-define-RET-action 'file-node-open   #'treemacs-visit-node-in-most-recently-used-window)
;; (treemacs-define-RET-action 'file-node-closed #'treemacs-visit-node-in-most-recently-used-window)

;; (require 'treemacs-icons-dired_config)

;; Built-in terminal
(require 'multi-term_config)
;; (global-unset-key (kbd "C-t"))
;; (global-set-key (kbd "C-t") 'multi-term-dedicated-open)
;; (global-unset-key (kbd "C-S-t"))
;; (global-set-key (kbd "C-S-t") 'multi-term-dedicated-close)

;; Check spelling error in some coding languages
(require 'flymake_config)

;; (require 'minimap_config)

;; (require 'which_key_setting)

;; (require 'aggressive-indent_setting)

(require 'defun-indent-buffer)
(global-set-key (kbd "S-<iso-lefttab>") 'indent-buffer)

;; Real time collaborative programming enviroment
;; (require 'crdt_config)

;; Store the files history
(require 'savehist_config)

;; Add annotations to minibuffers
(require 'marginalia_config)

;; (load-file "~/.emacs.d/custom/ggtags.el")

;; Better undo
(require 'undo-fu_config)

;; Undo history saver
(require 'undo-fu-session_config)
(global-unset-key (kbd "C-_"))
(global-set-key (kbd "C-_") 'undo-fu-only-undo)
(global-unset-key (kbd "C--"))
(global-set-key (kbd "C--") 'undo-fu-only-redo)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo-fu-only-undo)
(global-unset-key (kbd "C-S-z"))
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)

;; (load-file "~/.emacs.d/custom/key-chord.el")

;; (load-file "~/.emacs.d/custom/icicles.el")

;; (load-file "~/.emacs.d/custom/use-package-chords.el")

;; Customized Keybindings
(require 'globalkb)

;; (load-file "~/.emacs.d/custom/bookmark+.el")

;; (load-file "~/.emacs.d/custom/magit.el")

;; (load-file "~/.emacs.d/custom/all-the-icons.el")

;; (load-file "~/.emacs.d/custom/dedicated-window.el")

(setq byte-compile-warnings '(cl-functions))

(require 'defun-toggle-menu)
(global-unset-key (kbd "<f10>"))
(global-set-key (kbd "<f10>") 'menu-toggle)
(global-unset-key (kbd "<f2>"))
(global-set-key (kbd "<f2>") 'treemacs)
(global-unset-key (kbd "<f3>"))
(global-set-key (kbd "<f3>") 'multi-term-dedicated-toggle)

(require 'ibuffer_config)

(require 'nyan-mode_config)

(require 'kind-icon_config)

(require 'centaur-tabs_config)
(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'centaur-tabs-forward)
(global-unset-key (kbd "M-S-<left>"))
(global-set-key (kbd "M-S-<left>") 'centaur-tabs-backward)

(require 'rust_config)

;;(require 'my_noobmode)

(require 'iedit_config)
(global-set-key (kbd "C--") 'iedit-mode)

(require 'deadgrep_config)
(global-set-key (kbd "<f6>") nil)
(global-set-key (kbd "<f6>") #'deadgrep)

(require 'wgrep_config)


(provide 'jinit)

