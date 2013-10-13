;;; http-headers.el --- Look up the meaning of HTTP headers
;;
;; This file was automatically generated by
;; https://github.com/for-GET/know-your-http-well
;;
;;; Commentary:
;;; Code goes here:

(defconst http-headers
  '({{ HTTP_HEADERS }}))

;;;###autoload
(defun http-header (header)
  "Display the meaning of an HTTP header"
  (interactive
   (list (completing-read "Enter HTTP header: " http-headers)))
  (let* ((lowercased-header (downcase header))
        (found (assoc lowercased-header http-headers)))
    (if found
        (let ((description (car (cdr found))))
          (message
           "%s - HTTP header\n%s"
           lowercased-header (car description) ))
      (message "%s - HTTP header\nUNKNOWN" lowercased-header))
    ))

(provide 'http-headers)

;;; http-headers.el ends here
