(use-package dabbrev
  :ensure
  :bind
  (("M-/" . dabbrev-completition)
	 ("C-M-/" . dabbrev-expand))
  :custom
  (dabbrev-ignored-bufferregexps '("\\.\\(?:pdf\\|jpe?g\\|png\\)\\'")))

(provide 'dabbrev_config)
