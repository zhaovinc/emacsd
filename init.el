
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(load "package")
(load "general")
(load "modeline")
(load "company-mode")
(load "org-mode")
(load "web-dev")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" default)))
 '(json-reformat:indent-width 2)
 '(package-selected-packages
   (quote
    (ivy-posframe prettier-js tide yasnippet json-mode smartparens beacon flyspell-correct-ivy zzz-to-char rainbow-delimiters company dashboard doom-modeline winum crux yaml-mode avy expand-region projectile magit markdown-mode darkokai-theme counsel ivy)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "outline" :family "mononoki"))))
 '(ivy-posframe-border ((t (:inherit default :background "white")))))

(load-theme 'darkokai t)
