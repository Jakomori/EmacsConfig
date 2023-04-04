(use-package kind-icon
  :ensure t
  :config
  (add-hook 'my-completion-ui-mode-hook
   	    (lambda ()
   	      (setq completion-in-region-function
   		    (kind-icon-enhance-completion
   		     completion-in-region-function)))))

(use-package kind-icon
  :ensure t
  :after corfu
  :custom
  (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))
