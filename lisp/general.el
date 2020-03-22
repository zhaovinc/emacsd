(require 'flyspell)
(require 'flyspell-correct-ivy)
(require 'smartparens-config)

(setq ring-bell-function 'ignore)

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
 
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; C-g is harder to press in Mac keyboard than M-g
;;(global-set-key (kbd "M-g") 'keyboard-escape-quit)

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

;; Move to character
(global-set-key (kbd "M-f") 'avy-goto-char)
;;(global-set-key (kbd "") 'avy-goto-char-2)
(global-set-key (kbd "M-g l") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)

;; Screen Scroll
(global-set-key (kbd "M-y") 'scroll-down)
(global-set-key (kbd "M-h") 'scroll-up)

;; Auto selection
(global-set-key (kbd "M-e") 'er/expand-region)

;; Move to beginning/ending of buffer
(global-set-key (kbd "M-<") 'beginning-of-buffer)
(global-set-key (kbd "M->") 'end-of-buffer)
 
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
(global-set-key (kbd "M-V") 'counsel-yank-pop)
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

;; Execute command
(global-set-key (kbd "M-'") 'counsel-M-x)
 
;; search
(global-set-key (kbd "M-s") 'swiper)
(global-set-key (kbd "M-r") 'swiper-backward)

;; text selection
(global-set-key (kbd "M-e") 'er/expand-region)
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; projects
(projectile-global-mode)
(setq projectile-completion-system 'ivy)
(global-set-key (kbd "M-O") 'projectile-find-file)

;; magit
(setq magit-save-some-buffers nil
      magit-process-popup-time 60
      magit-completing-read-function 'magit-ido-completing-read
      magit-status-buffer-switch-function 'switch-to-buffer)

(add-hook 'magit-mode-hook
	  (lambda() 
	    (local-set-key (kbd "M-s") 'swiper)
	    (local-set-key (kbd "M-r") 'swiper-backward)
	    (local-set-key (kbd "M-h") 'scroll-up)
	    (local-set-key (kbd "M-c") 'magit-copy-item-as-kill))) 

;; switch buffer
(global-set-key (kbd "M-b") 'ivy-switch-buffer)

;; switch window
(setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "M-0") 'winum-select-window-0-or-10)
      (define-key map (kbd "M-1") 'winum-select-window-1)
      (define-key map (kbd "M-2") 'winum-select-window-2)
      (define-key map (kbd "M-3") 'winum-select-window-3)
      (define-key map (kbd "M-4") 'winum-select-window-4)
      (define-key map (kbd "M-5") 'winum-select-window-5)
      (define-key map (kbd "M-6") 'winum-select-window-6)
      (define-key map (kbd "M-7") 'winum-select-window-7)
      (define-key map (kbd "M-8") 'winum-select-window-8)
      map))
(winum-mode)

;; zap to character
(global-set-key (kbd "C-f") #'zzz-to-char)

;; some convenient aliases
(defalias 'rr 'replace-regexp)
(defalias 'qr 'query-replace)
(defalias 'qrr 'query-replace-regexp)
(defalias 'lml 'list-matching-lines)
(defalias 'dml 'delete-matching-lines)

(defalias 'eb 'eval-buffer)
(defalias 'er 'eval-region)
(defalias 'ee 'eval-expression)

(defalias 'git 'magit-status)
(defalias 'ttl 'toggle-truncate-lines)


;; dashboard
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome Home")
(setq dashboard-center-content t)

;; spell checking
(setq ispell-program-name "/usr/local/bin/hunspell")
(define-key flyspell-mode-map (kbd "M-;") 'flyspell-correct-wrapper)

;; rainbow delimiter
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(beacon-mode 1)
(setq beacon-color "#60ff14")

;; smart paren
(smartparens-global-mode t)

;; some other useful keybindings
(global-set-key (kbd "C-k") 'crux-smart-kill-line)
(global-set-key (kbd "C-o") 'crux-smart-open-line)

;; yasnippet
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))

(yas-global-mode 1)


