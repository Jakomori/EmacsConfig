(ibuffer)
(ibuffer-auto-mode)
(ibuffer)

(require 'ibuf-ext)
(add-to-list 'ibuffer-never-show-predicates "^\\*")


(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("dired" (mode . dired-mode))
               ("perl" (mode . cperl-mode))
               ("erc" (mode . erc-mode))
               ("planner" (or
                           (name . "^\\*Calendar\\*$")
                           (name . "^diary$")
                           (mode . muse-mode)))
               ("emacs" (or
                         (name . "^\\*scratch\\*$")
                         (name . "^\\*Messages\\*$")))
               ("svg" (name . "\\.svg")) ; group by file extension
               ("gnus" (or
                        (mode . message-mode)
                        (mode . bbdb-mode)
                        (mode . mail-mode)
                        (mode . gnus-group-mode)
                        (mode . gnus-summary-mode)
                        (mode . gnus-article-mode)
                        (name . "^\\.bbdb$")
                        (name . "^\\.newsrc-dribble")))))))


;;(diff-buffer-with-file)

;; (defadvice ibuffer-update-title-and-summary (after remove-column-titles)
;;  (save-excursion
;;     (set-buffer "*Ibuffer*")
;;     (toggle-read-only 0)
;;     (goto-char 1)
;;     (search-forward "-\n" nil t)
;;     (delete-region 1 (point))
;;     (let ((window-min-height 1)) 
;;       ;; save a little screen estate
;;       (shrink-window-if-larger-than-buffer))
;;     (toggle-read-only)))

;;(ad-activate 'ibuffer-update-title-and-summary)

;; (define-key ibuffer-mode-map (kbd "<RET>") 'ibuffer-visit-buffer-other-window (previous-window))

;; (define-key ibuffer-mode-map (kbd "<RET>") 'ibuffer-visit-buffer-other-window-noselect (previous-window))

(provide 'ibuffer_config)
