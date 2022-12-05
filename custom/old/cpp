
;; "ggtags" is a package that recognize the c,cpp and others language
(use-package ggtags
  :ensure)

;; Calls the "c-mode" in "ggtags" when opening a file of a language that it recognizes
(require 'ggtags)
(add-hook 'c-mode-common-hook
	  (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))
(setq-local imenu-create-index-function #'ggtags-build-imenu-index)

