(set-face-attribute 'default nil :family "Source Code Pro" :height 130)
(setq-default line-spacing 0.1)

;; カーソルの点滅を停止
(blink-cursor-mode 0)

;; メニューバーの非表示
(menu-bar-mode 0)

;;ツールバー非表示
(tool-bar-mode 0)

;;スクロールバー非表示
(scroll-bar-mode 0)

;; 折り返しの設定
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)

;; 行番号表示
(use-package linum
  :init
  (global-linum-mode t)
  :custom
  (linum-format "%5d "))

;; 色んなアイコンを使えるようになる
(use-package all-the-icons
  :ensure t)

(use-package all-the-icons-dired
  :ensure t)

;; theme
(use-package spacemacs-common
  :ensure spacemacs-theme
  ;; :custom
  ;; (spacemacs-theme-custom-colors (cursor . "#ffa500"))
  :config
  (custom-set-variables '(spacemacs-theme-custom-colors
                          '((cursor . "#ffa500"))))

  (load-theme 'spacemacs-dark t))

(use-package doom-modeline
  :ensure t
  :defer t
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-buffer-file-name-style 'truncate-with-project)
  (doom-modeline-icon t)
  (doom-modeline-major-mode-icon t)
  (doom-modeline-minor-modes nil)
  :config
  (setq doom-modeline-height 1)
  (set-face-attribute 'mode-line nil :family "Source Code Pro" :height 130)
  (set-face-attribute 'mode-line-inactive nil :family "Source Code Pro" :height 130)
  (line-number-mode 0)
  (column-number-mode 0))


;; カーソル行をびこーん
(use-package beacon
  :ensure t
  :custom
  (beacon-color "magenta")
  :hook (after-init . beacon-mode))
