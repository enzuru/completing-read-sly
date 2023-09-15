# completing-read-sly

This is a simple package that provides `completing-read` for SLY symbols. When a symbol is selected, a definition of the symbol is shown.

Use the completion framework of your choice, whether [ivy](https://github.com/abo-abo/swiper), [vertico](https://github.com/minad/vertico), [mct](https://git.sr.ht/~protesilaos/mct), or just the standard icomplete.

I have only tested this with SBCL, as that is the only Common Lisp distribution that I use.

I run the completion query using `(apropos-list "" nil t)`. If I need to do something else for your Common Lisp distribution, please submit a pull request.

## Installation

```lisp
(straight-use-package
 '(completing-read-sly
   :type git
   :host github
   :repo "enzuru/completing-read-sly"))
(require 'completing-read-sly)

(define-key common-lisp-mode-map (kbd "C-h s") 'completing-read-sly-describe-symbol)
(define-key sly-mrepl-mode-map (kbd "C-h s") 'completing-read-sly-describe-symbol)
```

### Using with Ivy

```lisp
(setq completing-read-function #'ivy-completing-read)
```

## License

Licensed under the GPLv3; copyright is assigned to my eponymous nonprofit [enzu.ru](https://enzu.ru)
