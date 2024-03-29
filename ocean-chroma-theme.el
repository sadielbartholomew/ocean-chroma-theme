;;; ocean-chroma-theme.el ::: Fresh dark colour theme for Emacs 24+

;; A fresh dark colour theme for Emacs 24+ based on blue-green and
;; primary colours.
;;
;; Canonical definition available from:
;;     https://github.com/sadielbartholomew/ocean-chroma-theme
;; See the README.md for that repository for further detail.
;;
;; Theme design and code by Sadie Bartholomew (GitHub user sadielbartholomew)
;;
;; Copyright (C) 2021 Sadie Bartholomew

;; Theme metadata:
;;     Version: 1.0.0
;;     Package-Requires: ((emacs "24.0"))
;;     License: MIT license
;;     Author: Sadie L. Bartholomew (sadielbartholomew)
;;     Maintainer: Sadie L. Bartholomew (sadielbartholomew)
;;     URL: https://github.com/sadielbartholomew/ocean-chroma-theme
;;     Maximum line length of file: 85

;; Tip: to view all faces and therefore preview those set by this theme, run:
;;   M-x customize-face
;; with the cursor not on any text, then select 'y' to see all faces.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Definition of theme
(deftheme ocean-chroma "Fresh dark colour theme for Emacs 24+")

