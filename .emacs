
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Initialization
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/home/leo/.emacs.d/")

(require 'recentf)
(require 'ido)
(require 'auto-complete-config)

(ac-config-default)
(setq ac-auto-start nil)
(global-set-key "\M-/" 'auto-complete)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ido-mode (quote buffer) nil (ido))
 '(python-indent 2)
 '(recentf-max-saved-items 100)
 '(recentf-save-file "~/.recentf")
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil))
(recentf-mode 1)
(show-paren-mode 1)
(setq-default ispell-program-name "aspell")

;; prevent silly initial splash screen
(setq inhibit-splash-screen t)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generated by GUI. Edit with care
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "gray20" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 128 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background light)) (:foreground "SteelBlue"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "DarkGreen"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background light)) (:foreground "Brown"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background light)) nil)))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:foreground "SteelBlue"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background light)) (:foreground "SteelBlue"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) nil))))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Indentation
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c-set-indent-vtk ()
  (interactive)

  (setq c-basic-offset 2)
  (setq c-comment-only-line-offset 0)
  (setq c-indent-comments-syntactically-p t)
  (setq c-electric-pound-behavior '(alignleft))
  (setq indent-tabs-mode nil)

  (c-set-offset 'case-label 0)
  (c-set-offset 'label 0)
  (c-set-offset 'topmost-intro-cont 0)
  (c-set-offset 'block-open '+)
  (c-set-offset 'block-close 0)
  (c-set-offset 'substatement '+)
  (c-set-offset 'substatement-open '+)
  (c-set-offset 'statement-block-intro 0)
  (c-set-offset 'access-label '-)

  (c-set-offset 'string 'c-lineup-dont-change)
  (c-set-offset 'c 'c-lineup-C-comments)
  (c-set-offset 'defun-open 0)
  (c-set-offset 'defun-close 0)
  (c-set-offset 'defun-block-intro '+)
  (c-set-offset 'class-open 0)
  (c-set-offset 'class-close 0)
  (c-set-offset 'inline-open 0)
  (c-set-offset 'inline-close 0)
  (c-set-offset 'func-decl-cont '+)
  (c-set-offset 'knr-argdecl-intro 5)
  (c-set-offset 'knr-argdecl 0)
  (c-set-offset 'topmost-intro 0)
  (c-set-offset 'member-init-intro '+)
  (c-set-offset 'member-init-cont 0)
  (c-set-offset 'inher-intro '+)
  (c-set-offset 'inher-cont 'c-lineup-multi-inher)
  (c-set-offset 'brace-list-open 0)
  (c-set-offset 'brace-list-close 0)
  (c-set-offset 'brace-list-intro '+)
  (c-set-offset 'brace-list-entry 0)
  (c-set-offset 'brace-entry-open 0)
  (c-set-offset 'statement 0)
  (c-set-offset 'statement-cont '+)
  (c-set-offset 'statement-case-intro '+)
  (c-set-offset 'statement-case-open '+)
  (c-set-offset 'do-while-closure 0)
  (c-set-offset 'else-clause 0)
  (c-set-offset 'catch-clause 0)
  (c-set-offset 'comment-intro 'c-lineup-comment)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-cont 'c-lineup-arglist-operators)
  (c-set-offset 'arglist-close 'c-lineup-arglist-operators)
  (c-set-offset 'stream-op 'c-lineup-streamop)
  (c-set-offset 'inclass '+)
  (c-set-offset 'cpp-macro -1000)
  (c-set-offset 'cpp-macro-cont 'c-lineup-dont-change)
  (c-set-offset 'friend 0)
  (c-set-offset 'objc-method-intro -1000)
  (c-set-offset 'objc-method-args-cont 'c-lineup-ObjC-method-args)
  (c-set-offset 'objc-method-call-cont 'c-lineup-ObjC-method-call)
  (c-set-offset 'extern-lang-open 0)
  (c-set-offset 'extern-lang-close 0)
  (c-set-offset 'inextern-lang '+)
  (c-set-offset 'namespace-open 0)
  (c-set-offset 'namespace-close 0)
  (c-set-offset 'innamespace '+)
  (c-set-offset 'template-args-cont '+)
  (c-set-offset 'inlambda 'c-lineup-inexpr-block)
  (c-set-offset 'lambda-intro-cont '+)
  (c-set-offset 'inexpr-statement 0)
  (c-set-offset 'inexpr-class '+)
  (local-set-key (kbd "RET") 'newline-and-indent)
  (message "VTK indentation."))

(add-hook 'c-mode-common-hook 'c-set-indent-vtk)


;; (setq c-default-style "linux"
;;           c-basic-offset 2)

;; (defun set-newline-and-indent ()
;;      (local-set-key (kbd "RET") 'newline-and-indent))
;;     (add-hook 'c-mode-common-hook 'set-newline-and-indent)




;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; keyboard
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
;;(global-set-key "\C-z" 'undo)
(global-set-key "\C-[spc]" 'set-mark-command)
(global-set-key [f12] 'recentf-open-files)
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)
(global-set-key [f5] 'recompile)

(setq-default winner-mode t)
(windmove-default-keybindings)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; File Save hook
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 (add-hook 'before-save-hook 'delete-trailing-whitespace)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
(setq-default truncate-lines t)


;; sourcepair
(load-file "~/.emacs.d/sourcepair.el")
(define-key global-map "\C-xz" 'sourcepair-load)

(global-unset-key "\C-z")
(define-key global-map "\C-z" 'revert-buffer)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;e;;;;;;;;;;;;;;;;;;
;; Compilation
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq compilation-window-height 10)
(setq compilation-scroll-output 'first-error)

(defun my-next-error ()
    "Move point to next error and highlight it"
    (interactive)
    (progn
      (next-error)
      (end-of-line-nomark)
      (beginning-of-line-mark)
      )
  )
(global-set-key [f4] 'my-next-error)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Copy and paste
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq x-select-enable-clipboard t)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Uniquify
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (load-file "~/.emacs.d/uniquify.el")
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "|")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GUI
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-scroll-bar-mode 'right)
(tool-bar-mode -1)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python hook
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun my-compile ()
  "Use compile to run python programs"
  (interactive)
  (compile (concat "python " (buffer-name))))
(setq compilation-scroll-output t)

(add-hook 'python-mode-hook '(lambda ()
   (local-set-key (kbd "RET") 'newline-and-indent)))

(add-hook 'python-mode-hook '(lambda ()
   (local-set-key "\C-c\C-c" 'my-compile)))

(defadvice show-paren-function
  (after show-matching-paren-offscreen activate)
  "If the matching paren is offscreen, show the matching line in the
        echo area. Has no effect if the character before point is not of
        the syntax class ')'."
  (interactive)
  (if (not (minibuffer-prompt))
      (let ((matching-text nil))
	;; Only call `blink-matching-open' if the character before point
	;; is a close parentheses type character. Otherwise, there's not
	;; really any point, and `blink-matching-open' would just echo
	;; "Mismatched parentheses", which gets really annoying.
	(if (char-equal (char-syntax (char-before (point))) ?\))
	    (setq matching-text (blink-matching-open)))
	(if (not (null matching-text))
	    (message matching-text)))))
(put 'upcase-region 'disabled nil)
