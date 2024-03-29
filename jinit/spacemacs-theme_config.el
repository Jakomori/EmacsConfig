(use-package spacemacs-theme
  :defer t
  :init (load-theme 'spacemacs-dark)
  :config
  (setq spacemacs-theme-comment-italic t))
(set-frame-parameter (selected-frame) 'alpha '(100 100))
(add-to-list 'default-frame-alist '(alpha 100 100))
;;(load-theme 'spacemacs-theme t)


(use-package spaceline
  :ensure)

(require 'spaceline-config)
(spaceline-spacemacs-theme)


(spaceline-toggle-minor-modes-off)
(spaceline-toggle-major-mode-off)
(spaceline-toggle-version-control-off)
;;(spaceline-toggle-buffer-encoding-off)
(spaceline-toggle-buffer-size-off)

;; (setq-default header-line-format mode-line-format)
;;(setq-default mode-line-format nil)

(setq transparency_level 0)
(defun my:change_transparency ()
  "Toggles transparency of Emacs between 3 settings (none, mild, moderate)."
  (interactive)
  (if (equal transparency_level 0)
      (progn (set-frame-parameter (selected-frame) 'alpha '(60 . 60))
             (setq transparency_level 1))
    (if (equal transparency_level 1)
	(progn (set-frame-parameter (selected-frame) 'alpha '(80 . 70))
	       (setq transparency_level 2))
      (if (equal transparency_level 2)
	  (progn (set-frame-parameter (selected-frame) 'alpha '(100 . 75))
		 (setq transparency_level 0)))
      )))
(define-key global-map (kbd "C-c t") 'my:change_transparency)

;;(mode-line-inactive ((,class
;;  (:box (:line-width <??> :style none)
;;   :background ,tron-berlin-darkest :foreground ,tron-gray-light))))


;;(setq spacemacs-theme-custom-colors 'border nil)

;; (custom-set-variables '(spacemacs-theme-custom-colors
;;                         '((border . "#000000")
;; 			  )))

;; USELESS (set-border-color "black")
;; (make-frame
;;  (setq frame-)

;; (defun toggle-dedicate ()
;;   "Toggles dedicated buffer"
;;   (interactive)
;;   (if (equal ded_buffer 0)
;;       (progn (treemacs-select-window)

;; (custom-set-variables '(spacemacs-theme-custom-colors
;;                         '((border . "aqua")
;;                           )))


(use-package flycheck
  :init
  (progn
    (define-fringe-bitmap 'my-flycheck-fringe-indicator
      (vector #b00000000
              #b00000000
              #b00000000
              #b00000000
              #b00000000
              #b00000000
              #b00000000
              #b00011100
              #b00111110
              #b00111110
              #b00111110
              #b00011100
              #b00000000
              #b00000000
              #b00000000
              #b00000000
              #b00000000))

    (flycheck-define-error-level 'error
      :severity 2
      :overlay-category 'flycheck-error-overlay
      :fringe-bitmap 'my-flycheck-fringe-indicator
      :fringe-face 'flycheck-fringe-error)

    (flycheck-define-error-level 'warning
      :severity 1
      :overlay-category 'flycheck-warning-overlay
      :fringe-bitmap 'my-flycheck-fringe-indicator
      :fringe-face 'flycheck-fringe-warning)

    (flycheck-define-error-level 'info
      :severity 0
      :overlay-category 'flycheck-info-overlay
      :fringe-bitmap 'my-flycheck-fringe-indicator
      :fringe-face 'flycheck-fringe-info)))

				

(provide 'spacemacs-theme_config)

