;;; completing-read-sly.el --- Search Sly symbols with completing-read  -*- lexical-binding:t; coding:utf-8 -*-

;; Copyright (C) enzu.ru

;; Homepage: https://github.com/enzuru/completing-read-sly
;; Keywords: lisp matching tools

;; Package-Version: 1.0.0
;; Package-Requires: ((emacs "24.4") (sly "1.0"))

;; SPDX-License-Identifier: GPL-3.0

;;; Commentary:

;; completing-read-sly provides a list of symbols available in your Sly session

;;; Code:

(require 'sly)

(defun completing-read-sly--get-symbol (unparsed-string)
  "Grab symbol from UNPARSED-STRING."
  (string-match "\\(?:^\\|[^:]:\\)[[:space:]]+\\([^[:space:]]+\\)" unparsed-string)
  (match-string 1 unparsed-string))

(defun completing-read-sly-search ()
  "Send apropos command to Sly."
  (let* ((result (sly-eval `(common-lisp:apropos-list "" nil t))))
    result))

(defun completing-read-sly ()
  "Get list of symbols available in your Sly session"
  (interactive)
  (sly-describe-symbol
   (completing-read "Look up symbol in Sly: " (completing-read-sly-search))))

(provide 'completing-read-sly)

;;; completing-read-sly.el
