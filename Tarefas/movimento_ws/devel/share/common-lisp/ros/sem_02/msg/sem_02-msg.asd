
(cl:in-package :asdf)

(defsystem "sem_02-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msgpersonalizada" :depends-on ("_package_msgpersonalizada"))
    (:file "_package_msgpersonalizada" :depends-on ("_package"))
  ))