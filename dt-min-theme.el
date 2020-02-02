;;; dt-min-theme.el --- A color theme for Emacs, from the darkness... it watches

;; Copyright (c) 2015-2016 Jason Milkins (GNU/GPL Licence)

;; Authors: Jason Milkins <jasonm23@gmail.com>
;; URL: http://github.com/emacsfodder/emacs-theme-dt-min
;; Version: 0.1.66

;;; Commentary:
;;  A color theme for Emacs, from the darkness... it watches

;;  Since 0.1.60 : includes `dt-min-modeline'

;;; Code:

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(deftheme dt-min "A color theme for Emacs, from the darkness... it watches")

(let (
      (dt-min-dark0_hard      (if (display-graphic-p) "#1D2021" "color-234"))
      (dt-min-dark0           (if (display-graphic-p) "#282828" "color-235"))
      (dt-min-dark0_soft      (if (display-graphic-p) "#32302F" "color-236"))
      (dt-min-dark1           (if (display-graphic-p) "#3C3836" "color-237"))
      (dt-min-dark2           (if (display-graphic-p) "#504945" "color-239"))
      (dt-min-dark3           (if (display-graphic-p) "#665C54" "color-241"))
      (dt-min-dark4           (if (display-graphic-p) "#7C6F64" "color-243"))

      (dt-min-medium          (if (display-graphic-p) "#928374" "color-245")) ;; or 244

      (dt-min-light0_hard     (if (display-graphic-p) "#FFFFC8" "color-230"))
      (dt-min-light0          (if (display-graphic-p) "#FDF4C1" "color-229"))
      (dt-min-light0_soft     (if (display-graphic-p) "#F4E8BA" "color-228"))
      (dt-min-light1          (if (display-graphic-p) "#EBDBB2" "color-223"))
      (dt-min-light2          (if (display-graphic-p) "#D5C4A1" "color-250"))
      (dt-min-light3          (if (display-graphic-p) "#BDAE93" "color-248"))
      (dt-min-light4          (if (display-graphic-p) "#A89984" "color-246"))

      (dt-min-bright_red      (if (display-graphic-p) "#FB4933" "color-167"))
      (dt-min-bright_green    (if (display-graphic-p) "#B8BB26" "color-142"))
      (dt-min-bright_yellow   (if (display-graphic-p) "#FABD2F" "color-214"))
      (dt-min-bright_blue     (if (display-graphic-p) "#83A598" "color-109"))
      (dt-min-bright_purple   (if (display-graphic-p) "#D3869B" "color-175"))
      (dt-min-bright_aqua     (if (display-graphic-p) "#8EC07C" "color-108"))
      (dt-min-bright_orange   (if (display-graphic-p) "#FE8019" "color-208"))
      (dt-min-bright_cyan     (if (display-graphic-p) "#3FD7E5" "color-45"))

      ;; neutral, no 256-color code, requested, nice work-around meanwhile
      (dt-min-neutral_red     (if (display-graphic-p) "#FB4934" "#D75F5F"))
      (dt-min-neutral_green   (if (display-graphic-p) "#B8BB26" "#73AF00"))
      (dt-min-neutral_yellow  (if (display-graphic-p) "#FABD2F" "#FFAF00"))
      (dt-min-neutral_blue    (if (display-graphic-p) "#83A598" "#87AFAF"))
      (dt-min-neutral_purple  (if (display-graphic-p) "#D3869B" "#D787AF"))
      (dt-min-neutral_aqua    (if (display-graphic-p) "#8EC07C" "#87AF87"))
      (dt-min-neutral_orange  (if (display-graphic-p) "#FE8019" "#FF8700"))
      (dt-min-neutral_cyan    (if (display-graphic-p) "#17CCD5" "#17CCD5"))

      (dt-min-faded_red       (if (display-graphic-p) "#9D0006" "color-88"))
      (dt-min-faded_green     (if (display-graphic-p) "#79740E" "color-100"))
      (dt-min-faded_yellow    (if (display-graphic-p) "#B57614" "color-136"))
      (dt-min-faded_blue      (if (display-graphic-p) "#076678" "color-24"))
      (dt-min-faded_purple    (if (display-graphic-p) "#8F3F71" "color-96"))
      (dt-min-faded_aqua      (if (display-graphic-p) "#427B58" "color-66"))
      (dt-min-faded_orange    (if (display-graphic-p) "#AF3A03" "color-130"))
      (dt-min-faded_cyan      (if (display-graphic-p) "#00A7AF" "color-37"))

      (dt-min-muted_red       (if (display-graphic-p) "#901A1E" "color-88"))
      (dt-min-muted_green     (if (display-graphic-p) "#556C21" "color-100"))
      (dt-min-muted_yellow    (if (display-graphic-p) "#A87933" "color-136"))
      (dt-min-muted_blue      (if (display-graphic-p) "#1B5C6B" "color-24"))
      (dt-min-muted_purple    (if (display-graphic-p) "#82526E" "color-96"))
      (dt-min-muted_aqua      (if (display-graphic-p) "#506E59" "color-66"))
      (dt-min-muted_orange    (if (display-graphic-p) "#A24921" "color-130"))
      (dt-min-muted_cyan      (if (display-graphic-p) "#18A7AF" "color-37"))

      (dt-min-dark_red        (if (display-graphic-p) "#421E1E" "color-52"))
      (dt-min-dark_green      (if (display-graphic-p) "#232B0F" "color-22"))
      (dt-min-dark_yellow     (if (display-graphic-p) "#4D3B27" "color-3"))
      (dt-min-dark_blue       (if (display-graphic-p) "#2B3C44" "color-4"))
      (dt-min-dark_purple     (if (display-graphic-p) "#4E3D45" "color-57"))
      (dt-min-dark_aqua       (if (display-graphic-p) "#36473A" "color-23"))
      (dt-min-dark_orange     (if (display-graphic-p) "#613620" "color-130"))
      (dt-min-dark_cyan       (if (display-graphic-p) "#205161" "color-24"))

      (dt-min-mid_red         (if (display-graphic-p) "#3F1B1B" "color-52"))
      (dt-min-mid_green       (if (display-graphic-p) "#1F321C" "color-22"))
      (dt-min-mid_yellow      (if (display-graphic-p) "#4C3A25" "color-3"))
      (dt-min-mid_blue        (if (display-graphic-p) "#30434C" "color-4"))
      (dt-min-mid_purple      (if (display-graphic-p) "#4C3B43" "color-57"))
      (dt-min-mid_aqua        (if (display-graphic-p) "#394C3D" "color-23"))
      (dt-min-mid_orange      (if (display-graphic-p) "#603000" "color-130"))
      (dt-min-mid_cyan        (if (display-graphic-p) "#005560" "color-24"))

      (dt-min-delimiter-one   (if (display-graphic-p) "#5C7E81" "color-66"))
      (dt-min-delimiter-two   (if (display-graphic-p) "#837486" "color-102"))
      (dt-min-delimiter-three (if (display-graphic-p) "#9C6F68" "color-94"))
      (dt-min-delimiter-four  (if (display-graphic-p) "#7B665C" "color-137"))

      ;; 24 bit has tints from light0 and terminal cycles through
      ;; the 4 dt-min-delimiter colors
      (dt-min-identifiers-1   (if (display-graphic-p) "#E5D5C5" "color-66"))
      (dt-min-identifiers-2   (if (display-graphic-p) "#DFE5C5" "color-102"))
      (dt-min-identifiers-3   (if (display-graphic-p) "#D5E5C5" "color-94"))
      (dt-min-identifiers-4   (if (display-graphic-p) "#CAE5C5" "color-137"))
      (dt-min-identifiers-5   (if (display-graphic-p) "#C5E5CA" "color-66"))
      (dt-min-identifiers-6   (if (display-graphic-p) "#C5E5D5" "color-102"))
      (dt-min-identifiers-7   (if (display-graphic-p) "#C5E5DF" "color-94"))
      (dt-min-identifiers-8   (if (display-graphic-p) "#C5DFE5" "color-137"))
      (dt-min-identifiers-9   (if (display-graphic-p) "#C5D5E5" "color-66"))
      (dt-min-identifiers-10  (if (display-graphic-p) "#C5CAE5" "color-102"))
      (dt-min-identifiers-11  (if (display-graphic-p) "#CAC5E5" "color-94"))
      (dt-min-identifiers-12  (if (display-graphic-p) "#D5C5E5" "color-137"))
      (dt-min-identifiers-13  (if (display-graphic-p) "#DFC5E5" "color-66"))
      (dt-min-identifiers-14  (if (display-graphic-p) "#E5C5DF" "color-102"))
      (dt-min-identifiers-15  (if (display-graphic-p) "#E5C5D5" "color-94"))

      (dt-min-white           (if (display-graphic-p) "#FFFFFF" "white"))
      (dt-min-black           (if (display-graphic-p) "#000000" "black"))
      (dt-min-sienna          (if (display-graphic-p) "#DD6F48" "sienna"))
      (dt-min-darkslategray4  (if (display-graphic-p) "#528B8B" "DarkSlateGray4"))
      (dt-min-lightblue4      (if (display-graphic-p) "#66999D" "LightBlue4"))
      (dt-min-burlywood4      (if (display-graphic-p) "#BBAA97" "burlywood4"))
      (dt-min-aquamarine4     (if (display-graphic-p) "#83A598" "aquamarine4"))
      (dt-min-turquoise4      (if (display-graphic-p) "#61ACBB" "turquoise4"))
      )

  (custom-theme-set-faces
   'dt-min

   ;; UI
   `(default                                   ((t (:foreground ,dt-min-light0 :background ,dt-min-dark0))))
   `(cursor                                    ((t (:background ,dt-min-light0))))
   `(link                                      ((t (:foreground ,dt-min-bright_blue :underline t))))
   `(link-visited                              ((t (:foreground ,dt-min-bright_blue :underline nil))))

   `(mode-line                                 ((t (:foreground ,dt-min-light1 :background ,dt-min-dark0_hard :box nil))))
   `(mode-line-inactive                        ((t (:foreground ,dt-min-light4 :background ,dt-min-dark2 :box nil))))
   `(fringe                                    ((t (:background ,dt-min-dark0))))
   `(linum                                     ((t (:foreground ,dt-min-dark4))))
   `(hl-line                                   ((t (:background ,dt-min-dark_purple))))
   `(region                                    ((t (:background ,dt-min-mid_blue :distant-foreground ,dt-min-light0))))
   `(secondary-selection                       ((t (:background ,dt-min-dark_blue))))
   `(cua-rectangle                             ((t (:background ,dt-min-mid_blue))))
   `(header-line                               ((t (:foreground ,dt-min-turquoise4 :background ,dt-min-dark0 :bold nil))))
   `(minibuffer-prompt                         ((t (:foreground ,dt-min-bright_cyan :background ,dt-min-dark0 :bold nil))))

   ;; compilation messages (also used by several other modes)
   `(compilation-info                          ((t (:foreground ,dt-min-neutral_green))))
   `(compilation-mode-line-fail                ((t (:foreground ,dt-min-neutral_red))))
   `(error                                     ((t (:foreground ,dt-min-bright_orange :bold t))))
   `(success                                   ((t (:foreground ,dt-min-neutral_green :bold t))))
   `(warning                                   ((t (:foreground ,dt-min-bright_red :bold t))))

   ;; Built-in syntax
   `(font-lock-builtin-face                    ((t (:foreground ,dt-min-light0))))
   `(font-lock-constant-face                   ((t (:foreground ,dt-min-burlywood4))))
   `(font-lock-comment-face                    ((t (:foreground ,dt-min-dark4))))
   `(font-lock-function-name-face              ((t (:foreground ,dt-min-light4))))
   `(font-lock-keyword-face                    ((t (:foreground ,dt-min-light0))))
   `(font-lock-string-face                     ((t (:foreground ,dt-min-darkslategray4))))
   `(font-lock-variable-name-face              ((t (:foreground ,dt-min-aquamarine4))))
   `(font-lock-type-face                       ((t (:foreground ,dt-min-lightblue4))))
   `(font-lock-warning-face                    ((t (:foreground ,dt-min-neutral_red :bold t))))

   ;; MODE SUPPORT: elixir-mode
   `(elixir-atom-face                          ((t (:foreground ,dt-min-lightblue4))))
   `(elixir-attribute-face                     ((t (:foreground ,dt-min-burlywood4))))

   ;; MODE SUPPORT: whitespace-mode
   `(whitespace-space                          ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))
   `(whitespace-hspace                         ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))
   `(whitespace-tab                            ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))
   `(whitespace-newline                        ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))
   `(whitespace-trailing                       ((t (:foreground ,dt-min-neutral_red :background ,dt-min-dark1))))
   `(whitespace-line                           ((t (:foreground ,dt-min-neutral_red :background ,dt-min-dark1))))
   `(whitespace-space-before-tab               ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))
   `(whitespace-indentation                    ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))
   `(whitespace-empty                          ((t (:foreground nil :background nil))))
   `(whitespace-space-after-tab                ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0))))

   ;; MODE SUPPORT: rainbow-delimiters
   `(rainbow-delimiters-depth-1-face           ((t (:foreground ,dt-min-delimiter-one))))
   `(rainbow-delimiters-depth-2-face           ((t (:foreground ,dt-min-delimiter-two))))
   `(rainbow-delimiters-depth-3-face           ((t (:foreground ,dt-min-delimiter-three))))
   `(rainbow-delimiters-depth-4-face           ((t (:foreground ,dt-min-delimiter-four))))
   `(rainbow-delimiters-depth-5-face           ((t (:foreground ,dt-min-delimiter-one))))
   `(rainbow-delimiters-depth-6-face           ((t (:foreground ,dt-min-delimiter-two))))
   `(rainbow-delimiters-depth-7-face           ((t (:foreground ,dt-min-delimiter-three))))
   `(rainbow-delimiters-depth-8-face           ((t (:foreground ,dt-min-delimiter-four))))
   `(rainbow-delimiters-depth-9-face           ((t (:foreground ,dt-min-delimiter-one))))
   `(rainbow-delimiters-depth-10-face          ((t (:foreground ,dt-min-delimiter-two))))
   `(rainbow-delimiters-depth-11-face          ((t (:foreground ,dt-min-delimiter-three))))
   `(rainbow-delimiters-depth-12-face          ((t (:foreground ,dt-min-delimiter-four))))
   `(rainbow-delimiters-unmatched-face         ((t (:foreground ,dt-min-light0 :background nil))))

   ;; MODE SUPPORT: rainbow-identifiers
   `(rainbow-identifiers-identifier-1          ((t (:foreground ,dt-min-identifiers-1))))
   `(rainbow-identifiers-identifier-2          ((t (:foreground ,dt-min-identifiers-2))))
   `(rainbow-identifiers-identifier-3          ((t (:foreground ,dt-min-identifiers-3))))
   `(rainbow-identifiers-identifier-4          ((t (:foreground ,dt-min-identifiers-4))))
   `(rainbow-identifiers-identifier-5          ((t (:foreground ,dt-min-identifiers-5))))
   `(rainbow-identifiers-identifier-6          ((t (:foreground ,dt-min-identifiers-6))))
   `(rainbow-identifiers-identifier-7          ((t (:foreground ,dt-min-identifiers-7))))
   `(rainbow-identifiers-identifier-8          ((t (:foreground ,dt-min-identifiers-8))))
   `(rainbow-identifiers-identifier-9          ((t (:foreground ,dt-min-identifiers-9))))
   `(rainbow-identifiers-identifier-10         ((t (:foreground ,dt-min-identifiers-10))))
   `(rainbow-identifiers-identifier-11         ((t (:foreground ,dt-min-identifiers-11))))
   `(rainbow-identifiers-identifier-12         ((t (:foreground ,dt-min-identifiers-12))))
   `(rainbow-identifiers-identifier-13         ((t (:foreground ,dt-min-identifiers-13))))
   `(rainbow-identifiers-identifier-14         ((t (:foreground ,dt-min-identifiers-14))))
   `(rainbow-identifiers-identifier-15         ((t (:foreground ,dt-min-identifiers-15))))

   ;; MODE SUPPORT: ido
   `(ido-indicator                             ((t (:background ,dt-min-bright_red :foreground ,dt-min-bright_yellow))))
   `(ido-subdir                                ((t (:foreground ,dt-min-light3))))
   `(ido-first-match                           ((t (:foreground ,dt-min-faded_cyan :background ,dt-min-dark0_hard))))
   `(ido-only-match                            ((t (:foreground ,dt-min-darkslategray4))))
   `(ido-vertical-match-face                   ((t (:bold t))))
   `(ido-vertical-only-match-face              ((t (:foreground ,dt-min-bright_cyan))))
   `(ido-vertical-first-match-face             ((t (:foreground ,dt-min-bright_cyan :background ,dt-min-dark_blue))))

   ;; MODE SUPPORT: linum-relative
   `(linum-relative-current-face               ((t (:foreground ,dt-min-light4 :background ,dt-min-dark1))))

   ;; MODE SUPPORT: highlight-indentation-mode
   `(highlight-indentation-current-column-face ((t (:background ,dt-min-dark4))))
   `(highlight-indentation-face                ((t (:background ,dt-min-dark1))))

   ;; MODE SUPPORT: highlight-numbers
   `(highlight-numbers-number                  ((t (:foreground ,dt-min-bright_purple :bold nil))))

   ;; MODE SUPPORT: highlight-symbol
   `(highlight-symbol-face                     ((t (:foreground ,dt-min-neutral_purple))))

   ;; MODE SUPPORT: hi-lock
   `(hi-blue                                   ((t (:foreground ,dt-min-dark0_hard :background ,dt-min-bright_blue ))))
   `(hi-green                                  ((t (:foreground ,dt-min-dark0_hard :background ,dt-min-bright_green ))))
   `(hi-pink                                   ((t (:foreground ,dt-min-dark0_hard :background ,dt-min-bright_purple ))))
   `(hi-yellow                                 ((t (:foreground ,dt-min-dark0_hard :background ,dt-min-bright_yellow ))))
   `(hi-blue-b                                 ((t (:foreground ,dt-min-bright_blue :bold t ))))
   `(hi-green-b                                ((t (:foreground ,dt-min-bright_green :bold t ))))
   `(hi-red-b                                  ((t (:foreground ,dt-min-bright_red :bold t  ))))
   `(hi-black-b                                ((t (:foreground ,dt-min-bright_orange :background ,dt-min-dark0_hard :bold t  ))))
   `(hi-black-hb                               ((t (:foreground ,dt-min-bright_cyan :background ,dt-min-dark0_hard :bold t  ))))

   ;; MODE SUPPORT: smartparens
   `(sp-pair-overlay-face                      ((t (:background ,dt-min-dark2))))
   `(sp-show-pair-match-face                   ((t (:background ,dt-min-dark2)))) ;; Pair tags highlight
   `(sp-show-pair-mismatch-face                ((t (:background ,dt-min-neutral_red)))) ;; Highlight for bracket without pair

   ;; MODE SUPPORT: auctex
   `(font-latex-math-face                      ((t (:foreground ,dt-min-lightblue4))))
   `(font-latex-sectioning-5-face              ((t (:foreground ,dt-min-neutral_green))))
   `(font-latex-string-face                    ((t (:inherit font-lock-string-face))))
   `(font-latex-warning-face                   ((t (:inherit warning))))

   ;; MODE SUPPORT: elscreen
   `(elscreen-tab-background-face              ((t (:background ,dt-min-dark0 :box nil)))) ;; Tab bar, not the tabs
   `(elscreen-tab-control-face                 ((t (:foreground ,dt-min-neutral_red :background ,dt-min-dark2 :box nil :underline nil)))) ;; The controls
   `(elscreen-tab-current-screen-face          ((t (:foreground ,dt-min-dark0 :background ,dt-min-dark4 :box nil)))) ;; Current tab
   `(elscreen-tab-other-screen-face            ((t (:foreground ,dt-min-light4 :background ,dt-min-dark2 :box nil :underline nil)))) ;; Inactive tab

   ;; MODE SUPPORT: embrace
   `(embrace-help-pair-face                    ((t (:foreground ,dt-min-bright_blue))))
   `(embrace-help-separator-face               ((t (:foreground ,dt-min-bright_orange))))
   `(embrace-help-key-face                     ((t (:weight bold ,dt-min-bright_green))))
   `(embrace-help-mark-func-face               ((t (:foreground ,dt-min-bright_cyan))))

   ;; MODE SUPPORT: ag (The Silver Searcher)
   `(ag-hit-face                               ((t (:foreground ,dt-min-neutral_blue))))
   `(ag-match-face                             ((t (:foreground ,dt-min-neutral_red))))

   ;; MODE SUPPORT: RipGrep
   `(ripgrep-hit-face                          ((t (:inherit ag-hit-face))))
   `(ripgrep-match-face                        ((t (:inherit ag-match-face))))

   ;; MODE SUPPORT: diff
   `(diff-changed                              ((t (:foreground ,dt-min-light1 :background nil))))
   `(diff-added                                ((t (:foreground ,dt-min-neutral_green :background nil))))
   `(diff-removed                              ((t (:foreground ,dt-min-neutral_red :background nil))))

   ;; MODE SUPPORT: diff-indicator
   `(diff-indicator-changed                    ((t (:inherit diff-changed))))
   `(diff-indicator-added                      ((t (:inherit diff-added))))
   `(diff-indicator-removed                    ((t (:inherit diff-removed))))

   ;; MODE SUPPORT: diff-hl
   `(diff-hl-change                            ((t (:inherit diff-changed))))
   `(diff-hl-delete                            ((t (:inherit diff-removed))))
   `(diff-hl-insert                            ((t (:inherit diff-added))))

   `(js2-warning                               ((t (:underline (:color ,dt-min-bright_yellow :style wave)))))
   `(js2-error                                 ((t (:underline (:color ,dt-min-bright_red :style wave)))))
   `(js2-external-variable                     ((t (:underline (:color ,dt-min-bright_aqua :style wave)))))
   `(js2-jsdoc-tag                             ((t (:foreground ,dt-min-medium :background nil))))
   `(js2-jsdoc-type                            ((t (:foreground ,dt-min-light4 :background nil))))
   `(js2-jsdoc-value                           ((t (:foreground ,dt-min-light3 :background nil))))
   `(js2-function-param                        ((t (:foreground ,dt-min-bright_aqua :background nil))))
   `(js2-function-call                         ((t (:foreground ,dt-min-bright_blue :background nil))))
   `(js2-instance-member                       ((t (:foreground ,dt-min-bright_orange :background nil))))
   `(js2-private-member                        ((t (:foreground ,dt-min-faded_yellow :background nil))))
   `(js2-private-function-call                 ((t (:foreground ,dt-min-faded_aqua :background nil))))
   `(js2-jsdoc-html-tag-name                   ((t (:foreground ,dt-min-light4 :background nil))))
   `(js2-jsdoc-html-tag-delimiter              ((t (:foreground ,dt-min-light3 :background nil))))

   ;; MODE SUPPORT: haskell
   `(haskell-interactive-face-compile-warning  ((t (:underline (:color ,dt-min-bright_yellow :style wave)))))
   `(haskell-interactive-face-compile-error    ((t (:underline (:color ,dt-min-bright_red :style wave)))))
   `(haskell-interactive-face-garbage          ((t (:foreground ,dt-min-dark4 :background nil))))
   `(haskell-interactive-face-prompt           ((t (:foreground ,dt-min-light0 :background nil))))
   `(haskell-interactive-face-result           ((t (:foreground ,dt-min-light3 :background nil))))
   `(haskell-literate-comment-face             ((t (:foreground ,dt-min-light0 :background nil))))
   `(haskell-pragma-face                       ((t (:foreground ,dt-min-medium :background nil))))
   `(haskell-constructor-face                  ((t (:foreground ,dt-min-neutral_aqua :background nil))))

   ;; MODE SUPPORT: org-mode
   `(org-agenda-date-today                     ((t (:foreground ,dt-min-light2 :slant italic :weight bold))) t)
   `(org-agenda-structure                      ((t (:inherit font-lock-comment-face))))
   `(org-archived                              ((t (:foreground ,dt-min-light0 :weight bold))))
   `(org-checkbox                              ((t (:foreground ,dt-min-light2 :background ,dt-min-dark0 :box (:line-width 1 :style released-button)))))
   `(org-date                                  ((t (:foreground ,dt-min-faded_blue :underline t))))
   `(org-deadline-announce                     ((t (:foreground ,dt-min-faded_red))))
   `(org-done                                  ((t (:foreground ,dt-min-bright_green :bold t :weight bold))))
   `(org-formula                               ((t (:foreground ,dt-min-bright_yellow))))
   `(org-headline-done                         ((t (:foreground ,dt-min-bright_green))))
   `(org-hide                                  ((t (:foreground ,dt-min-dark0))))
   `(org-level-1                               ((t (:foreground ,dt-min-bright_orange))))
   `(org-level-2                               ((t (:foreground ,dt-min-bright_green))))
   `(org-level-3                               ((t (:foreground ,dt-min-bright_blue))))
   `(org-level-4                               ((t (:foreground ,dt-min-bright_yellow))))
   `(org-level-5                               ((t (:foreground ,dt-min-faded_aqua))))
   `(org-level-6                               ((t (:foreground ,dt-min-bright_green))))
   `(org-level-7                               ((t (:foreground ,dt-min-bright_red))))
   `(org-level-8                               ((t (:foreground ,dt-min-bright_blue))))
   `(org-link                                  ((t (:foreground ,dt-min-bright_yellow :underline t))))
   `(org-scheduled                             ((t (:foreground ,dt-min-bright_green))))
   `(org-scheduled-previously                  ((t (:foreground ,dt-min-bright_red))))
   `(org-scheduled-today                       ((t (:foreground ,dt-min-bright_blue))))
   `(org-sexp-date                             ((t (:foreground ,dt-min-bright_blue :underline t))))
   `(org-special-keyword                       ((t (:inherit font-lock-comment-face))))
   `(org-table                                 ((t (:foreground ,dt-min-bright_green))))
   `(org-tag                                   ((t (:bold t :weight bold))))
   `(org-time-grid                             ((t (:foreground ,dt-min-bright_orange))))
   `(org-todo                                  ((t (:foreground ,dt-min-bright_red :weight bold :bold t))))
   `(org-upcoming-deadline                     ((t (:inherit font-lock-keyword-face))))
   `(org-warning                               ((t (:foreground ,dt-min-bright_red :weight bold :underline nil :bold t))))
   `(org-column                                ((t (:background ,dt-min-dark0))))
   `(org-column-title                          ((t (:background ,dt-min-dark0_hard :underline t :weight bold))))
   `(org-mode-line-clock                       ((t (:foreground ,dt-min-light2 :background ,dt-min-dark0))))
   `(org-mode-line-clock-overrun               ((t (:foreground ,dt-min-black :background ,dt-min-bright_red))))
   `(org-ellipsis                              ((t (:foreground ,dt-min-bright_yellow :underline t))))
   `(org-footnote                              ((t (:foreground ,dt-min-faded_aqua :underline t))))

   ;; MODE SUPPORT: powerline
   `(powerline-active1                         ((t (:background ,dt-min-dark2 :inherit mode-line))))
   `(powerline-active2                         ((t (:background ,dt-min-dark1 :inherit mode-line))))
   `(powerline-inactive1                       ((t (:background ,dt-min-medium :inherit mode-line-inactive))))
   `(powerline-inactive2                       ((t (:background ,dt-min-dark2 :inherit mode-line-inactive))))

   ;; MODE SUPPORT: smart-mode-line
   `(sml/modes                                 ((t (:foreground ,dt-min-light0_hard :weight bold :bold t))))
   `(sml/minor-modes                           ((t (:foreground ,dt-min-neutral_orange))))
   `(sml/filename                              ((t (:foreground ,dt-min-light0_hard :weight bold :bold t))))
   `(sml/prefix                                ((t (:foreground ,dt-min-neutral_blue))))
   `(sml/git                                   ((t (:inherit sml/prefix))))
   `(sml/process                               ((t (:inherit sml/prefix))))
   `(sml/sudo                                  ((t (:foreground ,dt-min-dark_orange :weight bold))))
   `(sml/read-only                             ((t (:foreground ,dt-min-neutral_blue))))
   `(sml/outside-modified                      ((t (:foreground ,dt-min-neutral_blue))))
   `(sml/modified                              ((t (:foreground ,dt-min-neutral_blue))))
   `(sml/vc                                    ((t (:foreground ,dt-min-faded_green))))
   `(sml/vc-edited                             ((t (:foreground ,dt-min-bright_green))))
   `(sml/charging                              ((t (:foreground ,dt-min-faded_aqua))))
   `(sml/discharging                           ((t (:foreground ,dt-min-faded_aqua :weight bold))))
   `(sml/col-number                            ((t (:foreground ,dt-min-neutral_orange))))
   `(sml/position-percentage                   ((t (:foreground ,dt-min-faded_aqua))))

   ;; Matches and Isearch
   `(lazy-highlight                            ((t (:foreground ,dt-min-light0 :background ,dt-min-dark2))))
   `(highlight                                 ((t (:foreground ,dt-min-light0_hard :background ,dt-min-faded_blue))))
   `(match                                     ((t (:foreground ,dt-min-light0 :background ,dt-min-dark2))))

   ;; MODE SUPPORT: isearch
   `(isearch                                   ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_aqua))))
   `(isearch-fail                              ((t (:foreground ,dt-min-light0_hard :background ,dt-min-faded_red))))

   ;; MODE SUPPORT: show-paren
   `(show-paren-match                          ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_blue))))
   `(show-paren-mismatch                       ((t (:foreground ,dt-min-light0_hard :background ,dt-min-faded_red))))

   ;; MODE SUPPORT: anzu
   `(anzu-mode-line                            ((t (:foreground ,dt-min-light0 :height 100 :background ,dt-min-faded_blue))))
   `(anzu-match-1                              ((t (:foreground ,dt-min-dark0 :background ,dt-min-bright_green))))
   `(anzu-match-2                              ((t (:foreground ,dt-min-dark0 :background ,dt-min-bright_yellow))))
   `(anzu-match-3                              ((t (:foreground ,dt-min-dark0 :background ,dt-min-bright_cyan))))
   `(anzu-replace-highlight                    ((t (:background ,dt-min-dark_aqua))))
   `(anzu-replace-to                           ((t (:background ,dt-min-dark_cyan))))

   ;; MODE SUPPORT: el-search
   `(el-search-match                           ((t (:background ,dt-min-dark_cyan))))
   `(el-search-other-match                     ((t (:background ,dt-min-dark_blue))))

   ;; MODE SUPPORT: avy
   `(avy-lead-face-0                           ((t (:foreground ,dt-min-bright_blue ))))
   `(avy-lead-face-1                           ((t (:foreground ,dt-min-bright_aqua ))))
   `(avy-lead-face-2                           ((t (:foreground ,dt-min-bright_purple ))))
   `(avy-lead-face                             ((t (:foreground ,dt-min-bright_red ))))
   `(avy-background-face                       ((t (:foreground ,dt-min-dark3 ))))
   `(avy-goto-char-timer-face                  ((t (:inherit    highlight ))))

   ;; MODE SUPPORT: popup
   `(popup-face                                ((t (:foreground ,dt-min-light0 :background ,dt-min-dark1))))
   `(popup-menu-mouse-face                     ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_blue))))
   `(popup-menu-selection-face                 ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_blue))))
   `(popup-tip-face                            ((t (:foreground ,dt-min-light0_hard :background ,dt-min-dark_aqua))))
   ;; Use tip colors for the pos-tip color vars (see below)

   ;; Inherit ac-dabbrev from popup menu face
   ;; MODE SUPPORT: ac-dabbrev
   `(ac-dabbrev-menu-face                      ((t (:inherit popup-face))))
   `(ac-dabbrev-selection-face                 ((t (:inherit popup-menu-selection-face))))

   ;; MODE SUPPORT: sh mode
   `(sh-heredoc                                ((t (:foreground ,dt-min-darkslategray4 :background nil))))
   `(sh-quoted-exec                            ((t (:foreground ,dt-min-darkslategray4 :background nil))))

   ;; MODE SUPPORT: company
   `(company-echo                              ((t (:inherit company-echo-common))))
   `(company-echo-common                       ((t (:foreground ,dt-min-bright_blue :background nil))))
   `(company-preview-common                    ((t (:underline ,dt-min-light1))))
   `(company-preview                           ((t (:inherit company-preview-common))))
   `(company-preview-search                    ((t (:inherit company-preview-common))))
   `(company-template-field                    ((t (:foreground ,dt-min-bright_blue :background nil :underline ,dt-min-dark_blue))))
   `(company-scrollbar-fg                      ((t (:foreground nil :background ,dt-min-dark2))))
   `(company-scrollbar-bg                      ((t (:foreground nil :background ,dt-min-dark3))))
   `(company-tooltip                           ((t (:foreground ,dt-min-light0_hard :background ,dt-min-dark1))))
   `(company-preview-common                    ((t (:inherit font-lock-comment-face))))
   `(company-tooltip-common                    ((t (:foreground ,dt-min-light0 :background ,dt-min-dark1))))
   `(company-tooltip-annotation                ((t (:foreground ,dt-min-bright_blue :background ,dt-min-dark1))))
   `(company-tooltip-common-selection          ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_blue))))
   `(company-tooltip-mouse                     ((t (:foreground ,dt-min-dark0 :background ,dt-min-bright_blue))))
   `(company-tooltip-selection                 ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_blue))))

   ;; MODE SUPPORT: dired+
   `(diredp-file-name                          ((t (:foreground ,dt-min-light2 ))))
   `(diredp-file-suffix                        ((t (:foreground ,dt-min-light4 ))))
   `(diredp-compressed-file-suffix             ((t (:foreground ,dt-min-faded_cyan ))))
   `(diredp-dir-name                           ((t (:foreground ,dt-min-faded_cyan ))))
   `(diredp-dir-heading                        ((t (:foreground ,dt-min-bright_cyan ))))
   `(diredp-symlink                            ((t (:foreground ,dt-min-bright_orange ))))
   `(diredp-date-time                          ((t (:foreground ,dt-min-light3 ))))
   `(diredp-number                             ((t (:foreground ,dt-min-faded_cyan ))))
   `(diredp-no-priv                            ((t (:foreground ,dt-min-dark4 ))))
   `(diredp-other-priv                         ((t (:foreground ,dt-min-dark2 ))))
   `(diredp-rare-priv                          ((t (:foreground ,dt-min-dark4 ))))
   `(diredp-ignored-file-name                  ((t (:foreground ,dt-min-dark4 ))))

   `(diredp-dir-priv                           ((t (:foreground ,dt-min-faded_cyan  :background ,dt-min-dark_blue))))
   `(diredp-exec-priv                          ((t (:foreground ,dt-min-faded_cyan  :background ,dt-min-dark_blue))))
   `(diredp-link-priv                          ((t (:foreground ,dt-min-faded_aqua  :background ,dt-min-dark_aqua))))
   `(diredp-read-priv                          ((t (:foreground ,dt-min-bright_red  :background ,dt-min-dark_red))))
   `(diredp-write-priv                         ((t (:foreground ,dt-min-bright_aqua :background ,dt-min-dark_aqua))))

   ;; MODE SUPPORT: helm
   `(helm-M-x-key                              ((t (:foreground ,dt-min-neutral_orange))))
   `(helm-action                               ((t (:foreground ,dt-min-white :underline t))))
   `(helm-bookmark-addressbook                 ((t (:foreground ,dt-min-neutral_red))))
   `(helm-bookmark-directory                   ((t (:foreground ,dt-min-bright_purple))))
   `(helm-bookmark-file                        ((t (:foreground ,dt-min-faded_blue))))
   `(helm-bookmark-gnus                        ((t (:foreground ,dt-min-faded_purple))))
   `(helm-bookmark-info                        ((t (:foreground ,dt-min-turquoise4))))
   `(helm-bookmark-man                         ((t (:foreground ,dt-min-sienna))))
   `(helm-bookmark-w3m                         ((t (:foreground ,dt-min-neutral_yellow))))
   `(helm-buffer-directory                     ((t (:foreground ,dt-min-white :background ,dt-min-bright_blue))))
   `(helm-buffer-not-saved                     ((t (:foreground ,dt-min-faded_red))))
   `(helm-buffer-process                       ((t (:foreground ,dt-min-burlywood4))))
   `(helm-buffer-saved-out                     ((t (:foreground ,dt-min-bright_red))))
   `(helm-buffer-size                          ((t (:foreground ,dt-min-bright_purple))))
   `(helm-candidate-number                     ((t (:foreground ,dt-min-neutral_green))))
   `(helm-ff-directory                         ((t (:foreground ,dt-min-neutral_purple))))
   `(helm-ff-executable                        ((t (:foreground ,dt-min-turquoise4))))
   `(helm-ff-file                              ((t (:foreground ,dt-min-sienna))))
   `(helm-ff-invalid-symlink                   ((t (:foreground ,dt-min-white :background ,dt-min-bright_red))))
   `(helm-ff-prefix                            ((t (:foreground ,dt-min-black :background ,dt-min-neutral_yellow))))
   `(helm-ff-symlink                           ((t (:foreground ,dt-min-neutral_orange))))
   `(helm-grep-cmd-line                        ((t (:foreground ,dt-min-neutral_green))))
   `(helm-grep-file                            ((t (:foreground ,dt-min-faded_purple))))
   `(helm-grep-finish                          ((t (:foreground ,dt-min-turquoise4))))
   `(helm-grep-lineno                          ((t (:foreground ,dt-min-neutral_orange))))
   `(helm-grep-match                           ((t (:foreground ,dt-min-neutral_yellow))))
   `(helm-grep-running                         ((t (:foreground ,dt-min-neutral_red))))
   `(helm-header                               ((t (:foreground ,dt-min-aquamarine4))))
   `(helm-helper                               ((t (:foreground ,dt-min-aquamarine4))))
   `(helm-history-deleted                      ((t (:foreground ,dt-min-black :background ,dt-min-bright_red))))
   `(helm-history-remote                       ((t (:foreground ,dt-min-faded_red))))
   `(helm-lisp-completion-info                 ((t (:foreground ,dt-min-faded_orange))))
   `(helm-lisp-show-completion                 ((t (:foreground ,dt-min-bright_red))))
   `(helm-locate-finish                        ((t (:foreground ,dt-min-white :background ,dt-min-aquamarine4))))
   `(helm-match                                ((t (:foreground ,dt-min-neutral_orange))))
   `(helm-moccur-buffer                        ((t (:foreground ,dt-min-bright_aqua :underline t))))
   `(helm-prefarg                              ((t (:foreground ,dt-min-turquoise4))))
   `(helm-selection                            ((t (:foreground ,dt-min-white :background ,dt-min-dark2))))
   `(helm-selection-line                       ((t (:foreground ,dt-min-white :background ,dt-min-dark2))))
   `(helm-separator                            ((t (:foreground ,dt-min-faded_red))))
   `(helm-source-header                        ((t (:foreground ,dt-min-light2 :background ,dt-min-dark1))))
   `(helm-visible-mark                         ((t (:foreground ,dt-min-black :background ,dt-min-light3))))

   ;; MODE SUPPORT: column-marker
   `(column-marker-1                           ((t (:background ,dt-min-faded_blue))))
   `(column-marker-2                           ((t (:background ,dt-min-faded_purple))))
   `(column-marker-3                           ((t (:background ,dt-min-faded_cyan))))

   ;; MODE SUPPORT: vline
   `(vline                                     ((t (:background ,dt-min-dark_aqua))))
   `(vline-visual                              ((t (:background ,dt-min-dark_aqua))))

   ;; MODE SUPPORT: col-highlight
   `(col-highlight                             ((t (:inherit vline))))

   ;; MODE SUPPORT: column-enforce-mode
   `(column-enforce-face                       ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark_red))))

   ;; MODE SUPPORT: hydra
   `(hydra-face-red                            ((t (:foreground ,dt-min-bright_red))))
   `(hydra-face-blue                           ((t (:foreground ,dt-min-bright_blue))))
   `(hydra-face-pink                           ((t (:foreground ,dt-min-identifiers-15))))
   `(hydra-face-amaranth                       ((t (:foreground ,dt-min-faded_purple))))
   `(hydra-face-teal                           ((t (:foreground ,dt-min-faded_cyan))))

   ;; MODE SUPPORT: ivy
   `(ivy-current-match                         ((t (:foreground ,dt-min-light0 :background ,dt-min-faded_blue))))
   `(ivy-minibuffer-match-face-1               ((t (:background ,dt-min-dark1))))
   `(ivy-minibuffer-match-face-2               ((t (:background ,dt-min-dark2))))
   `(ivy-minibuffer-match-face-3               ((t (:background ,dt-min-faded_aqua))))
   `(ivy-minibuffer-match-face-4               ((t (:background ,dt-min-faded_purple))))
   `(ivy-confirm-face                          ((t (:foreground ,dt-min-bright_green))))
   `(ivy-match-required-face                   ((t (:foreground ,dt-min-bright_red))))
   `(ivy-remote                                ((t (:foreground ,dt-min-neutral_blue))))

   ;; MODE SUPPORT: smerge
   ;; TODO: smerge-base, smerge-refined-changed
   `(smerge-mine                               ((t (:background ,dt-min-mid_purple))))
   `(smerge-other                              ((t (:background ,dt-min-mid_blue))))
   `(smerge-markers                            ((t (:background ,dt-min-dark0_soft))))
   `(smerge-refined-added                      ((t (:background ,dt-min-dark_green))))
   `(smerge-refined-removed                    ((t (:background ,dt-min-dark_red))))

   ;; MODE SUPPORT: git-gutter
   `(git-gutter:separator                      ((t (:inherit git-gutter+-separator ))))
   `(git-gutter:modified                       ((t (:inherit git-gutter+-modified ))))
   `(git-gutter:added                          ((t (:inherit git-gutter+-added ))))
   `(git-gutter:deleted                        ((t (:inherit git-gutter+-deleted ))))
   `(git-gutter:unchanged                      ((t (:inherit git-gutter+-unchanged ))))

   ;; MODE SUPPORT: git-gutter+
   `(git-gutter+-commit-header-face            ((t (:inherit font-lock-comment-face))))
   `(git-gutter+-added                         ((t (:foreground ,dt-min-faded_green :background ,dt-min-muted_green ))))
   `(git-gutter+-deleted                       ((t (:foreground ,dt-min-faded_red :background ,dt-min-muted_red ))))
   `(git-gutter+-modified                      ((t (:foreground ,dt-min-faded_purple :background ,dt-min-muted_purple ))))
   `(git-gutter+-separator                     ((t (:foreground ,dt-min-faded_cyan :background ,dt-min-muted_cyan ))))
   `(git-gutter+-unchanged                     ((t (:foreground ,dt-min-faded_yellow :background ,dt-min-muted_yellow ))))


   ;; MODE SUPPORT: git-gutter-fr+
   `(git-gutter-fr+-added                      ((t (:inherit git-gutter+-added))))
   `(git-gutter-fr+-deleted                    ((t (:inherit git-gutter+-deleted))))
   `(git-gutter-fr+-modified                   ((t (:inherit git-gutter+-modified))))

   ;; MODE SUPPORT: magit
   `(magit-branch                              ((t (:foreground ,dt-min-turquoise4 :background nil))))
   `(magit-branch-local                        ((t (:foreground ,dt-min-turquoise4 :background nil))))
   `(magit-branch-remote                       ((t (:foreground ,dt-min-aquamarine4 :background nil))))
   `(magit-cherry-equivalent                   ((t (:foreground ,dt-min-neutral_orange))))
   `(magit-cherry-unmatched                    ((t (:foreground ,dt-min-neutral_purple))))
   `(magit-diff-context                        ((t (:foreground ,dt-min-dark3 :background nil))))
   `(magit-diff-context-highlight              ((t (:foreground ,dt-min-dark4 :background ,dt-min-dark0_soft))))
   `(magit-diff-added                          ((t (:foreground ,dt-min-bright_green :background ,dt-min-mid_green))))
   `(magit-diff-added-highlight                ((t (:foreground ,dt-min-bright_green :background ,dt-min-mid_green))))
   `(magit-diff-removed                        ((t (:foreground ,dt-min-bright_red :background ,dt-min-mid_red))))
   `(magit-diff-removed-highlight              ((t (:foreground ,dt-min-bright_red :background ,dt-min-mid_red))))
   `(magit-diff-add                            ((t (:foreground ,dt-min-bright_green))))
   `(magit-diff-del                            ((t (:foreground ,dt-min-bright_red))))
   `(magit-diff-file-header                    ((t (:foreground ,dt-min-bright_blue))))
   `(magit-diff-hunk-header                    ((t (:foreground ,dt-min-neutral_aqua))))
   `(magit-diff-merge-current                  ((t (:background ,dt-min-dark_yellow))))
   `(magit-diff-merge-diff3-separator          ((t (:foreground ,dt-min-neutral_orange :weight bold))))
   `(magit-diff-merge-proposed                 ((t (:background ,dt-min-dark_green))))
   `(magit-diff-merge-separator                ((t (:foreground ,dt-min-neutral_orange))))
   `(magit-diff-none                           ((t (:foreground ,dt-min-medium))))
   `(magit-item-highlight                      ((t (:background ,dt-min-dark1 :weight normal))))
   `(magit-item-mark                           ((t (:background ,dt-min-dark0))))
   `(magit-key-mode-args-face                  ((t (:foreground ,dt-min-light4))))
   `(magit-key-mode-button-face                ((t (:foreground ,dt-min-neutral_orange :weight bold))))
   `(magit-key-mode-header-face                ((t (:foreground ,dt-min-light4 :weight bold))))
   `(magit-key-mode-switch-face                ((t (:foreground ,dt-min-turquoise4 :weight bold))))
   `(magit-log-author                          ((t (:foreground ,dt-min-neutral_aqua))))
   `(magit-log-date                            ((t (:foreground ,dt-min-faded_orange))))
   `(magit-log-graph                           ((t (:foreground ,dt-min-light1))))
   `(magit-log-head-label-bisect-bad           ((t (:foreground ,dt-min-bright_red))))
   `(magit-log-head-label-bisect-good          ((t (:foreground ,dt-min-bright_green))))
   `(magit-log-head-label-bisect-skip          ((t (:foreground ,dt-min-neutral_yellow))))
   `(magit-log-head-label-default              ((t (:foreground ,dt-min-neutral_blue))))
   `(magit-log-head-label-head                 ((t (:foreground ,dt-min-light0 :background ,dt-min-dark_aqua))))
   `(magit-log-head-label-local                ((t (:foreground ,dt-min-faded_blue :weight bold))))
   `(magit-log-head-label-patches              ((t (:foreground ,dt-min-faded_orange))))
   `(magit-log-head-label-remote               ((t (:foreground ,dt-min-neutral_blue :weight bold))))
   `(magit-log-head-label-tags                 ((t (:foreground ,dt-min-neutral_aqua))))
   `(magit-log-head-label-wip                  ((t (:foreground ,dt-min-neutral_red))))
   `(magit-log-message                         ((t (:foreground ,dt-min-light1))))
   `(magit-log-reflog-label-amend              ((t (:foreground ,dt-min-bright_blue))))
   `(magit-log-reflog-label-checkout           ((t (:foreground ,dt-min-bright_yellow))))
   `(magit-log-reflog-label-cherry-pick        ((t (:foreground ,dt-min-neutral_red))))
   `(magit-log-reflog-label-commit             ((t (:foreground ,dt-min-neutral_green))))
   `(magit-log-reflog-label-merge              ((t (:foreground ,dt-min-bright_green))))
   `(magit-log-reflog-label-other              ((t (:foreground ,dt-min-faded_red))))
   `(magit-log-reflog-label-rebase             ((t (:foreground ,dt-min-bright_blue))))
   `(magit-log-reflog-label-remote             ((t (:foreground ,dt-min-neutral_orange))))
   `(magit-log-reflog-label-reset              ((t (:foreground ,dt-min-neutral_yellow))))
   `(magit-log-sha1                            ((t (:foreground ,dt-min-bright_orange))))
   `(magit-process-ng                          ((t (:foreground ,dt-min-bright_red :weight bold))))
   `(magit-process-ok                          ((t (:foreground ,dt-min-bright_green :weight bold))))
   `(magit-section-heading                     ((t (:foreground ,dt-min-light2 :background ,dt-min-dark_blue))))
   `(magit-signature-bad                       ((t (:foreground ,dt-min-bright_red :weight bold))))
   `(magit-signature-good                      ((t (:foreground ,dt-min-bright_green :weight bold))))
   `(magit-signature-none                      ((t (:foreground ,dt-min-faded_red))))
   `(magit-signature-untrusted                 ((t (:foreground ,dt-min-bright_purple :weight bold))))
   `(magit-tag                                 ((t (:foreground ,dt-min-darkslategray4))))
   `(magit-whitespace-warning-face             ((t (:background ,dt-min-faded_red))))
   `(magit-bisect-bad                          ((t (:foreground ,dt-min-faded_red))))
   `(magit-bisect-good                         ((t (:foreground ,dt-min-neutral_green))))
   `(magit-bisect-skip                         ((t (:foreground ,dt-min-light2))))
   `(magit-blame-date                          ((t (:inherit magit-blame-heading))))
   `(magit-blame-name                          ((t (:inherit magit-blame-heading))))
   `(magit-blame-hash                          ((t (:inherit magit-blame-heading))))
   `(magit-blame-summary                       ((t (:inherit magit-blame-heading))))
   `(magit-blame-heading                       ((t (:background ,dt-min-dark1 :foreground ,dt-min-light0))))
   `(magit-sequence-onto                       ((t (:inherit magit-sequence-done))))
   `(magit-sequence-done                       ((t (:inherit magit-hash))))
   `(magit-sequence-drop                       ((t (:foreground ,dt-min-faded_red))))
   `(magit-sequence-head                       ((t (:foreground ,dt-min-faded_cyan))))
   `(magit-sequence-part                       ((t (:foreground ,dt-min-bright_yellow))))
   `(magit-sequence-stop                       ((t (:foreground ,dt-min-bright_aqua))))
   `(magit-sequence-pick                       ((t (:inherit default))))
   `(magit-filename                            ((t (:weight normal))))
   `(magit-refname-wip                         ((t (:inherit magit-refname))))
   `(magit-refname-stash                       ((t (:inherit magit-refname))))
   `(magit-refname                             ((t (:foreground ,dt-min-light2))))
   `(magit-head                                ((t (:inherit magit-branch-local))))
   `(magit-popup-disabled-argument             ((t (:foreground ,dt-min-light4))))

   ;; MODE SUPPORT: term
   `(term-color-black                          ((t (:foreground ,dt-min-dark1))))
   `(term-color-blue                           ((t (:foreground ,dt-min-neutral_blue))))
   `(term-color-cyan                           ((t (:foreground ,dt-min-neutral_cyan))))
   `(term-color-green                          ((t (:foreground ,dt-min-neutral_green))))
   `(term-color-magenta                        ((t (:foreground ,dt-min-neutral_purple))))
   `(term-color-red                            ((t (:foreground ,dt-min-neutral_red))))
   `(term-color-white                          ((t (:foreground ,dt-min-light1))))
   `(term-color-yellow                         ((t (:foreground ,dt-min-neutral_yellow))))
   `(term-default-fg-color                     ((t (:foreground ,dt-min-light0))))
   `(term-default-bg-color                     ((t (:background ,dt-min-dark0))))

   ;; MODE SUPPORT: Elfeed
   `(elfeed-search-date-face                    ((t (:foreground ,dt-min-muted_cyan))))
   `(elfeed-search-feed-face                    ((t (:foreground ,dt-min-faded_cyan))))
   `(elfeed-search-tag-face                     ((t (:foreground ,dt-min-light3))))
   `(elfeed-search-title-face                   ((t (:foreground ,dt-min-light3 :bold nil))))
   `(elfeed-search-unread-title-face            ((t (:foreground ,dt-min-light0_hard :bold nil))))

   ;; MODE SUPPORT: message
   `(message-header-to                          ((t (:foreground ,dt-min-bright_cyan ))))
   `(message-header-cc                          ((t (:foreground ,dt-min-bright_cyan ))))
   `(message-header-subject                     ((t (:foreground ,dt-min-light2 ))))
   `(message-header-newsgroups                  ((t (:foreground ,dt-min-bright_cyan ))))
   `(message-header-other                       ((t (:foreground ,dt-min-muted_cyan  ))))
   `(message-header-name                        ((t (:foreground ,dt-min-bright_cyan ))))
   `(message-header-xheader                     ((t (:foreground ,dt-min-faded_cyan ))))
   `(message-separator                          ((t (:foreground ,dt-min-faded_cyan ))))
   `(message-cited-text                         ((t (:foreground ,dt-min-light3 ))))
   `(message-mml                                ((t (:foreground ,dt-min-faded_aqua )))))

  (custom-theme-set-variables
   'dt-min

   `(pos-tip-foreground-color ,dt-min-light0_hard)
   `(pos-tip-background-color ,dt-min-dark_aqua)

   `(ansi-color-names-vector ["#3C3836"
                              "#FB4934"
                              "#84BB26"
                              "#FABD2F"
                              "#83A598"
                              "#D3869B"
                              "#3FD7E5"
                              "#EBDBB2"])))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(defun dt-min-modeline ()
  "Optional modeline styling for dt-min."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :inherit 'mode-line-face
                      :foreground "#BDAE93"
                      :background "#1D2021"
                      :height 120
                      :inverse-video nil
                      :box '(:line-width 6 :color "#1D2021" :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :inherit 'mode-line-face
                      :foreground "#504945"
                      :background "#32302F"
                      :height 120
                      :inverse-video nil
                      :box '(:line-width 6 :color "#32302F" :style nil)))

(provide-theme 'dt-min)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode 1))
;; End:

;;; dt-min-theme.el ends here
