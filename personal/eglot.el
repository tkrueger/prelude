;; see https://joaotavora.github.io/eglot

(with-eval-after-load 'eglot
  (add-to-list 'eglot-stay-out-of 'flymake)

  ;; limit use of eldoc minibuffer.
  ;; set to a number for a maximum size in lines it can grow to.
  ;; set to nil to turn off completely
  (setq eldoc-echo-area-use-multiline-p 5)
  )
