# completing-read-sly

This is a simple package that provides `completing-read` for Sly symbols. When a symbol is selected, a definition of the symbol is shown.

Use the completion framework of your choice, whether [ivy](https://github.com/abo-abo/swiper), [vertico](https://github.com/minad/vertico), [mct](https://git.sr.ht/~protesilaos/mct), or just the standard icomplete.

## Installation

```
(straight-use-package
 '(completing-read-sly
   :type git
   :host github
   :repo "enzuru/completing-read-sly"))
(require 'completing-read-sly)

(define-key common-lisp-mode-map (kbd "C-h s") 'completing-read-sly-describe-symbol)
(define-key sly-repl-mode-map (kbd "C-h s") 'completing-read-sly-describe-symbol)
```

### Using with Ivy

```lisp
(setf completing-read-function #'ivy-completing-read)
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
