(add-to-list 'load-path "~/.emacs.d/plugins/")
(push "/usr/local/bin" exec-path)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(defalias 'yes-or-no-p 'y-or-n-p)

;; backup policies
;(setq make-backup-files nil)
(setq make-backup-files t)
(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("" . "~/.backups/emacs")))

(desktop-save-mode 1)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq whitespace-global-mode t) 
(setq js-indent-level 2)
(setq inhibit-startup-message t)
(setq-default fill-column 80)

(fset 'yes-or-no-p 'y-or-n-p)
(setq mac-command-modifier 'meta)
(setq mac-function-modifier 'super)

(setq default-major-mode 'text-mode)
(delete-selection-mode t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(line-number-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)
(global-hl-line-mode t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq x-select-enable-clipboard t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'solarized-dark t)

(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

(global-set-key (kbd "M-+") 'text-scale-adjust)
(global-set-key (kbd "M--") 'text-scale-adjust)

(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "M-6") 'flymake-mode)
(global-set-key (kbd "M-0") 'delete-window)

;; C-w and C-x C-k
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; (global-set-key (kbd "C-z") 'undo) ; Ctrl+z

(global-set-key "\M-r" 'isearch-forward-regexp)
(global-set-key "\M-s" 'isearch-backward-regexp)

(if window-system
    (windmove-default-keybindings 'meta)
  (progn
    (global-set-key [(alt left)]  'windmove-left)
    (global-set-key [(alt up)]    'windmove-up)
    (global-set-key [(alt right)] 'windmove-right)
    (global-set-key [(alt down)]  'windmove-down)))

(defun kill-shell-buffer(process event) 
  "The one actually kill shell buffer when exit. "
  (kill-buffer (process-buffer process)) 
  ) 

(defun kill-shell-buffer-after-exit() 
  "kill shell buffer when exit."
  (set-process-sentinel (get-buffer-process (current-buffer)) 
                        #'kill-shell-buffer) 
  ) 

(add-hook 'shell-mode-hook 'Kill-shell-buffer-after-exit t) 

;; indent
(defun indent-whole ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "M-q") 'indent-whole)

                                        ; Textmate mode
(require 'textmate)
(textmate-mode)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

;; (setenv "PYMACS_PYTHON" "python2.7")

;; Ropemacs
(add-to-list 'load-path "~/.emacs.d/vendor/pymacs-0.25")
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

;; Auto Complete
(add-to-list 'load-path "~/.emacs.d/vendor/auto-complete-1.3")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/auto-complete-1.3/dict")
(ac-config-default)

;; comment
(defun comment-dwim-line (&optional arg)
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'comment-dwim-line)

;; zencoding-mode
(require 'zencoding-mode) 
(add-hook 'sgml-mode-hook 'zencoding-mode) ;;Auto-start on any markup modes
