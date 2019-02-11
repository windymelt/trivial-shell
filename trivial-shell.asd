#|
  This file is a part of trivial-shell project.
  Copyright (c) 2019 Windymelt
|#

#|
  Author: Windymelt
|#

(in-package :cl-user)
(defpackage trivial-shell-asd
  (:use :cl :asdf))
(in-package :trivial-shell-asd)

(defsystem trivial-shell
  :version "0.1"
  :author "Windymelt"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "trivial-shell"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op trivial-shell-test))))
