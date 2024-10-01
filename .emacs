(setq custom-file "~/.emacs.custom.el")
(package-initialize)

(add-to-list 'load-path "~/.emacs.local/")
(add-to-list 'custom-theme-load-path "~/.emacs.local/themes/")

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)

(global-hl-line-mode t)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(ido-mode 1)
(ido-everywhere 1)

; yasnippet
(setq yas/triggers-in-field nil)
(setq yas-snippet-dirs '("~/.emacs.local/snippets/"))
(yas-global-mode 1)

(setq-default inhibit-splash-screen t
              make-backup-files nil
              tab-width 4
              indent-tabs-mode nil
              compilation-scroll-output t)

(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
              (awk-mode . "awk")
              (other . "bsd")))



(set-frame-font "Inconsolata Nerd Font 15" nil)

(setq package-archives
      '(("MELPA"        . "https://melpa.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("NonGNU ELPA"  . "https://elpa.nongnu.org/nongnu/")))

(load-file custom-file)

