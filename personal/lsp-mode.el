;; package already required by prelude
(prelude-require-packages '(clojure-mode lsp-mode cider lsp-treemacs flycheck company))

(add-hook 'clojure-mode-hook 'lsp)
;(add-hook 'clojure-mode-hook 'lsp-deferred)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-minimum-prefix-length 1
      lsp-enable-indentation nil ; uncomment to use cider indentation instead of lsp
      ;; lsp-enable-completion-at-point nil ; uncomment to use cider completion instead of lsp
      lsp-ui-doc-show-with-mouse nil ; uncomment to suppress mouse hover
      ;; lsp-signature-auto-activate nil ;uncomment to suppress signature help.
      ;; prevent watching huge .cache dir (greetings, bazel...)
      )
