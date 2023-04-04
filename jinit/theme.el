(use-package spacemacs-theme
  :ensure
  :defer t
  :init (load-theme 'spacemacs-dark)
  :config
  (setq spacemacs-theme-comment-italic t))
;; (set-frame-parameter (selected-frame) 'alpha '(100 85))
;; (add-to-list 'default-frame-alist '(alpha 100 85))

;; (setq transparency_level 0)
;; (defun my:change_transparency ()
;;  "Toggles transparency of Emacs between 3 settings (none, mild, moderate)."
;;  (interactive)
;;  (if (equal transparency_level 0)
;;      (progn (set-frame-parameter (selected-frame) 'alpha '(60 . 60))
;;         (setq transparency_level 1))
;;    (if (equal transparency_level 1)
;;    (progn (set-frame-parameter (selected-frame) 'alpha '(80 . 70))
;;           (setq transparency_level 2))
;;      (if (equal transparency_level 2)
;;      (progn (set-frame-parameter (selected-frame) 'alpha '(100 . 75))
;;         (setq transparency_level 0)))
;;      )))
;; (define-key global-map (kbd "C-c t") 'my:change_transparency)
