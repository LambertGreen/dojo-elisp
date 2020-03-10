;;; Code:

;;; Manual
(info "elisp")

;;; Arithmetic
(+ 1 2 3)
(* 2 2 2)
(/ 100 2 2)
(expt 2 8)
(expt 2 100)

;;; Printing
(message "hi")
(message "The number is %d" 16)
(message "The string is %s" "foobar")
(message "The list is %S" (list 8 4 "three"))


;;; True/False
(if t "yes" "no") ; yes
(if nil "yes" "no") ; no
(if () "yes" "no") ; no
;;; There is no boolean datatype in elisp. nil and empty list () are false, anything else is true

;;; Boolean functions
(and t t t)
(and t nil t)
(or nil t t nil)
(equal 3 3)
(equal 3.0 3.0)
(equal 3 3.0); nil. Because datatypes don't match.
(not (equal 3 4))
(= 2 2); = can be used for numbers only

;;; Variables
(info "(elisp) Variables")
;;; Global variables
(setq one 1)
(setq alpha "a" beta "b" delta "d")
;;; Local variables
(let (x y)
  (setq x "ThisX")
  (setq y "ThisY")
(message "This is %s and this is %s" x  y))
;;; Another way to define locals
(let ((x "X") (y "Y"))
(message "This is %s and this is %s" x  y)
  )

;;; If Then Else
(info "(elisp) Control Structures")
;;;
(if (< 1 2 3) "increasing" "not-increasing")
(when (> 1 2 3) "not-increasing"); nil

;;; Sequencing with progn
(info "(elisp) Sequencing")
(progn 1 2 3 4); ensures order of execution and return last expression

;;; Looping
(setq x 0)
(while (< x 4)
  (print (format "number is %d" x))
  (setq x (+ x 1)))

;;; Functions/commands
(defun foobar()
  "One sentence summary of this command.

More detailed documentation here."
  (interactive)
  (let (x y z)
    ; do something here
    ; ...
    ; last expression is returned
    )
  )


;;; Lists
(setq my-names '("Bob" "Rob" "Job"))
;;; get first element using car
(car my-names)
;;; get the list without the first item
(cdr my-names)
;;; add an element
(push "Nob" my-names)
;;; do something for each element
(defun my-hello (name)
  (message "Hi, %s" name )
  )
(my-hello "Adam")
(mapcar 'my-hello  my-names)
