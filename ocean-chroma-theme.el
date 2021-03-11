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
;;     Maximum line length of file: 99

;; Tip: to view all faces and therefore preview those set by this theme, run:
;;   M-x customize-face
;; with the cursor not on any text, then select 'y' to see all faces.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

  ;;; Apply the above faces with various styling to define and set the theme
  (custom-theme-set-faces `ocean-chroma

                          ;; **Generic built-in elements**

                          ;; Default face
                          `(default ((t
                                      (:foreground ,duck-egg
                                                   :background ,off-black
                                                   :bold nil))))

                          ;; Important information: use traffic light colours
                          `(success ((t
                                      (:foreground ,chroma-green
                                                   :bold t
                                                   :underline nil
                                                   :slant normal))))
                          `(warning ((t
                                      (:foreground ,chroma-yellow
                                                   :bold t
                                                   :underline nil
                                                   :slant normal))))
                          `(error ((t
                                    (:foreground ,chroma-red
                                                 :bold t
                                                 :underline nil
                                                 :slant normal))))

                          ;; Font lock faces
                          `(font-lock-builtin-face ((t
                                                     (:foreground ,chroma-green))))
                          `(font-lock-comment-face ((t
                                                     (:foreground ,mid-teal
                                                                  :slant italic))))
                          `(font-lock-comment-delimiter-face ((t
                                                               (:inherit font-lock-comment-face))))
                          `(font-lock-constant-face ((t
                                                      (:foreground ,chroma-yellow))))
                          ;; Otherwise I would set doc-face as :inherit font-lock-comment-face, but
                          ;; I think documentation is inherently tied to the code (unlike comments
                          ;; which are for developers) so should be highlighted as a code string,
                          ;; though use italics like with comments to imply it is non-functional.
                          `(font-lock-doc-face ((t
                                                 (:inherit font-lock-string-face
                                                           :slant italic))))
                          `(font-lock-function-name-face ((t
                                                           (:foreground ,light-teal))))
                          `(font-lock-keyword-face ((t
                                                     (:foreground ,chroma-red))))
                          `(font-lock-negation-char-face ((t
                                                           (:foreground ,dark-chroma-red))))
                          `(font-lock-preprocessor-face ((t
                                                          (:foreground ,chroma-green
                                                                       :slant italic))))
                          `(font-lock-string-face ((t
                                                    (:foreground ,chroma-blue))))
                          `(font-lock-type-face ((t
                                                  (:foreground ,light-teal))))
                          `(font-lock-variable-name-face ((t
                                                           (:foreground ,off-white))))
                          `(font-lock-warning-face ((t
                                                     (:inherit warning))))

                          ;; Highlighting, including incremental search
                          `(highlight ((t
                                        (:foreground ,chroma-yellow
                                                     :background ,dark-chroma-red))))
                          `(lazy-highlight ((t
                                             (:foreground ,dark-chroma-blue
                                                          :background ,off-white))))
                          `(region ((t
                                     (:background ,dark-teal
                                                  :weight bold))))
                          `(match ((t
                                    (:inherit highlight))))
                          `(isearch ((t
                                      (:inherit highlight))))
                          `(isearch-fail ((t
                                           (:foreground ,chroma-red))))

                          ;; Fringe and fringe elements
                          `(fringe ((t
                                     (:inherit default
                                               :foreground ,light-teal
                                               :background ,very-dark-teal))))
                          `(linum ((t
                                    (:inherit fringe
                                              :foreground ,mid-teal))))
                          `(vertical-border ((t
                                              (:foreground ,dark-teal))))

                          ;; Elements at the head and foot of a window (or frame)
                          `(header-line ((t
                                          (:background ,very-dark-teal
                                                       :weight ultra-bold))))
                          `(minibuffer-prompt ((t
                                                (:inherit highlight
                                                          :weight ultra-bold))))
                          `(mode-line ((t
                                        (:foreground ,chroma-blue
                                                     :background ,dark-chroma-blue
                                                     :weight ultra-bold))))
                          `(mode-line-inactive ((t
                                                 (:inherit fringe
                                                           :background ,dark-teal))))
                          `(mode-line-buffer-id ((t
                                                  (:foreground ,off-white))))
                          `(mode-line-highlight ((t
                                                  (:foreground ,chroma-yellow))))
                          `(mode-line-emphasis ((t
                                                 (:foreground ,chroma-red))))

                          ;; Links and buttons: use traditional style of underlined blues
                          `(link ((t
                                   (:foreground ,chroma-blue
                                                :underline t))))
                          `(link-visited ((t
                                           (:foreground ,dark-chroma-blue
                                                        :underline t))))
                          '(button ((t
                                     (:inherit link
                                               :weight bold))))

                          ;; Other general elements
                          `(cursor ((t
                                     (:foreground ,off-white
                                                  :background ,off-black))))
                          `(tooltip ((t
                                      (:foreground ,off-black
                                                   :background ,duck-egg))))
                          `(shadow ((t
                                     (:foreground ,duck-egg))))
                          `(escape-glyph ((t
                                           (:foreground ,dark-chroma-red
                                                        :bold t))))

                          ;; Note: not including scrollbar or toolbar settings as these are usually
                          ;; set by the OS or environment, hence themes don't usually set them.

                          ;; **Built-in modes**

                          ;; *Outline mode*
                          `(outline-1 ((t
                                        (:foreground ,chroma-yellow))))
                          `(outline-2 ((t
                                        (:foreground ,chroma-red))))
                          `(outline-3 ((t
                                        (:foreground ,chroma-blue))))
                          `(outline-4 ((t
                                        (:foreground ,chroma-green))))
                          `(outline-5 ((t
                                        (:foreground ,chroma-yellow))))
                          `(outline-6 ((t
                                        (:foreground ,chroma-red))))
                          `(outline-7 ((t
                                        (:foreground ,chroma-blue))))
                          `(outline-8 ((t
                                        (:foreground ,chroma-green))))

                          ;; *Compilation*
                          `(compilation-info-face ((t
                                                    (:inherit success))))
                          `(compilation-error-face ((t
                                                     (:inherit error))))
                          `(compilation-warning-face ((t
                                                       (:inherit warning))))
                          `(compilation-info ((t
                                               (:inherit success))))
                          `(compilation-error ((t
                                                (:inherit error))))
                          `(compilation-warning ((t
                                                  (:inherit warning))))
                          `(compilation-mode-line-fail ((t
                                                         (:inherit error))))
                          `(compilation-mode-line-exit ((t
                                                         (:inherit error
                                                                   :foreground ,dark-chroma-red))))
                          `(compilation-mode-line-run ((t
                                                        (:inherit success))))
                          `(compilation-face ((t
                                               (:foreground ,duck-egg))))
                          `(compilation-message-face ((t
                                                       (:foreground ,off-white))))
                          `(compilation-line-face ((t
                                                    (:foreground ,light-teal))))
                          `(compilation-line-number ((t
                                                      (:foreground ,mid-teal))))
                          `(compilation-column-face ((t
                                                      (:foreground ,chroma-blue))))
                          `(compilation-enter-directory-face ((t
                                                               (:foreground ,light-teal))))
                          `(compilation-leave-directory-face ((t
                                                               (:foreground ,mid-teal))))

                          ;; *Org mode*
                          ;; Headings and footnotes
                          `(org-document-info ((t
                                                (:foreground ,light-teal))))
                          `(org-document-info-keyword ((t
                                                        (:foreground ,mid-teal))))
                          `(org-document-title ((t
                                                 (:foreground ,off-white))))
                          `(org-footnote ((t
                                           (:foreground ,light-teal
                                                        :underline t))))

                          ;; Cycle through 'chroma' (primary) colours for nested level headings
                          `(org-level-1 ((t
                                          (:foreground ,chroma-yellow))))
                          `(org-level-2 ((t
                                          (:foreground ,chroma-red))))
                          `(org-level-3 ((t
                                          (:foreground ,chroma-blue))))
                          `(org-level-4 ((t
                                          (:foreground ,chroma-green))))
                          `(org-level-5 ((t
                                          (:foreground ,chroma-yellow))))
                          `(org-level-6 ((t
                                          (:foreground ,chroma-red))))
                          `(org-level-7 ((t
                                          (:foreground ,chroma-blue))))
                          `(org-level-8 ((t
                                          (:foreground ,chroma-green))))

                          ;; Other prominent org elements e.g. level markers and links
                          `(org-tag ((t
                                      (:slant italic
                                              :underline t))))
                          `(org-ellipsis ((t
                                           (:foreground ,off-white))))
                          `(org-hide ((t
                                       (:foreground ,off-white))))
                          `(org-link ((t
                                       (:inherit link))))
                          `(org-warning ((t
                                          (:inherit warning))))

                          ;; Column view
                          `(org-column ((t
                                         (:background ,extra-dark-teal))))
                          `(org-column-title ((t
                                               (:background ,very-dark-teal
                                                            :underline t
                                                            :weight bold))))

                          ;; Code blocks
                          '(org-meta-line ((t
                                            (:inherit linum))))
                          `(org-block ((t
                                        (:background ,extra-dark-teal))))
                          `(org-block-background ((t
                                                   (:background ,extra-dark-teal))))

                          ;; Tables and grids, including table formulae
                          `(org-table ((t
                                        (:foreground ,light-teal))))
                          `(org-formula ((t
                                          (:foreground ,dark-chroma-red))))
                          `(org-time-grid ((t
                                            (:foreground ,light-teal))))

                          ;; Drawers
                          `(org-drawer ((t
                                         (:foreground ,dark-chroma-red))))

                          ;; Task- and deadline- related org features: prominent in white
                          `(org-todo ((t
                                       (:bold t
                                              :foreground ,off-white
                                              :weight bold))))
                          `(org-special-keyword ((t
                                                  (:inherit org-todo))))
                          `(org-priority ((t
                                           (:inherit org-todo
                                                     :underline t))))
                          `(org-done ((t
                                       (:bold t
                                              :foreground ,light-teal
                                              :weight bold))))
                          `(org-headline-done ((t
                                                (:inherit org-done
                                                          :weight ultra-bold))))
                          `(org-checkbox ((t
                                           (:inherit lazy-highlight))))
                          `(org-checkbox-statistics-done ((t
                                                           (:inherit org-done))))
                          `(org-checkbox-statistics-todo ((t
                                                           (:inherit org-todo))))

                          ;; Dates and deadlines
                          `(org-date ((t
                                       (:foreground ,off-white
                                                    :underline t))))
                          `(org-deadline-announce ((t
                                                    (:inherit org-date
                                                              :weight ultra-bold))))
                          `(org-upcoming-deadline ((t
                                                    (:inherit warning))))

                          ;; Agenda and calendaring
                          `(org-scheduled ((t
                                            (:foreground ,chroma-yellow
                                                         :weight bold))))
                          `(org-scheduled-previously ((t
                                                       (:foreground ,chroma-green))))
                          `(org-scheduled-today ((t
                                                  (:foreground ,chroma-red))))
                          `(org-agenda-clocking ((t
                                                  (:inherit mode-line))))
                          `(org-agenda-date-today ((t
                                                    (:inherit org-date
                                                              :slant italic
                                                              :weight bold))))
                          `(org-agenda-structure ((t
                                                   (:foreground ,duck-egg))))
                          `(org-sexp-date ((t
                                            (:foreground ,dark-chroma-red))))
                          `(org-archived ((t
                                           (:foreground ,mid-teal))))

                          ;; Clocks
                          `(org-mode-line-clock ((t
                                                  (:inherit mode-line
                                                            :foreground ,chroma-yellow))))
                          `(org-mode-line-clock-overrun ((t
                                                          (:inherit mode-line
                                                                    :foreground ,chroma-red))))

                          ;; *Diffs, diff-mode and diff-hl*
                          ;; Changes
                          `(diff-added ((t
                                         (:background ,dark-chroma-green
                                                      :foreground ,chroma-green))))
                          `(diff-changed ((t
                                           (:background ,dark-chroma-blue
                                                        :foreground ,off-white))))
                          `(diff-removed ((t
                                           (:background ,maroon
                                                        :foreground ,dark-chroma-red))))

                          ;; Context lines
                          `(diff-context ((t
                                           (:foreground ,duck-egg))))
                          `(diff-header ((t
                                          (:foreground ,off-white
                                                       :weight ultra-bold))))
                          `(diff-file-header ((t
                                               (:foreground ,light-teal
                                                            :weight ultra-bold))))
                          `(diff-hunk-header ((t
                                               (:foreground ,off-white))))
                          `(diff-index ((t
                                         (:foreground ,off-white
                                                      :slant italic))))
                          `(diff-function ((t
                                            (:foreground ,light-teal))))
                          `(diff-nonexistent ((t
                                               (:inherit lazy-highlight))))

                          ;; Refinements and indicators
                          `(diff-refine-added ((t
                                                (:inherit diff-added
                                                          :slant italic))))
                          `(diff-refine-changed ((t
                                                  (:inherit diff-changed
                                                            :slant italic))))
                          `(diff-refine-removed ((t
                                                  (:inherit diff-removed
                                                            :slant italic))))
                          `(diff-indicator-added ((t
                                                   (:inherit diff-added))))
                          `(diff-indicator-changed ((t
                                                     (:inherit diff-changed))))
                          `(diff-indicator-removed ((t
                                                     (:inherit diff-removed))))

                          ;; Chnages with diff-hl mode
                          `(diff-hl-insert ((t
                                             (:inherit fringe
                                                       :foreground ,chroma-green))))
                          `(diff-hl-change ((t
                                             (:inherit fringe
                                                       :foreground ,off-white))))
                          `(diff-hl-delete ((t
                                             (:inherit fringe
                                                       :foreground ,chroma-red))))
  )
) ; let* ends here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Provision of theme

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory
                                                                   load-file-name))))

(provide-theme 'ocean-chroma)

;;; ocean-chroma-theme.el ends here