(let*

    ;;; Define the full (fairly minimal) colour scheme used by the theme
    (
     ;; Shades of 'ocean' i.e. blue-green colours, increasingly dark
     (duck-egg           "#8FBCB5")  ; i.e. very-light-teal
     (light-teal         "#33859D")
     (mid-teal           "#004B66")
     (dark-teal          "#002533")
     (very-dark-teal     "#001B25")
     (extra-dark-teal    "#00131A")

     ;; Complementary 'chroma' primary (RGB) colours (plus secondary yellow)
     (chroma-red         "#D22D2D")
     (chroma-blue        "#3980C6")
     (chroma-yellow      "#FFDF80")
     (chroma-green       "#00B386")

     ;; Darker variations on 'chroma' colours (bar yellow as dark yellow is ugly)
     (dark-chroma-red    "#9C1626")
     (dark-chroma-blue   "#00264D")
     (dark-chroma-green  "#004D38")

     ;; Variants on black and white
     (off-black          "#0A0F14")
     (off-white          "#E5E5FF")  ; a very bright-looking white

     ;; Some other complementary colours for extra elements
     (maroon             "#33000D")
    )

  ;;; Apply the above scheme to define and set the theme...

  ;;; Faces:
  (custom-theme-set-faces
   `ocean-chroma

   ;;; **Built-in elements and modes**

   ;; Default face
   `(default ((t (:foreground ,duck-egg :background ,off-black :bold nil))))

   ;; Important information: use traffic light colours
   `(success ((t (:foreground ,chroma-green :bold t :underline nil :slant normal))))
   `(warning ((t (:foreground ,chroma-yellow :bold t :underline nil :slant normal))))
   `(error ((t (:foreground ,chroma-red :bold t :underline nil :slant normal))))

   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground ,chroma-green))))
   `(font-lock-comment-face ((t (:foreground ,mid-teal :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((t (:foreground ,chroma-yellow))))
   `(font-lock-doc-face ((t (:inherit font-lock-string-face :slant italic))))
   `(font-lock-function-name-face ((t (:foreground ,light-teal))))
   `(font-lock-keyword-face ((t (:foreground ,chroma-red))))
   `(font-lock-negation-char-face ((t (:foreground ,dark-chroma-red))))
   `(font-lock-preprocessor-face ((t (:foreground ,chroma-green :slant italic))))
   `(font-lock-string-face ((t (:foreground ,chroma-blue))))
   `(font-lock-type-face ((t (:foreground ,light-teal))))
   `(font-lock-variable-name-face ((t (:foreground ,off-white))))
   `(font-lock-warning-face ((t (:inherit warning))))

   ;; Highlighting, including incremental search
   `(highlight ((t (:foreground ,chroma-yellow :background ,dark-chroma-red))))
   `(lazy-highlight ((t (:foreground ,dark-chroma-blue :background ,off-white))))
   `(region ((t (:background ,dark-teal :weight bold))))
   `(match ((t (:inherit highlight))))
   `(isearch ((t (:inherit highlight))))
   `(isearch-fail ((t (:foreground ,chroma-red))))

   ;; Fringe and fringe elements
   `(fringe ((t (:foreground ,light-teal :background ,very-dark-teal))))
   `(linum ((t (:inherit fringe :foreground ,mid-teal))))
   `(vertical-border ((t (:foreground ,dark-teal))))

   ;; Elements at the head and foot of a window (or frame)
   `(header-line ((t (:background ,very-dark-teal :weight ultra-bold))))
   `(minibuffer-prompt ((t (:inherit highlight :weight ultra-bold))))
   `(mode-line ((t (:foreground ,chroma-blue :background ,dark-chroma-blue
                                                         :weight ultra-bold))))
   `(mode-line-inactive ((t (:inherit fringe :background ,dark-teal))))
   `(mode-line-buffer-id ((t (:foreground ,off-white))))
   `(mode-line-highlight ((t (:foreground ,chroma-yellow))))
   `(mode-line-emphasis ((t (:foreground ,chroma-red))))

   ;; Links and buttons: use traditional style of underlined blues
   `(link ((t (:foreground ,chroma-blue :underline t))))
   `(link-visited ((t (:foreground ,dark-chroma-blue :underline t))))
   '(button ((t (:inherit link :weight bold))))

   ;; Other general elements
   `(cursor ((t (:foreground ,off-white :background ,off-black))))
   `(tooltip ((t (:foreground ,off-black :background ,duck-egg))))
   `(shadow ((t (:foreground ,duck-egg))))
   `(escape-glyph ((t (:foreground ,dark-chroma-red :bold t))))

   ;; Note: not including scrollbar or toolbar settings as these are usually
   ;; set by the OS or environment, hence themes don't usually set them.

   ;; **Built-in modes**

   ;; *Outline mode*
   `(outline-1 ((t (:foreground ,chroma-yellow))))
   `(outline-2 ((t (:foreground ,chroma-red))))
   `(outline-3 ((t (:foreground ,chroma-blue))))
   `(outline-4 ((t (:foreground ,chroma-green))))
   `(outline-5 ((t (:foreground ,chroma-yellow))))
   `(outline-6 ((t (:foreground ,chroma-red))))
   `(outline-7 ((t (:foreground ,chroma-blue))))
   `(outline-8 ((t (:foreground ,chroma-green))))

   ;; *Compilation*
   `(compilation-info-face ((t (:inherit success))))
   `(compilation-error-face ((t (:inherit error))))
   `(compilation-warning-face ((t (:inherit warning))))
   `(compilation-info ((t (:inherit success))))
   `(compilation-error ((t (:inherit error))))
   `(compilation-warning ((t (:inherit warning))))
   `(compilation-mode-line-fail ((t (:inherit error))))
   `(compilation-mode-line-exit ((t (:inherit error :foreground ,dark-chroma-red))))
   `(compilation-mode-line-run ((t (:inherit success))))
   `(compilation-face ((t (:foreground ,duck-egg))))
   `(compilation-message-face ((t (:foreground ,off-white))))
   `(compilation-line-face ((t (:foreground ,light-teal))))
   `(compilation-line-number ((t (:foreground ,mid-teal))))
   `(compilation-column-face ((t (:foreground ,chroma-blue))))
   `(compilation-enter-directory-face ((t (:foreground ,light-teal))))
   `(compilation-leave-directory-face ((t (:foreground ,mid-teal))))

   ;; *Org mode*
   ;; Headings and footnotes
   `(org-document-info ((t (:foreground ,light-teal))))
   `(org-document-info-keyword ((t (:foreground ,mid-teal))))
   `(org-document-title ((t (:foreground ,off-white))))
   `(org-footnote ((t (:foreground ,light-teal :underline t))))

   ;; Cycle through 'chroma' (primary) colours for nested level headings
   `(org-level-1 ((t (:foreground ,chroma-yellow))))
   `(org-level-2 ((t (:foreground ,chroma-green))))
   `(org-level-3 ((t (:foreground ,chroma-blue))))
   `(org-level-4 ((t (:foreground ,chroma-red))))
   `(org-level-5 ((t (:foreground ,chroma-yellow))))
   `(org-level-6 ((t (:foreground ,chroma-green))))
   `(org-level-7 ((t (:foreground ,chroma-blue))))
   `(org-level-8 ((t (:foreground ,chroma-red))))

   ;; Other prominent org elements e.g. level markers and links
   `(org-tag ((t (:slant italic :underline t))))
   `(org-ellipsis ((t (:foreground ,off-white))))
   `(org-hide ((t (:foreground ,off-white))))
   `(org-link ((t (:inherit link))))
   `(org-warning ((t (:inherit warning))))

   ;; Column view
   `(org-column ((t (:background ,extra-dark-teal))))
   `(org-column-title ((t (:background ,very-dark-teal :underline t :weight bold))))

   ;; Code blocks
   '(org-meta-line ((t (:inherit linum))))
   `(org-block ((t (:background ,extra-dark-teal))))

   ;; Tables and grids, including table formulae
   `(org-table ((t (:foreground ,light-teal))))
   `(org-formula ((t (:foreground ,dark-chroma-red))))
   `(org-time-grid ((t (:foreground ,light-teal))))

   ;; Drawers
   `(org-drawer ((t (:foreground ,dark-chroma-red))))

   ;; Task- and deadline- related org features: prominent in white
   `(org-todo ((t (:bold t :foreground ,off-white :weight bold))))
   `(org-special-keyword ((t (:inherit org-todo))))
   `(org-priority ((t (:inherit org-todo :underline t))))
   `(org-done ((t (:bold t :foreground ,light-teal :weight bold))))
   `(org-headline-done ((t (:inherit org-done :weight ultra-bold))))
   `(org-checkbox ((t (:inherit lazy-highlight))))
   `(org-checkbox-statistics-done ((t (:inherit org-done))))
   `(org-checkbox-statistics-todo ((t (:inherit org-todo))))

   ;; Dates and deadlines
   `(org-date ((t (:foreground ,off-white :underline t))))
   `(org-deadline-announce ((t (:inherit org-date :weight ultra-bold))))
   `(org-upcoming-deadline ((t (:inherit warning))))

   ;; Agenda and calendaring
   `(org-scheduled ((t (:foreground ,chroma-yellow :weight bold))))
   `(org-scheduled-previously ((t (:foreground ,chroma-green))))
   `(org-scheduled-today ((t (:foreground ,chroma-red))))
   `(org-agenda-clocking ((t (:inherit mode-line))))
   `(org-agenda-date-today ((t (:inherit org-date :slant italic :weight bold))))
   `(org-agenda-structure ((t (:foreground ,duck-egg))))
   `(org-sexp-date ((t (:foreground ,dark-chroma-red))))
   `(org-archived ((t (:foreground ,mid-teal))))

   ;; Clocks
   `(org-mode-line-clock ((t (:inherit mode-line :foreground ,chroma-yellow))))
   `(org-mode-line-clock-overrun ((t (:inherit mode-line :foreground ,chroma-red))))

   ;; *Diffs and diff-mode*
   ;; Changes
   `(diff-added ((t (:background ,dark-chroma-green :foreground ,chroma-green))))
   `(diff-changed ((t (:background ,dark-chroma-blue :foreground ,off-white))))
   `(diff-removed ((t (:background ,maroon :foreground ,dark-chroma-red))))

   ;; Context lines
   `(diff-context ((t (:foreground ,duck-egg))))
   `(diff-header ((t (:foreground ,off-white :weight ultra-bold))))
   `(diff-file-header ((t (:foreground ,light-teal :weight ultra-bold))))
   `(diff-hunk-header ((t (:foreground ,off-white))))
   `(diff-index ((t (:foreground ,off-white :slant italic))))
   `(diff-function ((t (:foreground ,light-teal))))
   `(diff-nonexistent ((t (:inherit lazy-highlight))))

   ;; Refinements and indicators
   `(diff-refine-added ((t (:inherit diff-added :slant italic))))
   `(diff-refine-changed ((t (:inherit diff-changed :slant italic))))
   `(diff-refine-removed ((t (:inherit diff-removed :slant italic))))
   `(diff-indicator-added ((t (:inherit diff-added))))
   `(diff-indicator-changed ((t (:inherit diff-changed))))
   `(diff-indicator-removed ((t (:inherit diff-removed))))

   ;; *smerge*
   ;; Main backgrounds for smerge diff blocks
   `(smerge-upper ((t (:background ,maroon))))
   `(smerge-mine ((t (:background ,maroon))))  ; -upper alias, made obsolete at 26.1
   `(smerge-lower ((t (:background ,dark-chroma-green))))
   `(smerge-other ((t (:background ,dark-chroma-green))))  ; -lower alias for <26.1

   ;; Context
   `(smerge-base ((t (:foreground ,off-white))))
   `(smerge-markers ((t (:inherit linum :weight bold))))

   ;; Changes
   `(smerge-refined-added ((t (:background ,chroma-green))))
   `(smerge-refined-changed ((t (:foreground ,off-white :weight ultra-bold))))
   `(smerge-refined-removed ((t (:background ,dark-chroma-red))))

   ;; *Shell-script mode specific faces*
   `(sh-heredoc ((t (:foreground ,chroma-yellow :weight ultra-bold))))
   `(sh-quoted-exec ((t (:foreground ,chroma-yellow))))

   ;; *Whitespace and whitespace-mode*
   ;; Standard (expected) whitespace components
   `(trailing-whitespace ((t (:background ,dark-chroma-red
                                          :foreground ,chroma-yellow))))
   `(whitespace-trailing ((t (:inherit trailing-whitespace))))
   `(whitespace-space ((t (:background ,off-black :foreground ,light-teal))))
   `(whitespace-hspace ((t (:background ,off-black :foreground ,chroma-red))))
   `(whitespace-newline ((t (:inherit whitespace-space))))
   `(whitespace-indentation ((t (:foreground ,off-white
                                             :background ,very-dark-teal))))
   `(whitespace-empty ((t (:background ,very-dark-teal))))

   ;; 'Bad' whitespace components, to highlight prominently like errors and warnings
   ;; (note author's bias for spaces over tabs, where inconsistency is also bad).
   `(whitespace-tab ((t (:background ,maroon :foreground ,dark-chroma-red))))
   `(whitespace-space-before-tab ((t (:background ,chroma-yellow
                                                  :foreground ,dark-chroma-red))))
   `(whitespace-space-after-tab ((t (:inherit whitespace-space-before-tab))))
   `(whitespace-line ((t (:background ,maroon))))

   ;; *dired (standard built-in mode only)*
   `(dired-directory ((t (:foreground ,light-teal :weight ultra-bold))))
   `(dired-header ((t (:foreground ,off-white :underline t))))

   ;;; **Third-party elements and modes**

   ;; *col-highlight*
   `(col-highlight ((t (:background ,maroon))))

   ;; *hl-line*
   `(hl-line ((t (:foreground ,nil :background ,dark-chroma-blue :weight bold))))
   `(hl-line-face ((t (:inherit hl-line))))  ; older alias for face hl-line

   ;; *diff-hl*
   `(diff-hl-insert ((t (:inherit fringe :foreground ,chroma-green))))
   `(diff-hl-change ((t (:inherit fringe :foreground ,off-white))))
   `(diff-hl-delete ((t (:inherit fringe :foreground ,chroma-red))))

   ;; *highlight-indentation*
   `(highlight-indentation-face ((t (:background ,very-dark-teal))))
   `(highlight-indentation-current-column-face ((t (:background ,dark-teal))))

   ;; *visible-mark*
   `(visible-mark-active ((t (:background ,dark-chroma-green))))
   `(visible-mark-face1 ((t (:background ,dark-chroma-red))))
   `(visible-mark-face2 ((t (:background ,mid-teal))))
   `(visible-mark-forward-face1 ((t (:background ,maroon))))
   `(visible-mark-forward-face2 ((t (:background ,dark-teal))))

   ;; *rainbow-delimiters* (cycle with chroma colours except top-level off-white)
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,off-white))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,chroma-yellow))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,chroma-green))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,chroma-blue))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,chroma-red))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,chroma-yellow))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,chroma-green))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,chroma-blue))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,chroma-red))))
   `(rainbow-delimiters-unmatched-face ((t (:inherit trailing-whitespace))))

   ;; *hlinum* (required for line number highlighting before Emacs 26)
   `(linum-highlight-face ((t (:foreground ,light-teal
                                           :background ,dark-teal :weight bold))))
   `(nlinum-current-line ((t (:inherit linum-highlight-face))))

   ;; *git* (outside of magit, etc.)
   `(git-commit-summary ((t (:foreground ,light-teal :weight bold))))
   `(git-commit-overlong-summary ((t (:foreground ,chroma-red :weight bold))))
   ;; Enforce standard one-line commit summary message by colouring as "error":
   `(git-commit-nonempty-second-line ((t (:inherit git-commit-overlong-summary))))
   `(git-rebase-hash ((t (:inherit magit-hash))))
   `(git-rebase-comment-heading ((t (:foreground ,light-teal :underline t))))

  )  ; custom-theme-set-faces ends here

  ;;; Variables:
  (custom-theme-set-variables
   `ocean-chroma

   ;;; **Third-party elements and modes**

   ;; *fill-column-indicator*
   `(fci-rule-color ,dark-teal)
   `(fci-rule-character-color ,dark-teal)

  )  ; custom-theme-set-variables ends here

)  ; let* ends here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Provision of theme

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ocean-chroma)

;;; ocean-chroma-theme.el ends here
