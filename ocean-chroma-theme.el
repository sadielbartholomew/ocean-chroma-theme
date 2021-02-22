;;; ocean-chroma-theme.el :: Fresh dark colour theme for Emacs 24+
;;
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
;;     Max line lengthof file: 99

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Definition of theme

(deftheme ocean-chroma "Fresh dark colour theme for Emacs 24+")

(let*

    ;;; Define the full (fairly minimal) colour scheme used by the theme
    (
     ;; Shades of 'ocean' i.e. blue-green colours, increasingly dark
     (duck-egg           "#8FBCB5")     ; i.e. very-light-teal
     (light-teal         "#33859D")
     (mid-teal           "#004B66")
     (dark-teal          "#00384D")
     (very-dark-teal     "#001B25")

     ;; Complementary 'chroma' primary (RGB) colours (plus secondary yellow)
     (chroma-red         "#D22D2D")
     (chroma-blue        "#3980C6")
     (chroma-yellow      "#FFDF80")
     (chroma-green       "#00B386")

     ;; Darker variations on 'chroma' colours (minus dark yellow which is ugly)
     (dark-chroma-red    "#9C1626")
     (dark-chroma-blue   "#00264D")
     (dark-chroma-green  "#004D39")

     ;; Variants on black and white
     (off-black          "#0A0F14")
     (off-white          "#E5E5FF")     ; a very bright-looking white
     )

  ;;; Apply the above faces with various styling to define and set the theme.
  (custom-theme-set-faces `ocean-chroma

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
                          `(error
                            ((t
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
                          `(font-lock-constant-face ((t
                                                      (:foreground ,chroma-yellow))))
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

                          ;; Inheriting font lock faces
                          `(font-lock-comment-delimiter-face ((t
                                                               (:inherit font-lock-comment-face))))
                          ;; Otherwise I would set doc-face as :inherit font-lock-comment-face, but
                          ;; I think documentation is inherently tied to the code (unlike comments
                          ;; which are for developers) so should be highlighted as a code string.
                          `(font-lock-doc-face ((t
                                                 (:inherit font-lock-string-face
                                                           :slant italic))))
                          `(font-lock-warning-face ((t
                                                     (:inherit warning))))


                          ;; Cursor
                          `(cursor ((t
                                     (:foreground ,off-white
                                                  :background ,off-black))))

                          ;; Highlighting
                          `(highlight ((t
                                        (:foreground ,chroma-yellow
                                                     :background ,dark-chroma-red))))
                          `(lazy-highlight ((t
                                             (:foreground ,dark-chroma-blue
                                                          :background ,off-white))))
                          `(region ((t
                                     (:background ,dark-chroma-blue))))
                          `(match ((t
                                    (:inherit highlight))))
                          `(isearch ((t
                                      (:inherit highlight))))
                          `(isearch-fail ((t
                                           (:foreground ,chroma-red))))

                          ;; Fringes and fringe elements
                          `(fringe ((t
                                     (:inherit default
                                               :foreground ,light-teal
                                               :background ,very-dark-teal))))
                          `(linum ((t
                                    (:inherit fringe
                                              :foreground ,mid-teal))))

                          ;; Elements at the foot of a window (or frame): minibuffer and mode line
                          `(minibuffer-prompt ((t
                                                (:inherit highlight
                                                          :weight ultra-bold))))
                          `(mode-line-inactive ((t
                                                 (:inherit fringe
                                                           :background ,dark-teal))))
                          `(mode-line ((t
                                        (:foreground ,off-white
                                                     :background ,dark-chroma-blue
                                                     :weight ultra-bold))))

                          ;; Links in traditional hyperlink blues
                          `(link ((t
                                   (:foreground ,chroma-blue
                                                :underline t))))
                          `(link-visited ((t
                                           (:foreground ,dark-chroma-blue
                                                        :underline t))))
)) ; let* ends here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Provision of theme

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory
                                                                   load-file-name))))

(provide-theme 'ocean-chroma)

;;; ocean-chroma-theme.el ends here
