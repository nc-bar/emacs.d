(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;;(package-refresh-contents)

;; getting the evil package
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; enable evil
(require 'evil)
(evil-mode 1)

;; inhibit startup message
(setq inhibit-startup-message t)

;; disable syntax highlighting
;; font lock mode is a minor mode which
;; assigns faces or fontfiles to the text in
;; a buffer. that is the way
;; syntax highlighting works
;; and that's why I'm setting it to a
;; constant global value
(global-font-lock-mode 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; save backups to a fixed directory instead of the current path
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))
