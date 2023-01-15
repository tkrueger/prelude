(unless (package-installed-p 'solarized-theme)
  (package-install 'solarized-theme))
(disable-theme 'zenburn)
(setq prelude-theme 'solarized-light)
