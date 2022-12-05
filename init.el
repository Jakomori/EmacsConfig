
;; by Jakomo
;; I'm sorry you have to see this

;; Write customization made throught "customize" in "customized.el"
(setq custom-file "~/.emacs.d/custom/customized.el")
;; Load the customization file "customized.el"
(load-file custom-file)

;; Loading "overlay.el", where the gui preference are set
(load-file "~/.emacs.d/custom/overlay.el")

;; Loading "packagemanager.el", where the packet managing packets are configured (I used "use-package" and "straight")
(load-file "~/.emacs.d/custom/package.el")
(load-file "~/.emacs.d/custom/defvar-straight.el")
(load-file "~/.emacs.d/custom/evil-commentary.el")
(load-file "~/.emacs.d/custom/defun-remove-scratch.el")

;; Loading "theme.el", where the theme is set (I used spacemacs-dark)
(load-file "~/.emacs.d/custom/theme.el")

;; Loading "corfu.el". It sets "corfu", an auto completition utility 
(load-file "~/.emacs.d/custom/corfu.el")
(load-file "~/.emacs.d/custom/emacs.el")
(load-file "~/.emacs.d/custom/dabbrev.el")
(load-file "~/.emacs.d/custom/cape.el")
(load-file "~/.emacs.d/custom/vertico.el")

;; Loading "developenv.el", that sets the global development enviroment
(load-file "~/.emacs.d/custom/projectile.el")
(load-file "~/.emacs.d/custom/origami.el")
(load-file "~/.emacs.d/custom/treemacs.el")
(load-file "~/.emacs.d/custom/treemacs-icons-dired.el")
(load-file "~/.emacs.d/custom/multi-term.el")
(load-file "~/.emacs.d/custom/flymake.el")
(load-file "~/.emacs.d/custom/vterm.el")
(load-file "~/.emacs.d/custom/bookmark+.el")
(load-file "~/.emacs.d/custom/minimap.el")
(load-file "~/.emacs.d/custom/which-key.el")
(load-file "~/.emacs.d/custom/crdt.el")
(load-file "~/.emacs.d/custom/savehist.el")

;; Loading "cpp.el", that sets the cpp developing enviroment
(load-file "~/.emacs.d/custom/ggtags.el")


(load-file "~/.emacs.d/custom/undo-fu.el")
(load-file "~/.emacs.d/custom/undo-fu-session.el")

(load-file "~/.emacs.d/custom/key-chord.el")
(load-file "~/.emacs.d/custom/use-package-chords.el")

;; Loading "globalkb.el", that sets the keybindings
(load-file "~/.emacs.d/custom/globalkb.el")
