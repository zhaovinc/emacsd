(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(define-key company-active-map (kbd "M-k") 'company-select-next)
(define-key company-active-map (kbd "M-i") 'company-select-previous)
