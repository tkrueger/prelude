;;
;; Embark;; See https://github.com/oantolin/embark
;;

(prelude-require-package 'embark)

(global-set-key (kbd "C-.") 'embark-act)

(add-hook 'embark-collect-mode 'consult-preview-at-point-mode)
