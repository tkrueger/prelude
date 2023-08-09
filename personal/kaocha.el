(prelude-require-packages '(kaocha-runner))

(defun kaocha-bindings ()

  (defvar kaocha
    (let ((map (make-sparse-keymap)))
      (define-key map "t" 'kaocha-runner-run-test-at-point)
      (define-key map "r" 'kaocha-runner-run-tests)
      (define-key map "a" 'kaocha-runner-run-all-tests)
      (define-key map "w" 'kaocha-runner-show-warnings)
      (define-key map "h" 'kaocha-runner-hide-windows)
      map)
    "Kaocha runner")

  (define-key clojure-mode-map (kbd "C-c M-k") kaocha))

(add-hook 'clojure-mode-hook #'kaocha-bindings)
