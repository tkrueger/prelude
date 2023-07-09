;; Set native indexing mode, to make projectile list git-ignored files.
;; see https://docs.projectile.mx/projectile/configuration.html
(setq projectile-indexing-method 'alien)

(projectile-register-project-type 'bb '("bb.edn")
                                  :project-file "bb.edn"
                                  :test "bb test")
