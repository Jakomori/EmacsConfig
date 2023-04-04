(use-package centaur-tabs
  :ensure
  :init
  (setq centaur-tabs-enable-key-bindings t)
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward)
:hook
  (dired-mode . centaur-tabs-local-mode))
(centaur-tabs-headline-match)
(setq centaur-tabs-style "slant")
(setq centaur-tabs-height 32)
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-gray-out-icons 'buffer)
(setq centaur-tabs-set-bar 'over)
(setq centaur-tabs-set-bar 'under)
(setq centaur-tabs-set-modified-marker t)
(setq centaur-tabs-modified-marker "*")

(defun centaur-tabs-hide-tab (x)
  "Do no to show buffer X in tabs."
  (let ((name (format "%s" x)))
    (or
     ;; Current window is not dedicated window.
     (window-dedicated-p (selected-window))

     ;; Buffer name not match below blacklist.
     (string-prefix-p "*epc" name)
     (string-prefix-p "*helm" name)
     (string-prefix-p "*Helm" name)
     (string-prefix-p "*Compile-Log*" name)
     (string-prefix-p "*lsp" name)
     (string-prefix-p "*company" name)
     (string-prefix-p "*Flycheck" name)
     (string-prefix-p "*tramp" name)
     (string-prefix-p " *Mini" name)
     (string-prefix-p "*help" name)
     (string-prefix-p "*straight" name)
     (string-prefix-p " *temp" name)
     (string-prefix-p "*Help" name)
     (string-prefix-p "*mybuf" name)
     (string-prefix-p "*Ibuffer*" name)
     (string-prefix-p "*Messages*" name)
     (string-prefix-p "*scratch*" name)
     (string-prefix-p "*MULTI-TERM-DEDICATED*" name)
     

     ;; Is not magit buffer.
     (and (string-prefix-p "magit" name)
          (not (file-name-extension name)))
     )))

;;(setq centaur-tabs-cycle-scope 'tabs)
(setq centaur-tabs-label-fixed-length 8)
;;(centaur-tabs-group-by-projectile-project)
;;(centaur-tabs-group-buffer-groups)
(setq centaur-tabs-show-navigation-buttons t)


;; (centaur-tabs-ace-jump)

(provide 'centaur-tabs_config)
