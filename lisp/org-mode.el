(require 'org)

(define-key org-mode-map (kbd "M-e") 'er/expand-region)
(define-key org-mode-map (kbd "M-h") 'scroll-up)

(add-hook 'org-mode-hook (lambda ()
			   (flyspell-mode t)			   
                           (set (make-local-variable 'company-backends)
				'((company-capf company-ispell company-yasnippet company-files)))))
