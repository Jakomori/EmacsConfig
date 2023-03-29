;; (use-package corfu
;;   :ensure
;;   :straight (:files (:defaults "extensions/*")
;;                     :includes (corfu-indexed
;;                                corfu-history
;;                                ))
;;   :init
;;   (global-corfu-mode)
;;   (corfu-indexed-mode)
;;   (corfu-history-mode)
;;   :config
;;   (setq corfu-auto t
;; 	corfu-quit-no-match 'separator)
;;   )

;; (require 'corfu)
;; (eval-when-compile
;;   (require 'cl-lib))

;; (defface corfu-indexed
;;   '((default :height 0.75)
;;     (((class color) (min-colors 88) (background dark))
;;      :foreground "#f4f4f4" :background "#323232")
;;     (((class color) (min-colors 88) (background light))
;;      :foreground "#404148" :background "#d7d7d7")
;;     (t :background "black"))
;;   "Face used for the candidate index prefix."
;;   :group 'corfu-faces)

;; (defvar corfu-indexed--commands
;;   '(corfu-insert corfu-complete)
;;   "Commands that should be indexed.")

;; (defun corfu-indexed--affixate (cands)
;;   "Advice for `corfu--affixate' which prefixes the CANDS with an index."
;;   (setq cands (cdr cands))
;;   (let* ((space #(" " 0 1 (face (:height 0.5 :inherit corfu-indexed))))
;;          (width (if (> (length cands) 10) 2 1))
;;          (fmt (concat space
;;                       (propertize (format "%%%ds" width)
;;                                   'face 'corfu-indexed)
;;                       space))
;;          (align
;;           (propertize (make-string width ?\s)
;;                       'display
;;                       `(space :align-to (+ left ,(1+ width))))))
;;     (cl-loop for cand in cands for index from 0 do
;;              (setf (cadr cand)
;;                    (concat
;;                     (propertize " " 'display (format fmt index))
;;                     align
;;                     (cadr cand))))
;;     (cons t cands)))

;; (defun corfu-indexed--handle-prefix (orig &rest args)
;;   "Handle prefix argument before calling ORIG function with ARGS."
;;   (if (and current-prefix-arg (called-interactively-p t))
;;       (let ((corfu--index (+ corfu--scroll (prefix-numeric-value current-prefix-arg))))
;;         (if (or (< corfu--index 0)
;;                 (>= corfu--index corfu--total)
;;                 (>= corfu--index (+ corfu--scroll corfu-count)))
;;             (message "Out of range")
;;           (funcall orig)))
;;     (apply orig args)))

;;       ;;;###autoload
;; (define-minor-mode corfu-indexed-mode
;;   "Prefix candidates with indices."
;;   :global t :group 'corfu
;;   (cond
;;    (corfu-indexed-mode
;;     (advice-add #'corfu--affixate :filter-return #'corfu-indexed--affixate)
;;     (dolist (cmd corfu-indexed--commands)
;;       (advice-add cmd :around #'corfu-indexed--handle-prefix)))
;;    (t
;;     (advice-remove #'corfu--affixate #'corfu-indexed--affixate)
;;     (dolist (cmd corfu-indexed--commands)
;;       (advice-remove cmd #'corfu-indexed--handle-prefix)))))


;;  ;;; corfu-indexed.el ends here

(use-package corfu
  ;; Optional customizations
  ;; :custom
  ;; (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  ;; (corfu-auto t)                 ;; Enable auto completion
  ;; (corfu-separator ?\s)          ;; Orderless field separator
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect 'prompt)      ;; Preselect the prompt
  ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  ;; (corfu-scroll-margin 5)        ;; Use scroll margin

  ;; Enable Corfu only for certain modes.
  ;; :hook ((prog-mode . corfu-mode)
  ;;        (shell-mode . corfu-mode)
  ;;        (eshell-mode . corfu-mode))

  ;; Recommended: Enable Corfu globally.
  ;; This is recommended since Dabbrev can be used globally (M-/).
  ;; See also `corfu-exclude-modes'.
  :init
  (global-corfu-mode)
  (setq corfu-quit-at-boundary nil)
  (setq corfu-quit-no-match t)
  )

(setq completion-styles '(orderless)
      completion-category-defaults nil
      orderless-component-separator " ")

(add-hook 'minibuffer-setup-hook
	  (lambda () (setq-local orderless-component-separator " ")))

;; A few more useful configurations...
(use-package emacs
  :init
  ;; TAB cycle if there are only few candidates
  (setq completion-cycle-threshold 3)

  ;; Emacs 28: Hide commands in M-x which do not apply to the current mode.
  ;; Corfu commands are hidden, since they are not supposed to be used via M-x.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)

  ;; Enable indentation+completion using the TAB key.
  ;; `completion-at-point' is often bound to M-TAB.
  (setq tab-always-indent 'nil))
(setq corfu-auto t)
