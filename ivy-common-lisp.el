;;; ivy-common-lisp.el --- Ivy support for Common Lisp symbols

;; Copyright (C) enzu.ru
;; SPDX-License-Identifier: GPL-3.0

;;; Code:

(defun ivy-describe-common-lisp-symbol ()
  "Forward to `describe-tab'."
  (interactive)
  (ivy-read "Describe symbol: "
            (let* ((recent-tabs (mapcar (lambda (tab)
                                          (alist-get 'name tab))
                                        (tab-bar--tabs-recent))))
              recent-tabs)
            ;; :keymap counsel-describe-map
            :history 'ivy-describe-common-lisp-symbol-history
            :require-match t
            :action (lambda (symbol)
                     (sly-hyperspec-lookup symbol))
            :caller 'ivy-describe-common-lisp-symbol))

(provide 'counsel-tabs)
