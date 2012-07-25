;; Erlang mode (installed via Homebrew)
(setq load-path (cons"/usr/local/Cellar/erlang/R15B01/lib/erlang/lib/tools-2.6.7/emacs" load-path))
(setq erlang-root-dir "/usr/local/Cellar/erlang/R15B01/lib/erlang/lib")
(setq exec-path (cons "/usr/local/Cellar/erlang/R15B01/lib/erlang/bin" exec-path))
(require 'erlang-start)

;; Clojure mode
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'clojure-mode)

;; Zencoding mode
(load "~/.emacs.d/plugins/zencoding-mode")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
