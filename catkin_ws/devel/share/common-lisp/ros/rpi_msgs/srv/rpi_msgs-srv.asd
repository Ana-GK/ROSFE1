
(cl:in-package :asdf)

(defsystem "rpi_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "safetyZone" :depends-on ("_package_safetyZone"))
    (:file "_package_safetyZone" :depends-on ("_package"))
  ))