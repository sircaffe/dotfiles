(setq custom-file "~/.config/emacs/custom.el")

(add-to-list 'default-frame-alist `(font . "Iosevka-14"))

(setq-default inhibit-startup-message t
			  make-backup-files nil
			  indent-tabs-mode nil)

(setq-default tab-width 4
			  c-basic-offset 4)

(setq shell-command-switch "-ic")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(global-display-line-numbers-mode 1)

(add-to-list 'load-path "~/.config/emacs/opt")

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
(require 'go-mode)

;; (require 'multiple-cursors)

;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.
;; See `package-archive-priorities` and `package-pinned-packages`.
;; Most users will not need or want to do this.
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)

(load-file custom-file)
