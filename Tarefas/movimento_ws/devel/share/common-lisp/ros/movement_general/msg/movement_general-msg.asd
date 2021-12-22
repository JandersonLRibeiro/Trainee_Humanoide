
(cl:in-package :asdf)

(defsystem "movement_general-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "week_4" :depends-on ("_package_week_4"))
    (:file "_package_week_4" :depends-on ("_package"))
  ))