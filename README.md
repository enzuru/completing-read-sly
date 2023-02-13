# Ivy completion for Common Lisp symbols

This is a simple package that provides Ivy completion for Common Lisp symbols.

Only symbols from the final 1994 specification of Common Lisp are provided for now.

## Installation

```
(straight-use-package
 '(ivy-common-lisp
   :type git
   :host github
   :repo "enzuru/ivy-common-lisp"))
```

If using Sly:

```
(setq ivy-common-lisp-spec-function 'sly-hyperspec-lookup)
```

If using Slime:

```
(setq ivy-common-lisp-spec-function 'slime-hyperspec-lookup)
```
