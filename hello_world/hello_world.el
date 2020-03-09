;;; Code:
(defun hello_world()
  "Say hello to the world."  ;;; Doc string for function
  (interactive) ;;; Registers this function as a command that can be invoked with M-x
  (message   "Hello, world!" )) ;;; message writes output the messages buffer and the echo area

(hello_world) ;;; this calls the function directly. Evaluate the buffer to see the message.
