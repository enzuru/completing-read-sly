# Ivy completion for Common Lisp symbols

This is a simple package that provides [Ivy](https://github.com/abo-abo/swiper) completion for Common Lisp symbols, along with opening their definitions in either Emacs or the [Common Lisp HyperSpec](http://www.lispworks.com/documentation/HyperSpec/Front/).

Only symbols from the final 1994 specification of Common Lisp are provided for now.

All these symbols are listed in a constant variable called `ivy-common-lisp-spec-symbols`.

## Installation

```
(straight-use-package
 '(ivy-common-lisp
   :type git
   :host github
   :repo "enzuru/ivy-common-lisp"))
```

If using [Sly](https://github.com/joaotavora/sly):

```
(setq ivy-common-lisp-spec-function 'sly-hyperspec-lookup)
;; or
(setq ivy-common-lisp-spec-function 'sly-describe-symbol)
```

If using [Slime](https://slime.common-lisp.dev):

```
(setq ivy-common-lisp-spec-function 'slime-hyperspec-lookup)
;; or
(setq ivy-common-lisp-spec-function 'slime-describe-symbol)
```

## Tips

I personally think that the HyperSpec works best with [EWW](https://www.gnu.org/software/emacs/manual/html_mono/eww.html):

```
(setq browse-url-browser-function 'eww-browse-url)
```

## Thoughts

In the long run we will want to find a [libre](https://www.gnu.org/philosophy/free-sw.en.html) Common Lisp specification on the web that will be reliable.

It is also possible to use the [GNU Common Lisp](https://www.gnu.org/software/gcl/) [Info](https://www.gnu.org/software/emacs/manual/html_mono/info.html) file to lookup these symbols, but I haven't implemented that in this library yet.

## License

Licensed under the GPLv3; copyright is assigned to my eponymous nonprofit [enzu.ru](https://enzu.ru)
