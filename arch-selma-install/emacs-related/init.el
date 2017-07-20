;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;;; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))

;; begin general customization

;;; utilize gnus mime type functions in dired
(require 'gnus-dired) ;, isn’t needed due to autoload cookies
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
(setq same-window-buffer-names '("*Buffer List*" "*shell*" "*mail*" "*info*" "*ielm*"))

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/")
;;; load-path

(prefer-coding-system 'utf-8-unix)

(defun increase-font-size ()
  (interactive)
  (text-scale-adjust 0.5))

(defun decrease-font-size ()
  (interactive)
  (text-scale-adjust -0.5))

;;; bind Ctl-scroll to fontsize scaling:

(global-set-key (kbd "<C-down-mouse-5>") 'decrease-font-size)
(global-set-key (kbd "<C-down-mouse-4>") 'increase-font-size)

(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)
(setq-default indent-tabs-mode nil)
;; (setq scroll-step 1)
(fset 'yes-or-no-p 'y-or-n-p)
(menu-bar-mode t)
(tool-bar-mode nil)
(scroll-bar-mode nil)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
;;; turn on region highlighting
(setq transient-mark-mode 1)
(setq meta-prefix-char 27)

(put 'narrow-to-region 'disabled nil)
;; (recentf-mode 1)
(add-hook 'lisp-interaction-mode-hook (lambda () (recentf-mode t)))
;;(slime)

(setq mwheel-scroll-down-function 'scroll-down) 

;; (setq mwheel-scroll-down-function 'scroll-down) 

(put 'scroll-left 'disabled t)
(global-set-key [wheel-right] 'scroll-right)
(global-set-key [wheel-left] 'scroll-left)


(set-cursor-color "green")
(set-mouse-color "orange")

(modify-frame-parameters nil '((wait-for-wm . nil)))
; (server-start)


(add-to-list 'default-frame-alist '(font . "Monospace-10"))

default-frame-alist
;; "bitstream Bitstream Vera Sans mono"

(require 'color-theme)

(defun color-theme-charcoal-black ()
  "Color theme by Lars Chr. Hausmann, created 2003-03-24."
  (interactive)
  (color-theme-install
   '(color-theme-charcoal-black
     ((background-color . "Black")
      (background-mode . dark)
      (border-color . "Grey")
      (cursor-color . "Grey")
      (foreground-color . "Grey")
      (mouse-color . "Grey"))
     ((display-time-mail-face . mode-line)
      (gnus-article-button-face . bold)
      (gnus-article-mouse-face . highlight)
      (gnus-mouse-face . highlight)
      (gnus-server-agent-face . gnus-server-agent-face)
      (gnus-server-closed-face . gnus-server-closed-face)
      (gnus-server-denied-face . gnus-server-denied-face)
      (gnus-server-offline-face . gnus-server-offline-face)
      (gnus-server-opened-face . gnus-server-opened-face)
      (gnus-signature-face . gnus-signature-face)
      (gnus-summary-selected-face . gnus-summary-selected-face)
      (help-highlight-face . underline)
      (list-matching-lines-face . bold)
      (mime-button-face . bold)
      (mime-button-mouse-face . highlight)
      (sgml-set-face . t)
      (tags-tag-face . default)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "Black" :foreground "Grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 87 :width semi-condensed :family "misc-fixed"))))
     (Info-title-1-face ((t (:bold t :weight bold :family "helv" :height 1.728))))
     (Info-title-2-face ((t (:bold t :family "helv" :weight bold :height 1.44))))
     (Info-title-3-face ((t (:bold t :weight bold :family "helv" :height 1.2))))
     (Info-title-4-face ((t (:bold t :family "helv" :weight bold))))
     (bg:erc-color-face0 ((t (nil))))
     (bg:erc-color-face1 ((t (nil))))
     (bg:erc-color-face10 ((t (nil))))
     (bg:erc-color-face11 ((t (nil))))
     (bg:erc-color-face12 ((t (nil))))
     (bg:erc-color-face13 ((t (nil))))
     (bg:erc-color-face14 ((t (nil))))
     (bg:erc-color-face15 ((t (nil))))
     (bg:erc-color-face2 ((t (nil))))
     (bg:erc-color-face3 ((t (nil))))
     (bg:erc-color-face4 ((t (nil))))
     (bg:erc-color-face5 ((t (nil))))
     (bg:erc-color-face6 ((t (nil))))
     (bg:erc-color-face7 ((t (nil))))
     (bg:erc-color-face8 ((t (nil))))
     (bg:erc-color-face9 ((t (nil))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:bold t :foreground "beige" :weight bold))))
     (border ((t (:background "Grey"))))
     (calendar-today-face ((t (:underline t))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan"))))
     (cperl-array-face ((t (:bold t :foreground "light salmon" :weight bold))))
     (cperl-hash-face ((t (:italic t :bold t :foreground "beige" :slant italic :weight bold))))
     (cperl-nonoverridable-face ((t (:foreground "aquamarine"))))
     (cursor ((t (:background "Grey"))))
     (custom-button-face ((t (:foreground "gainsboro"))))
     (custom-button-pressed-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-changed-face ((t (:background "blue" :foreground "white"))))
     (custom-comment-face ((t (:background "dim gray"))))
     (custom-comment-tag-face ((t (:foreground "gray80"))))
     (custom-documentation-face ((t (:foreground "light blue"))))
     (custom-face-tag-face ((t (:underline t))))
     (custom-group-tag-face ((t (:bold t :foreground "pale turquoise" :weight bold))))
     (custom-group-tag-face-1 ((t (:foreground "pale turquoise" :underline t))))
     (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
     (custom-modified-face ((t (:background "blue" :foreground "white"))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:background "white" :foreground "blue"))))
     (custom-state-face ((t (:foreground "light salmon"))))
     (custom-variable-button-face ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag-face ((t (:bold t :foreground "turquoise" :weight bold))))
     (diary-face ((t (:foreground "red"))))
     (dired-face-directory ((t (:bold t :foreground "sky blue" :weight bold))))
     (dired-face-executable ((t (:foreground "green yellow"))))
     (dired-face-flagged ((t (:foreground "tomato"))))
     (dired-face-marked ((t (:foreground "light salmon"))))
     (dired-face-permissions ((t (:foreground "aquamarine"))))
     (erc-action-face ((t (nil))))
     (erc-bold-face ((t (:bold t :weight bold))))
     (erc-default-face ((t (nil))))
     (erc-direct-msg-face ((t (:foreground "pale green"))))
     (erc-error-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (erc-highlight-face ((t (:bold t :foreground "pale green" :weight bold))))
     (erc-input-face ((t (:foreground "light blue"))))
     (erc-inverse-face ((t (:background "steel blue"))))
     (erc-notice-face ((t (:foreground "light salmon"))))
     (erc-pal-face ((t (:foreground "pale green"))))
     (erc-prompt-face ((t (:bold t :foreground "light blue" :weight bold))))
     (eshell-ls-archive-face ((t (:bold t :foreground "medium purple" :weight bold))))
     (eshell-ls-backup-face ((t (:foreground "dim gray"))))
     (eshell-ls-clutter-face ((t (:foreground "dim gray"))))
     (eshell-ls-directory-face ((t (:bold t :foreground "medium slate blue" :weight bold))))
     (eshell-ls-executable-face ((t (:bold t :foreground "aquamarine" :weight bold))))
     (eshell-ls-missing-face ((t (:foreground "black"))))
     (eshell-ls-picture-face ((t (:foreground "violet"))))
     (eshell-ls-product-face ((t (:foreground "light steel blue"))))
     (eshell-ls-readonly-face ((t (:foreground "aquamarine"))))
     (eshell-ls-special-face ((t (:foreground "gold"))))
     (eshell-ls-symlink-face ((t (:foreground "white"))))
     (eshell-ls-unreadable-face ((t (:foreground "dim gray"))))
     (eshell-prompt-face ((t (:bold t :foreground "light sky blue" :weight bold))))
     (excerpt ((t (:italic t :slant italic))))
     (fg:erc-color-face0 ((t (:foreground "white"))))
     (fg:erc-color-face1 ((t (:foreground "beige"))))
     (fg:erc-color-face10 ((t (:foreground "pale goldenrod"))))
     (fg:erc-color-face11 ((t (:foreground "light goldenrod yellow"))))
     (fg:erc-color-face12 ((t (:foreground "light yellow"))))
     (fg:erc-color-face13 ((t (:foreground "yellow"))))
     (fg:erc-color-face14 ((t (:foreground "light goldenrod"))))
     (fg:erc-color-face15 ((t (:foreground "lime green"))))
     (fg:erc-color-face2 ((t (:foreground "lemon chiffon"))))
     (fg:erc-color-face3 ((t (:foreground "light cyan"))))
     (fg:erc-color-face4 ((t (:foreground "powder blue"))))
     (fg:erc-color-face5 ((t (:foreground "sky blue"))))
     (fg:erc-color-face6 ((t (:foreground "dark sea green"))))
     (fg:erc-color-face7 ((t (:foreground "pale green"))))
     (fg:erc-color-face8 ((t (:foreground "medium spring green"))))
     (fg:erc-color-face9 ((t (:foreground "khaki"))))
     (fixed ((t (:bold t :weight bold))))
     (fixed-pitch ((t (:family "courier"))))
     (flyspell-duplicate-face ((t (:bold t :foreground "Gold3" :underline t :weight bold))))
     (flyspell-incorrect-face ((t (:bold t :foreground "OrangeRed" :underline t :weight bold))))
     (font-lock-builtin-face ((t (:foreground "aquamarine"))))
     (font-lock-comment-face ((t (:foreground "light blue"))))
     (font-lock-constant-face ((t (:foreground "pale green"))))
     (font-lock-doc-face ((t (:foreground "light sky blue"))))
     (font-lock-doc-string-face ((t (:foreground "sky blue"))))
     (font-lock-function-name-face ((t (:bold t :foreground "aquamarine" :weight bold))))
     (font-lock-keyword-face ((t (:bold t :foreground "pale turquoise" :weight bold))))
     (font-lock-reference-face ((t (:foreground "pale green"))))
     (font-lock-string-face ((t (:foreground "light sky blue"))))
     (font-lock-type-face ((t (:bold t :foreground "sky blue" :weight bold))))
     (font-lock-variable-name-face ((t (:bold t :foreground "turquoise" :weight bold))))
     (font-lock-warning-face ((t (:bold t :foreground "Red" :weight bold))))
     (fringe ((t (:background "Grey15"))))
     (gnus-cite-face-1 ((t (:foreground "LightSalmon"))))
     (gnus-cite-face-2 ((t (:foreground "Khaki"))))
     (gnus-cite-face-3 ((t (:foreground "Coral"))))
     (gnus-cite-face-4 ((t (:foreground "yellow green"))))
     (gnus-cite-face-5 ((t (:foreground "dark khaki"))))
     (gnus-cite-face-6 ((t (:foreground "bisque"))))
     (gnus-cite-face-7 ((t (:foreground "peru"))))
     (gnus-cite-face-8 ((t (:foreground "light coral"))))
     (gnus-cite-face-9 ((t (:foreground "plum"))))
     (gnus-emphasis-bold ((t (:bold t :weight bold))))
     (gnus-emphasis-bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (gnus-emphasis-highlight-words ((t (:background "black" :foreground "yellow"))))
     (gnus-emphasis-italic ((t (:italic t :slant italic))))
     (gnus-emphasis-strikethru ((t (nil))))
     (gnus-emphasis-underline ((t (:underline t))))
     (gnus-emphasis-underline-bold ((t (:bold t :underline t :weight bold))))
     (gnus-emphasis-underline-bold-italic ((t (:italic t :bold t :underline t :slant italic :weight bold))))
     (gnus-emphasis-underline-italic ((t (:italic t :underline t :slant italic))))
     (gnus-group-mail-1-empty-face ((t (:foreground "White"))))
     (gnus-group-mail-1-face ((t (:bold t :foreground "White" :weight bold))))
     (gnus-group-mail-2-empty-face ((t (:foreground "light cyan"))))
     (gnus-group-mail-2-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-group-mail-3-empty-face ((t (:foreground "LightBlue"))))
     (gnus-group-mail-3-face ((t (:bold t :foreground "LightBlue" :weight bold))))
     (gnus-group-mail-low-empty-face ((t (:foreground "Aquamarine"))))
     (gnus-group-mail-low-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (gnus-group-news-1-empty-face ((t (:foreground "White"))))
     (gnus-group-news-1-face ((t (:bold t :foreground "White" :weight bold))))
     (gnus-group-news-2-empty-face ((t (:foreground "light cyan"))))
     (gnus-group-news-2-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-group-news-3-empty-face ((t (:foreground "LightBlue"))))
     (gnus-group-news-3-face ((t (:bold t :foreground "LightBlue" :weight bold))))
     (gnus-group-news-4-empty-face ((t (:foreground "Aquamarine"))))
     (gnus-group-news-4-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (gnus-group-news-5-empty-face ((t (:foreground "MediumAquamarine"))))
     (gnus-group-news-5-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-group-news-6-empty-face ((t (:foreground "MediumAquamarine"))))
     (gnus-group-news-6-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-group-news-low-empty-face ((t (:foreground "MediumAquamarine"))))
     (gnus-group-news-low-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-header-content-face ((t (:foreground "LightSkyBlue3"))))
     (gnus-header-from-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-header-name-face ((t (:bold t :foreground "LightBlue" :weight bold))))
     (gnus-header-newsgroups-face ((t (:italic t :bold t :foreground "MediumAquamarine" :slant italic :weight bold))))
     (gnus-header-subject-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-server-agent-face ((t (:bold t :foreground "PaleTurquoise" :weight bold))))
     (gnus-server-closed-face ((t (:italic t :foreground "Light Steel Blue" :slant italic))))
     (gnus-server-denied-face ((t (:bold t :foreground "Pink" :weight bold))))
     (gnus-server-offline-face ((t (:bold t :foreground "Yellow" :weight bold))))
     (gnus-server-opened-face ((t (:bold t :foreground "Green1" :weight bold))))
     (gnus-signature-face ((t (:foreground "Grey"))))
     (gnus-splash-face ((t (:foreground "ForestGreen"))))
     (gnus-summary-cancelled-face ((t (:background "Black" :foreground "Yellow"))))
     (gnus-summary-high-ancient-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-summary-high-read-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (gnus-summary-high-ticked-face ((t (:bold t :foreground "LightSalmon" :weight bold))))
     (gnus-summary-high-unread-face ((t (:italic t :bold t :foreground "beige" :slant italic :weight bold))))
     (gnus-summary-low-ancient-face ((t (:italic t :foreground "DimGray" :slant italic))))
     (gnus-summary-low-read-face ((t (:foreground "slate gray"))))
     (gnus-summary-low-ticked-face ((t (:foreground "Pink"))))
     (gnus-summary-low-unread-face ((t (:foreground "LightGray"))))
     (gnus-summary-normal-ancient-face ((t (:foreground "MediumAquamarine"))))
     (gnus-summary-normal-read-face ((t (:foreground "Aquamarine"))))
     (gnus-summary-normal-ticked-face ((t (:foreground "LightSalmon"))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-selected-face ((t (:underline t))))
     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (highlight ((t (:background "dark slate blue" :foreground "light blue"))))
     (highline-face ((t (:background "DeepSkyBlue4"))))
     (holiday-face ((t (:background "pink"))))
     (info-header-node ((t (:bold t :weight bold))))
     (info-header-xref ((t (:bold t :weight bold :foreground "sky blue"))))
     (info-menu-5 ((t (:underline t))))
     (info-menu-header ((t (:bold t :family "helv" :weight bold))))
     (info-node ((t (:bold t :weight bold))))
     (info-xref ((t (:bold t :foreground "sky blue" :weight bold))))
     (isearch ((t (:background "slate blue"))))
     (isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))
     (italic ((t (:foreground "sky blue"))))
     (jde-bug-breakpoint-cursor ((t (:background "brown" :foreground "cyan"))))
     (jde-bug-breakpoint-marker ((t (:background "yellow" :foreground "red"))))
     (jde-java-font-lock-api-face ((t (:foreground "light goldenrod"))))
     (jde-java-font-lock-bold-face ((t (:bold t :weight bold))))
     (jde-java-font-lock-code-face ((t (nil))))
     (jde-java-font-lock-constant-face ((t (:foreground "Aquamarine"))))
     (jde-java-font-lock-doc-tag-face ((t (:foreground "light coral"))))
     (jde-java-font-lock-italic-face ((t (:italic t :slant italic))))
     (jde-java-font-lock-link-face ((t (:foreground "blue" :underline t :slant normal))))
     (jde-java-font-lock-modifier-face ((t (:foreground "LightSteelBlue"))))
     (jde-java-font-lock-number-face ((t (:foreground "LightSalmon"))))
     (jde-java-font-lock-package-face ((t (:foreground "steelblue1"))))
     (jde-java-font-lock-pre-face ((t (nil))))
     (jde-java-font-lock-underline-face ((t (:underline t))))
     (makefile-space-face ((t (:background "hotpink"))))
     (menu ((t (:background "MidnightBlue" :foreground "Grey"))))
     (message-cited-text-face ((t (:foreground "LightSalmon"))))
     (message-header-cc-face ((t (:foreground "light cyan"))))
     (message-header-name-face ((t (:foreground "LightBlue"))))
     (message-header-newsgroups-face ((t (:italic t :bold t :foreground "MediumAquamarine" :slant italic :weight bold))))
     (message-header-other-face ((t (:foreground "MediumAquamarine"))))
     (message-header-subject-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (message-header-to-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (message-header-xheader-face ((t (:foreground "MediumAquamarine"))))
     (message-mml-face ((t (:foreground "ForestGreen"))))
     (message-separator-face ((t (:foreground "chocolate"))))
     (mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     (mouse ((t (:background "Grey"))))
     (region ((t (:background "DarkSlateBlue"))))
     (scroll-bar ((t (:background "grey75"))))
     (secondary-selection ((t (:background "steel blue"))))
     (semantic-dirty-token-face ((t (:background "gray10"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (show-paren-match-face ((t (:background "light slate blue" :foreground "white"))))
     (show-paren-mismatch-face ((t (:background "red" :foreground "white"))))
     (speedbar-button-face ((t (:foreground "seashell2"))))
     (speedbar-directory-face ((t (:foreground "seashell3"))))
     (speedbar-file-face ((t (:foreground "seashell4"))))
     (speedbar-highlight-face ((t (:background "dark slate blue" :foreground "wheat"))))
     (speedbar-selected-face ((t (:foreground "seashell1" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "antique white"))))
     (tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (widget-button-face ((t (:bold t :weight bold))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "light blue"))))
     (widget-field-face ((t (:background "RoyalBlue4" :foreground "wheat"))))
     (widget-inactive-face ((t (:foreground "dim gray"))))
     (widget-single-line-field-face ((t (:background "slate blue" :foreground "wheat"))))
     (woman-bold-face ((t (:bold t :foreground "sky blue" :weight bold))))
     (woman-italic-face ((t (:foreground "deep sky blue"))))
     (woman-unknown-face ((t (:foreground "LightSalmon"))))
     (zmacs-region ((t (:background "DarkSlateBlue")))))))

(color-theme-charcoal-black)

(autoload 'paredit-mode "paredit"
      "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))

(require 'iswitchb)
(iswitchb-mode 1)

;; end general customization


;;; begin miscellanous customizations

(defun insert-file-name (filename &optional args)
    "Insert name of file FILENAME into buffer after point.
  
  Prefixed with \\[universal-argument], expand the file name to
  its fully canocalized path.  See `expand-file-name'.
  
  Prefixed with \\[negative-argument], use relative path to file
  name from current directory, `default-directory'.  See
  `file-relative-name'.
  
  The default with no prefix is to insert the file name exactly as
  it appears in the minibuffer prompt."
    ;; Based on insert-file in Emacs -- ashawley 20080926
    (interactive "*fInsert file name: \nP")
    (cond ((eq '- args)
           (insert (file-relative-name filename)))
          ((not (null args))
           (insert (expand-file-name filename)))
          (t
           (insert filename))))

(global-set-key "\C-c\C-i" 'insert-file-name)

(defun forward-to-indent-same-line ()
  (interactive)
  (forward-to-indentation 0))

(define-key global-map (kbd "C-<tab>") 'forward-to-indent-same-line)

(defun trim-path (string)
  "Remove white spaces in beginning and ending of STRING.
White space here is any of: space, tab, emacs newline (line feed, ASCII 10)."
  (let (pos)
    (while
        (setq pos (string-match "/" string))
      (setq string (substring string (1+ pos))))
    string))

(defun my-insert-file-name (filename &optional args)
    "Insert name of file FILENAME into buffer after point.
  
  Prefixed with \\[universal-argument], expand the file name to
  its fully canocalized path.  See `expand-file-name'.
  
  Prefixed with \\[negative-argument], use relative path to file
  name from current directory, `default-directory'.  See
  `file-relative-name'.
  
  The default with no prefix is to insert the file name exactly as
  it appears in the minibuffer prompt."
    ;; Based on insert-file in Emacs -- ashawley 20080926
    (interactive "*fInsert file name: \nP")
    (cond ((eq '- args)
           (insert (file-relative-name filename)))
          ((not (null args))
           (insert (expand-file-name filename)))
          (t
           (insert (trim-path filename)))))

(defun copy-buffer-file-name ()
  "Insert name of current buffer into the kill ring."
  (interactive)
  (kill-new (expand-file-name (buffer-file-name))))

(global-set-key "\C-c\C-f" 'my-insert-file-name)
(global-set-key "\C-c\C-n" 'copy-buffer-file-name)
(global-set-key (kbd "M-<tab>") 'company-complete)
(global-set-key (kbd "M-.") 'find-tag-no-prompt)

(defun find-tag-immediately ()
  "Skip the prompt and jump straight to the definition of the tag under point."
  ;; copied from `find-tag-tag'
  (funcall (or find-tag-default-function
               (get major-mode 'find-tag-default-function)
               'find-tag-default)))
(global-set-key [(meta .)]
  (lambda () (interactive) (find-tag-other-window (find-tag-immediately))))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-<tab>") 'other-window)

(global-set-key [C-S-iso-lefttab] 
    (lambda ()
      (interactive)
      (other-window -1)))

;; (global-set-key [\C-tab]
;;         (lambda () 
;;           (interactive)
;;           (switch-to-buffer (other-buffer))))

(global-set-key (kbd "C-<previous>") 'other-window)

;;;  begin Ibuffer customization

(setq ibuffer-sorting-mode 'recency)
(setq ibuffer-expert t) ;;; don't ask when buffers get killed

;;;  end Ibuffer customization




;;; end miscellanous customizations

;; --------------- Begin Dired customization ------------------

(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
(autoload 'wdired-change-to-wdired-mode "wdired")
;;
;;
;;
(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            ;; Set dired-x global variables here.  For example:
            ;; (setq dired-guess-shell-gnutar "gtar")
            ;; (setq dired-x-hands-off-my-keys nil)
            (setq dired-omit-files 
                  (concat dired-omit-files "\\|^\\..+$"))
            ))

(add-hook 'dired-load-hook 
	  '(lambda () 
              (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
              (define-key dired-mode-map
                [menu-bar immediate wdired-change-to-wdired-mode]
                '("Edit File Names" . wdired-change-to-wdired-mode))))

(add-hook 'dired-mode-hook
               (lambda ()
                 ;; Set dired-x buffer-local variables here.  For example:
		 (setq dired-omit-files-p t)
;		 (setq dired-omit-files "\\|^\\..+$\\|^\\.?#\\|^\\.\\.$")
                 ))

(add-hook 'dired-load-hook
          '(lambda ()
             (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
             (define-key dired-mode-map (kbd "C-<return>") 'dired-open-snd-file)
             (define-key dired-mode-map
               [menu-bar immediate wdired-change-to-wdired-mode]
               '("Edit File Names" . wdired-change-to-wdired-mode))))


(defun dired-open-snd-file ()
  "Open the file where point is or the marked files in Dired with inf-snd Program."
  (interactive)
  (let* ((file-list
          (dired-get-marked-files)))
    (mapc
     (lambda (file-path)
       (snd-scheme-open-file file-path))
     file-list)))

(define-key dired-mode-map (kbd "C-<return>") 'dired-open-snd-file)

;          (setq dired-omit-files
;                (concat dired-omit-files "\\|^\\..+$"))


;;
;;
;;
;; --------------- End Dired customization -------------------

;; 
;; 
;; Type “M-x customize-group RET wdired” if you want make changes to 
;; the default behavior.


(defun dired-copy-filename ()
  "push the path and filename of the file under the point to the kill ring"
  (interactive)
  (let ((fname (dired-get-filename)))
    (kill-new fname)
    (message "added %s to kill ring" fname)))

(add-hook 'dired-mode-hook
          (lambda ()
            (define-key dired-mode-map "c" 'dired-copy-filename)))

(eval-after-load "dired"
  '(progn
     (define-key dired-mode-map "f" 'my-dired-find-file)
     (setq dired-dwim-target t)
     (defun my-dired-find-file (&optional arg)
       "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
       (interactive "P")
       (let* ((fn-list (dired-get-marked-files nil arg)))
         (mapc 'find-file fn-list)))))

;;; end dired customization

;;; begin lilypond customization

;;; (require 'lilypond-mode)

(eval-after-load "lilypond-mode" 
  '(progn
     (load-library "lyqi-mode")
     (define-key LilyPond-mode-map "\C-cq" 'lyqi-mode)))

(autoload 'LilyPond-mode "lilypond-mode")
(setq auto-mode-alist
      (cons '("\\.ly$" . LilyPond-mode) auto-mode-alist))

(add-hook 'LilyPond-mode-hook (lambda () (turn-on-font-lock)))

;;; end lilypond customization

;; ------------- begin snd customization ---------------------


;; (autoload 'run-snd-ruby     "inf-snd" "Start inferior Snd-Ruby process" t)
(autoload 'run-snd-scheme    "inf-snd" "Start inferior Snd-Scheme process" t)
;; (autoload 'run-snd-forth    "inf-snd" "Start inferior Snd-Forth process" t)
;; (autoload 'snd-ruby-mode    "inf-snd" "Load snd-ruby-mode." t)
(autoload 'snd-scheme-mode   "inf-snd" "Load snd-scheme-mode." t)
;; (autoload 'snd-forth-mode   "inf-snd" "Load snd-forth-mode." t)

(setq inf-snd-scheme-program-name "/usr/bin/snd")
(setq inf-snd-working-directory "~/.snd.d/")
;; (setq inf-snd-index-path "~/.snd.d/snd/")
;; (setq inf-snd-index-path "/home/orm/work/install/snd-15.2/")

(set-default 'auto-mode-alist
	     (append '(("\\.rbs$" . snd-ruby-mode)
                    ("\\.cms$" . snd-scheme-mode))
		     auto-mode-alist))




(require 'inf-snd)


;; ------------- end snd customization ---------------------


;;; begin lisp customization
(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "sbcl")

(slime-setup '(slime-fancy))
(setq slime-enable-evaluate-in-emacs t)
;;; Let slime handle all LISP files
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'lisp-mode-hook (lambda () (recentf-mode t)))
(add-hook 'lisp-mode-hook (lambda () (company-mode t)))
(add-hook 'lisp-mode-hook (lambda () (rainbow-delimiters-mode t)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode t)))

;;; lambda pretty-print:

(defun sm-greek-lambda ()
       (font-lock-add-keywords nil `(("\\<lambda\\>"
           (0 (progn (compose-region (match-beginning 0) (match-end 0)
           ,(make-char 'greek-iso8859-7 107))
                     nil))))))

(defun my-add-pretty-lambda ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955) ; λ
;;          ("->" . 8594)    ; →
;;          ("=>" . 8658)    ; ⇒
;;          ("map" . 8614)   ; ↦
          )))

(global-prettify-symbols-mode 1)

(add-hook 'lisp-mode-hook 'sm-greek-lambda)
(add-hook 'lisp-mode-hook 'my-add-pretty-lambda)

(defun join-next-line ()
  (interactive)
  (forward-line)
  (join-line))

;;; Use Common Lisp indentation (not ELISP)
(add-hook 'lisp-mode-hook (lambda () (set (make-local-variable lisp-indent-function)
					  'common-lisp-indent-function)
                            (define-key lisp-mode-map (kbd "M-<tab>") 'company-complete)
                            (define-key lisp-mode-map (kbd "C-^") 'join-next-line)))

(setq slime-complete-symbol-function (quote slime-fuzzy-complete-symbol))

(setq slime-conservative-indentation nil)

(setq slime-display-compilation-output nil)

;;; Treat square brackets like round ones (useful for
;;; CLSQL syntax)
(modify-syntax-entry ?\[ "(]" lisp-mode-syntax-table)
(modify-syntax-entry ?\] ")[" lisp-mode-syntax-table)

(modify-syntax-entry ?# "' 14bp" lisp-mode-syntax-table)
(modify-syntax-entry ?| "_ 23b" lisp-mode-syntax-table)
(modify-syntax-entry ?\n ">a" lisp-mode-syntax-table)	
(global-set-key (kbd "C-c s") 'slime-selector)


(defun slime-description-fontify ()
  "Fontify sections of SLIME Description."
  (with-current-buffer "*slime-description*"
    (highlight-regexp
     (concat "function:\\|"
             "Lambda-list:\\|"
             "symbol\\|"
             "Derived type:\\|"
             "Documentation:\\|"
             "Source file:"
             )
     'hi-green-b)))

;;    "Source file:"
;;    "Derived type:"
;;             "^Macro-function:\\|"

;; 
             ;; "^Its associated name.+?) is\\|"
             ;; "^The .+'s arguments are:\\|"
             ;; "^ *Its.+\\(is\\|are\\):\\|"
;;             "list"


(defadvice slime-show-description (after slime-description-fontify activate)
  "Fontify sections of SLIME Description."
  (slime-description-fontify))


(add-hook 'slime-repl-mode-hook (lambda () (company-mode t)))
(add-hook 'slime-repl-mode-hook (lambda () (rainbow-delimiters-mode t)))
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode t)))

(defun slime-eval-last-expression-in-repl (prefix)
  "Evaluates last expression in the Slime REPL.

Switches REPL to current package of the source buffer for the duration. If
used with a prefix argument (C-u), doesn't switch back afterwards."
  (interactive "P")
  (let ((expr (slime-last-expression))
        (buffer-name (buffer-name (current-buffer)))
        (new-package (slime-current-package))
        (old-package (slime-lisp-package))
        (slime-repl-suppress-prompt t)
        (yank-back nil))
    (with-current-buffer (slime-output-buffer)
      (unless (eq (current-buffer) (window-buffer))
        (pop-to-buffer (current-buffer) t))
      (goto-char (point-max))
      ;; Kill pending input in the REPL
      (when (< (marker-position slime-repl-input-start-mark) (point))
        (kill-region slime-repl-input-start-mark (point))
        (setq yank-back t))
      (unwind-protect
          (progn
            (insert-before-markers (format "\n;;; from %s\n" buffer-name))
            (when new-package
              (slime-repl-set-package new-package))
            (let ((slime-repl-suppress-prompt nil))
              (slime-repl-insert-prompt))
            (insert expr)
            (slime-repl-return))
        (unless (or prefix (equal (slime-lisp-package) old-package))
          ;; Switch back.
          (slime-repl-set-package old-package)
          (let ((slime-repl-suppress-prompt nil))
            (slime-repl-insert-prompt))))
      ;; Put pending input back.
      (when yank-back
        (yank)))))

(defun slime-eval-last-expression ()
  "Evaluate the expression preceding point."
  (interactive)
  (slime-interactive-eval (slime-last-expression)))

;; ---- Begin Presentation mode -------------

(defun slime-send-dwim (arg)
  "Send the appropriate forms to CL to be evaluated."
  (interactive "P")
  (save-excursion
    (cond 
      ;;Region selected - evaluate region
      ((not (equal mark-active nil))
       (copy-region-as-kill (mark) (point)))
      ;; At/before sexp - evaluate next sexp
      ((or (looking-at "\s(")
	   (save-excursion
	     (ignore-errors (forward-char 1))
	     (looking-at "\s(")))
       (forward-list 1)
       (let ((end (point))
	     (beg (save-excursion
		    (backward-list 1)
		    (point))))
	 (copy-region-as-kill beg end)))
      ;; At/after sexp - evaluate last sexp
      ((or (looking-at "\s)")
	   (save-excursion
	     (backward-char 1)
	     (looking-at "\s)")))
       (if (looking-at "\s)")
	   (forward-char 1))
       (let ((end (point))
	     (beg (save-excursion
		    (backward-list 1)
		    (point))))
	 (copy-region-as-kill beg end)))
      ;; Default - evaluate enclosing top-level sexp
      (t (progn
	   (while (ignore-errors (progn
				   (backward-up-list)
				   t)))
	   (forward-list 1)
	   (let ((end (point))
		 (beg (save-excursion
			(backward-list 1)
			(point))))
	     (copy-region-as-kill beg end)))))
    (set-buffer (slime-output-buffer))
    (unless (eq (current-buffer) (window-buffer))
      (pop-to-buffer (current-buffer) t))
    (goto-char (point-max))
    (yank)
    (if arg (progn
	      (slime-repl-return)
	      (other-window 1)))))

(define-key slime-mode-map "\C-c\C-v" 'slime-send-dwim)
(define-key slime-mode-map [f8] '(lambda ()
				  (interactive)
				  (slime-send-dwim 1)))
(setq slime-use-autodoc-mode t)
(slime-setup '(slime-fancy slime-tramp slime-asdf slime-autodoc slime-listener-hooks))

;;; local hyperspec browsing, which was installed via quicklisp:  (ql:quickload "clhs")

(load "/home/admin/quicklisp/clhs-use-local.el" t)


;; (slime-require :swank-listener-hooks)

(defun incudine-hush ()
  (interactive)
  (progn
    (slime-interactive-eval "(incudine:flush-pending)")
    (slime-interactive-eval "(incudine:node-free-all)")))

(defun incudine-rt-start ()
  (interactive)
  (slime-interactive-eval "(incudine:rt-start)"))

(defun incudine-rt-stop ()
  (interactive)
  (slime-interactive-eval "(incudine:rt-stop)"))


(require 'browse-cltl2)

(define-key lisp-mode-map (kbd "C-.") 'incudine-hush)
(define-key lisp-mode-map (kbd "C-c C-.") 'incudine-rt-stop)
(define-key lisp-mode-map (kbd "C-c M-.") 'incudine-rt-start)
(define-key lisp-mode-map (kbd "C-c C-d l") 'cltl2-view-function-definition)

(slime)

(setq slime-net-coding-system 'utf-8-unix)
;;; one key slime startup
(global-set-key "\C-x\C-l" 'slime)
(global-set-key "\C-x\L"   'slime)

;;; end lisp customization

;;; custom common music menus for slime

(add-to-list 'load-path "~/quicklisp/local-projects/cm/etc/emacs/")

(require 'cm)

;;;
;;;
;;; End common music configuration


;;;; ------ Begin  supercollider initialization -------


(require 'w3m)
(eval-after-load "w3m"
  '(progn
     (define-key  w3m-mode-map [left] 'backward-char)
     (define-key w3m-mode-map [right] 'forward-char)
     (define-key w3m-mode-map [up] 'previous-line)
     (define-key w3m-mode-map [down] 'next-line)))

(require 'sclang)
 

;;;; ------ End  supercollider initialization -------

;;;; begin ido customization
;;;; ido-mode

(ido-mode t)

;; (require 'ido)
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
 
;; This tab override shouldn't be necessary given ido's default 
;; configuration, but minibuffer-complete otherwise dominates the 
;; tab binding because of my custom tab-completion-everywhere 
;; configuration.

(setq enable-recursive-minibuffers t)
;;; (define-key ido-file-dir-completion-map [(meta control ?b)] 'ido-goto-bookmark)



(setq ido-use-virtual-buffers t)

(defun ido-goto-bookmark (bookmark)
  (interactive
   (list (bookmark-completing-read "Jump to bookmark"
      				   bookmark-current-bookmark)))
  (unless bookmark
    (error "No bookmark specified"))
  (let ((filename (bookmark-get-filename bookmark)))
    (if (file-directory-p filename)
  	(progn
  	  (ido-set-current-directory filename)
  	  (setq ido-text ""))
      (progn
  	(ido-set-current-directory (file-name-directory filename))))
    (setq ido-exit        'refresh
  	  ido-text-init   ido-text
  	  ido-rotate-temp t)
    (exit-minibuffer)))

(require 'igrep)

(require 'recentf)
(setq recentf-auto-cleanup 'never) ;; disable before we start recentf!
(recentf-mode +1)
(global-set-key "\C-xf" 'recentf-open-files)

;;;; begin ido customization

;;; final startup tasks

(server-start)
(message "emacs server started") ;end window-system cond.


;;; begin  customization
;;; end  customization
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company w3m ido-ubiquitous el-swank-fuzzy rainbow-delimiters paredit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "Grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "unknown" :family "Droid Sans Mono"))))
 '(berlin-face ((((class color)) (:background "LightBlue" :foreground "black"))))
 '(eval-sexp-fu-flash ((t (:background "royal blue" :foreground "white" :weight bold))))
 '(ferien-face ((((class color)) (:background "yellowgreen" :foreground "black"))))
 '(holiday ((t (:background "pink" :foreground "black"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark gray"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green yellow"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "yellow1"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "gold3"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "orange3"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "DarkOrange4")))))

