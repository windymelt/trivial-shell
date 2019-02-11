#|
  This file is a part of trivial-shell project.
  Copyright (c) 2019 Windymelt
|#

(in-package :cl-user)
(defpackage trivial-shell-test-asd
  (:use :cl :asdf))
(in-package :trivial-shell-test-asd)

(defsystem trivial-shell-test
  :author "Windymelt"
  :license ""
  :depends-on (:trivial-shell
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "trivial-shell"))))
  :description "Test system for trivial-shell"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
