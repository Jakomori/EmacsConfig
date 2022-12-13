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
