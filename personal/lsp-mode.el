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
      lsp-file-watch-ignored-directories (append lsp-file-watch-ignored-directories (list ".*/\.cache/.*")))

; (setq lsp-signature-auto-activate nil) ;; you could manually request them via `lsp-signature-activate`
; (setq lsp-signature-render-documentation nil)

; completion
; (setq lsp-completion-provider :none)
; (setq lsp-completion-show-detail nil)
; (setq lsp-completion-show-kind nil)

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

;; monkey patch lsp-treemacs, see https://github.com/emacs-lsp/lsp-treemacs/issues/140
(defun lsp-treemacs--generic-icon (item expanded?)
  "Get the symbol for the the kind."
  (concat
   (if (or (plist-get item :children)
           (plist-get item :children-async))
       (if expanded?  "▾ " "▸ ")
     "  ")
   (or (plist-get item :icon-literal)
       (if-let (icon (plist-get item :icon))
           (treemacs-get-icon-value
            icon
            nil
            lsp-treemacs-theme)
         "   "))))
