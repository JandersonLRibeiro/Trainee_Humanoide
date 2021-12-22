
(cl:in-package :asdf)

(defsystem "sem_03-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "srvpersonalizado" :depends-on ("_package_srvpersonalizado"))
    (:file "_package_srvpersonalizado" :depends-on ("_package"))
  ))