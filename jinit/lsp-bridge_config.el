(use-package posframe)

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))



(add-to-list 'load-path "~/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

 (require 'lsp-bridge)
 (global-lsp-bridge-mode)

(use-package lsp-pyright
  :ensure
  )


;; (use-package lsp-bridge
;;   :after python
;;   :straight (:type git :host github :repo "manateelazycat/lsp-bridge"
;;                    :files (:defaults
;;                            "*")
;;                    :includes (acm
;;                               core
;;                               langserver
;;                               multiserver
;;                               resources))
;;   :config
;;   ;; (define-key lsp-bridge-mode-map (kbd "C-c") 'acm-select-prev)
;;   ;; (define-key lsp-bridge-mode-map (kbd "C-t") 'acm-select-next)

;;   (setq acm-enable-tabnine nil)
;;   (setq acm-enable-quick-access t)

;;   (setq lsp-bridge-signature-help-fetch-idle 0.1)
;;   (setq lsp-bridge-c-lsp-server 'ccls)
;;   (global-lsp-bridge-mode)
;;   )

(provide 'lsp-bridge_config)
