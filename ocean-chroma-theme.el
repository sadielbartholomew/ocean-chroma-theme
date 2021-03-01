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
   (dark-teal          "#00384D")
   (very-dark-teal     "#001B25")
   (extra-dark-teal    "#00131A")

   ;; Complementary 'chroma' primary (RGB) colours (plus secondary yellow)
   (chroma-red         "#D22D2D")
   (chroma-blue        "#3980C6")
   (chroma-yellow      "#FFDF80")
   (chroma-green       "#00B386")

   ;; Darker variations on some 'chroma' colours
   (dark-chroma-red    "#9C1626")
   (dark-chroma-blue   "#00264D")

   ;; Variants on black and white
   (off-black          "#0A0F14")
   (off-white          "#E5E5FF")  ; a very bright-looking white

   ;; Some other complementary colours for extra elements
   (maroon             "#28000E")
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
