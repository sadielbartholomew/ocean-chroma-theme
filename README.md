# ocean-chroma-theme

### A fresh dark colour theme for Emacs 24+ based on blue-green and primary colours

`ocean-chroma` is a dark theme that is based upon ocean-like teal colours
('ocean') and bold primary (blue, red, green) and secondary (yellow) 'chroma'
colours, providing a style that is striking, allowing quick comprehension of
syntactic and organisational elements via bold colouring, but also
harmonious (read: not ugly), where guide and background elements are generally
depicted in the more subtle ocean colours.


## Screenshots

A screenshot showcasing `ocean-chroma` for two windows split vertically, both
with a Python file in the buffer, where an incremental search has been
initiated to demonstrate the minibuffer prompt and examples of highlighting:

![ocean_chroma_theme_screenshot_python_isearch](img/screenshot-python-isearch.png)

Another screenshot illustrating `ocean-chroma` for three windows, namely:

* at top left, a window with a `dired` listing after some markings have been
  made;
* at bottom left, a window with a basic `org-mode` file open showing for
  example a code block with themed syntax highlighting and use of a
  variable-pitch font (see below for details);
* on the right, an Emacs Lisp buffer that additionally demonstrates the
  highlighting of a region:

![ocean_chroma_theme_screenshot_dired_org_lisp](img/screenshot-dired-org-lisp.png)

Note that the screenshots above are taken with my personal
[`.emacs` configuration](https://github.com/sadielbartholomew/sadielbartholomew/blob/master/dotfiles/.emacs),
where, notably:

* the `Iosevka SS02 Medium` font is used for frames and fixed-pitch aspects
  and `CMU Sans Serif` font (in bold) is used for variable-pitch aspects;
* certain third-party packagaes are enabled and minimally configured
  (without changing the style configured by the `ocean-chroma` theme) such as
  `hl-line`, `col-highlight`, `highlight-indentation`, and `awesome-tab`.


## Underlying colour scheme

Only sixteen harmonious colours are used for this theme, namely the
following palette:

![ocean_chroma_theme_colour_palette](img/ocean_chroma_palette.png)


## Status

:pushpin: **The `ocean-chroma` theme is functional and ready-for-use, but note
it is still under development so a lot of third-party customisation has not
yet been added or tweaked to best effect.** :pushpin:

Explicitly, this theme as-is includes:

* full customisation covering *all* built-in faces and generic elements
  (e.g. those relating to the fringe, highlighting, incremental search,
  the mode line, tool tips, links, diffs etc.);

* full customisation of *many* built-in modes, though not all of them (other
  than indirect customisation by inheritance of faces that are already
  directly customised), those modes currently being:
  * `org-mode`;
  * `outline-mode`;
  * `compilation-mode`;
  * `diff-mode`;
  * `smerge-mode`;
  * `whitespace-mode`;
  * `dired`;
  * `git` built-in modes (so not including `magit`, etc.);

* full customisation of *some* third-party modules, namely (so far):
  * `col-highlight`;
  * `hl-line`;
  * `diff-hl`;
  * `fill-column-indicator`;
  * `highlight-indentation`;
  * `visible-mark`;
  * `rainbow-delimiters`;
  * `hlinum`.
