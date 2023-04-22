;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; USER CONFIG
(setq user-full-name "Lukas Stauersbøl"
      user-mail-address "lukas.stauersbol@gmail.com")

;; DOOM CONFIG
(setq doom-font (font-spec :family "Fira Code" :size 15)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 15)
      doom-big-font (font-spec :family "Fira Code" :size 24))
(after! doom-themes
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq doom-theme 'doom-dracula)

;; LINE NUMBER CONFIG
(setq display-line-numbers-type t)

;; ORG CONFIG
(setq org-directory "~/org/")

;; BLAMER CONFIG
(use-package blamer
  :bind (("s-i" . blamer-show-commit-info))
  :defer 20
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 70)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                   :background nil
                   :height 110
                   :italic t)))
  :config
  (global-blamer-mode 1)
  )
(setq blamer-author-formatter " ✎ %s ")
(setq blamer-datetime-formatter "[%s]")
(setq blamer-commit-formatter " ● %s")
(setq blamer-prettify-time-p t)

;; LSP CONFIG
(use-package lsp-ui)
(setq lsp-ui-mode t)
(setq lsp-ui-doc-show-with-cursor t)
(setq lsp-ui-doc-delay 0.2)

(setq lsp-modeline-diagnostics-enable t)
(setq lsp-headerline-breadcrumb-enable t)

(setq lsp-completion-enable t)

(setq lsp-lens-enable t)

;; WAKATIME CONFIG
(use-package wakatime-mode
  :ensure t
  :if (executable-find "wakatime")
  :init
  (setq wakatime-api-key (password-store-get "wakatime-api-key")
        wakatime-cli-path (executable-find "wakatime"))
  :config
  (global-wakatime-mode))

;; DOOM MODELINE CONFIG
(setq doom-modeline-time t)
(setq doom-modeline-time-icon t)
(setq doom-modeline-github t)

;; MAGIT CONFIG
(setq magit-todos-mode t)

;; PROJECTILE CONFIG
(setq projectile-project-search-path '("~/Scaletronic/Projects" "~/Mizuho"))

;; EMACS
(setq mode-require-final-newline t)

;; LIGATURES
(use-package fira-code-mode
  :custom (fira-code-mode-disabled-ligatures '("[]" "#{" "#(" ":" "#_" "#_(" "x"))
  :hook prog-mode)
