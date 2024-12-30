;;; Learn X in Y minutes

(defun hello (target)
  (insert (format "Hello, %s\n" target)))

(switch-to-buffer-other-window "*test*")

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "there")
  (other-window 1))

(let ((local-name "you"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

(read-from-minibuffer "Enter your name: ")
(let ((local-name (read-from-minibuffer "Enter your name: ")))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

(setq list-of-names '("Sarah" "Chloe" "Mathilde"))
(car list-of-names)
(cdr list-of-names)
(push "Stephanie" list-of-names)
(mapcar 'hello list-of-names)

(defun greeting ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (other-window 1))

(greeting)

(defun replace-hello-by-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "Hello" nil t)
    (replace-match "Bonjour"))
  (other-window 1))

(replace-hello-by-bonjour)

(defun boldify-names ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-forward "Bonjour, \\(.+\\)" nil t)
    (add-text-properties (match-beginning 1)
                         (match-end 1)
                         (list 'face 'bold)))
  (other-window 1))

(boldify-names)
