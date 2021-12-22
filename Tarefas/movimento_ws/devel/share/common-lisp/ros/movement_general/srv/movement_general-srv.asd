
(cl:in-package :asdf)

(defsystem "movement_general-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "week_4_srv" :depends-on ("_package_week_4_srv"))
    (:file "_package_week_4_srv" :depends-on ("_package"))
  ))