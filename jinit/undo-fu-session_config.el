(use-package undo-fu-session
  :ensure
  :config
  (setq undo-fu-session-incompatible-files '("/COMMIT_EDITMSG\\'" "/git-rebase-todo\\'")))
;; Overwrite the normal "undo" with "undo-fu-session-undo"
(global-undo-fu-session-mode)

(provide 'undo-fu-session_config)
