;; Erlang mode (installed via Homebrew)
(setq load-path (cons"/usr/local/Cellar/erlang/R15B01/lib/erlang/lib/tools-2.6.7/emacs" load-path))
(setq erlang-root-dir "/usr/local/Cellar/erlang/R15B01/lib/erlang/lib")
(setq exec-path (cons "/usr/local/Cellar/erlang/R15B01/lib/erlang/bin" exec-path))
(require 'erlang-start)

;; Clojure
(add-to-list 'load-path "~/.emacs-it/clojure-mode")
(require 'clojure-mode)
