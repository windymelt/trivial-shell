(in-package :cl-user)
(defpackage trivial-shell
  (:use :cl)
  (:export
   :*$0*
   :*$0-dir*
   :*$0-basename*
   :move-into-script-directory
   :path-from-script-dir))
(in-package :trivial-shell)

(defparameter *$0*
  *load-pathname*
  "An alias for *LOAD-PATHNAME*. The path for running image.")

(defparameter *$0-dir*
  (make-pathname :defaults *load-pathname* :name nil :type nil)
  "The directory path which contains *$0*.")

(defparameter *$0-basename*
  (make-pathname :defaults *load-pathname* :directory nil)
  "The name for running image, without directory part.")

(defun move-into-script-directory ()
  "Change current directory as *0-DIR*. Useful for pwd-independent scripting."
  (uiop:chdir *$0-dir*))

(defun path-from-script-dir (pathname)
  "Returns merged path from script directory."
  (uiop:merge-pathnames* pathname *$0-dir*))
