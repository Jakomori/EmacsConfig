(use-package wgrep
  :straight (:type git :host github :repo "mhayashi1120/Emacs-wgrep"
			             :files (:defaults
				                   "*")
			             :includes (wgrep.el
                              wgrep-deadgrep.el))
  :config
  ;; enter wgrep with `e`
  (setq wgrep-enable-key "e")

  ;; automatically save buffers when finishing editing
  (setq wgrep-auto-save-buffer t)

  ;; when in deadgrep replace saving the buffer with
  ;; finishing editing the wgrep editing
  (defun wdeadgrep-save (orig-fun &rest args)
    (if (equal major-mode 'deadgrep-mode)
        (wgrep-finish-edit)
      (apply orig-fun args)))

  (advice-add 'save-buffer :around #'wdeadgrep-save))

(provide 'wgrep_config)
;;; wgrep-setup.el ends here
