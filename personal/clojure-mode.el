;; allow to eval forms in comment blocks
(setq clojure-toplevel-inside-comment-form t)

;; do not jump to repl buffer on establishing connection
(setq cider-repl-pop-to-buffer-on-connect 'display-only)

;; aggresive indent mode
;; see https://github.com/Malabarba/aggressive-indent-mode
(unless (package-installed-p 'aggressive-indent)
  (package-install 'aggressive-indent))
(require 'aggressive-indent)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;; enabling camelcase support for next-word and such
(add-hook 'clojure-mode-hook #'subword-mode)
