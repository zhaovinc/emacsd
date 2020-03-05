(if (eq system-type 'darwin)
  (setq ns-command-modifier 'meta
        ns-right-option-modifier 'control
        ns-option-modifier 'super))

(set-fringe-mode '(0 . 0))

(setq make-backup-files nil)

(setq frame-title-format
	  '((:eval (system-name)) ": " (:eval (if (buffer-file-name)
											  (abbreviate-file-name (buffer-file-name))
											"%b"))))

(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq redisplay-dont-pause t
	  scroll-margin 10
	  scroll-step 1
	  scroll-conservatively 100000
	  scroll-preserve-screen-position 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-height 16)


;; Single char cursor movement
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-k") 'next-line)

;; Move by word
(global-set-key (kbd "M-u") 'backward-word)
(global-set-key (kbd "M-o") 'forward-word)

;; Move to beginning/ending of line
(global-set-key (kbd "C-a") 'beginning-of-line)
(global-set-key (kbd "C-e") 'end-of-line)

;; Screen Scroll
(global-set-key (kbd "M-y") 'scroll-down)
(global-set-key (kbd "M-h") 'scroll-up)

;; Auto selection
;; (global-set-key (kbd "M-e") 'extend-selection)
(global-set-key (kbd "M-e") 'er/expand-region)

;; Move to beginning/ending of buffer
(global-set-key (kbd "M-<") 'beginning-of-buffer)
(global-set-key (kbd "M->") 'end-of-buffer)

;; Move by character
(define-key global-map (kbd "M-f") 'go-to-char)
(define-key global-map (kbd "M-b") 'back-to-char)
(define-key global-map (kbd "C-f") 'zap-up-to-char)
(define-key global-map (kbd "C-b") 'zap-back-to-char)

;; Search
(global-set-key (kbd "M-s") 'swiper-helm)
(global-set-key (kbd "M-r") 'swiper-helm)
 
;; open file
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(define-key ivy-minibuffer-map (kbd "M-i") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "M-k") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "M-r") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "M-s") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "M-p") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "M-n") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "M-v") 'yank)

;; Delete previous/next char.
(global-set-key (kbd "C-d") 'delete-char)

;; Delete previous/next word.
(global-set-key (kbd "C-w") 'backward-kill-word)

;; Copy Cut Paste, Paste previous
(global-set-key (kbd "M-x") 'kill-region)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-V") 'helm-show-kill-ring)
(global-set-key (kbd "M-C") 'copy-all)
(global-set-key (kbd "M-X") 'cut-all)

;; undo and redo
(global-set-key (kbd "M-Z") 'redo)
(global-set-key (kbd "M-z") 'undo)

(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-n") 'new-empty-buffer)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "M-A") 'mark-whole-buffer)

(global-set-key (kbd "<delete>") 'delete-char) ; the Del key for forward delete

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Execute command
;;  (smex-initialize)
;; (global-set-key (kbd "M-'") 'smex)
(global-set-key (kbd "M-'") 'execute-extended-command)

;; isearch
(global-set-key (kbd "M-s") 'isearch-forward)
(global-set-key (kbd "M-r") 'isearch-backward)

;;; --------------------------------------------------
;;; isearch mode
(add-hook 'isearch-mode-hook
 (lambda ()
 (define-key isearch-mode-map (kbd "M-s") 'isearch-repeat-forward)
 (define-key isearch-mode-map (kbd "M-r") 'isearch-repeat-backward)
 (define-key isearch-mode-map (kbd "M-w") 'backward-kill-word)
 (define-key isearch-mode-map (kbd "M-v") 'isearch-yank-kill)
 (define-key isearch-mode-map (kbd "M-V") 'isearch-yank-word-or-char)))
