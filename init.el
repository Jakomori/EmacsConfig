;;
;; by Jakomo
;; I'm sorry you have to see this

;; Write customization made throught "customize" in "customized.el"
(setq custom-file "~/.emacs.d/custom/customized.el")
;; Load the customization file "customized.el"
(load-file custom-file)

;; Loading "overlay.el", where the gui preference are set
(load-file "~/.emacs.d/custom/overlay.el")

;; Loading "packagemanager.el", where the packet managing packets are configured (I used "use-package" and "straight")
(load-file "~/.emacs.d/custom/packagemanager.el")

;; Loading "theme.el", where the theme is set (I used spacemacs-dark)
(load-file "~/.emacs.d/custom/theme.el")

;; Loading "corfu.el". It sets "corfu", an auto completition utility 
(load-file "~/.emacs.d/custom/corfu.el")

(use-package emacs
  :init
  ;; Add prompt indicator to `completing-read-multiple'.
  ;; We display [CRM<separator>], e.g., [CRM,] if the separator is a comma.
  (defun crm-indicator (args)
    (cons (format "[CRM%s] %s"
		  (replace-regexp-in-string
		   "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" ""
		   crm-separator)
		  (car args))
	  (cdr args)))
  (advice-add #'completing-read-multiple :filter-args #'crm-indicator)

  ;; Do not allow the cursor in the minibuffer prompt
  (setq minibuffer-prompt-properties
	'(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

  ;; Emacs 28: Hide commands in M-x which do not work in the current mode.
  ;; Vertico commands are hidden in normal buffers.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)

  ;; Enable recursive minibuffers
  (setq enable-recursive-minibuffers t)
  ;;----------------------
  (setq completition-cycle-threshold 3)
  (setq always-indent 'complete)
;;  (setq initial-buffer-choice nil)
  )

(use-package dabbrev
  :ensure
  :bind
  (("M-/" . dabbrev-completition)
	 ("C-M-/" . dabbrev-expand))
  :custom
  (dabbrev-ignored-bufferregexps '("\\.\\(?:pdf\\|jpe?g\\|png\\)\\'")))

(use-package cape
  :ensure
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file))

(use-package vertico
  :ensure
  :init
  (vertico-mode))

;; Loading "developenv.el", that sets the global development enviroment
(load-file "~/.emacs.d/custom/developenv.el")

;; Loading "cpp.el", that sets the cpp development enviroment
(load-file "~/.emacs.d/custom/cpp.el")

;; "undo-fu-session" allow you to save the undo history between file saving, closing and reopening
(use-package undo-fu-session
  :ensure
  :config
  (setq undo-fu-session-incompatible-files '("/COMMIT_EDITMSG\\'" "/git-rebase-todo\\'")))
;; Overwrite the normal "undo" with "undo-fu-session-undo"
(global-undo-fu-session-mode)

;; Loading "globalkb.el", that sets the keybindings
(load-file "~/.emacs.d/custom/globalkb.el")
