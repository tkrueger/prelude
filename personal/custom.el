(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(async compat counsel dash eldoc f gh git-commit go-mode helm helm-core helm-projectile ht ivy jsonrpc key-chord list-utils magit-section markdown-mode multiple-cursors orderless parseclj parseedn popup posframe prescient project pythonic seq sesman solarized-theme swiper transient treemacs treemacs-projectile use-package vertico with-editor yasnippet browse-kill-ring company-anaconda crux exec-path-from-shell expand-region json-mode lsp-ui move-text operate-on-number super-save dockerfile-mode anaconda-mode avy clj-refactor consult diff-hl editorconfig embark git-modes git-timemachine hl-todo js2-mode kaocha-runner smartparens tide web-mode which-key yaml-mode csharp-mode eglot embark-consult magit projectile zenburn-theme marginalia flycheck-clj-kondo selectrum-prescient clojure-mode lsp-mode cider lsp-treemacs flycheck company))
 '(safe-local-variable-values
   '((eglot-workspace-configuration
      (:gopls :directoryFilters
              ["-bazel-bin" "-bazel-out" "-bazel-testlogs" "-bazel-core"]
              :gofumpt t :usePlaceholders t :allowModfileModifications t))
     (cider-format-code-options
      ("indents"
       (("grpc-service"
         (("inner" 0))))))))
 '(window-divider-default-places 'right-only))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-error-overlay-face ((t (:extend t :foreground "OrangeRed2")))))
