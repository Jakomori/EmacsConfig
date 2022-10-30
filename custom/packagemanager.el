;; Load the feature "package"
(require 'package)
(package-initialize)

;; Select wich "package" to add to "package-archives"
(setq package-archives
	     '(("melpa" . "http://melpa.org/packages/")
	       ("gnu" . "http://elpa.gnu.org/packages/")))

;; Automatic install "use-package", used to check if the package are installed, and if necessary install them
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(setq package-enable-at-startup nil)

(require 'use-package) 

;; Install "straight.el", used to install packages from other sources
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Use "straight-use-package" instead of "use-package" when called
(straight-use-package 'use-package)

;; Configure "use-package" to use "straight.el" by default
;;(use-package straight
;;             :custom (straight-use-package-by-default t))
(setq straight-use-package-by-default t)


;; [boh.. dicono che sia utile]
(use-package evil-commentary
  :config (evil-commentary-mode))


(defun remove-scratch-buffer ()
  "Disable the scratch buffer when opening a file."
  (if (get-buffer "*straight-process*")
      (kill-buffer "*straight-process*")))
