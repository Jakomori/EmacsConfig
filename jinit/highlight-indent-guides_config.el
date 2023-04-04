;; (use-package highlight-indent-guides
;;   :ensure
;;   )
;; (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
;; (setq 'highlight-indent-guides-method 


(use-package highlight-indent-guides
  :if (display-graphic-p)
  :diminish
  ;; Enable manually if needed, it a severe bug which potentially core-dumps Emacs
  ;; https://github.com/DarthFennec/highlight-indent-guides/issues/76
  :commands (highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-method 'character)
  (highlight-indent-guides-responsive 'top)
  (highlight-indent-guides-delay 0)
  (highlight-indent-guides-auto-character-face-perc 7)
  :hook (prog-mode . highlight-indent-guides-mode))

(provide 'highlight-indent-guides-setup)
