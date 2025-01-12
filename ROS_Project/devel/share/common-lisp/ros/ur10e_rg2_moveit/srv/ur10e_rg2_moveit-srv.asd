
(cl:in-package :asdf)

(defsystem "ur10e_rg2_moveit-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
               :ur10e_rg2_moveit-msg
)
  :components ((:file "_package")
    (:file "MoverService" :depends-on ("_package_MoverService"))
    (:file "_package_MoverService" :depends-on ("_package"))
  ))