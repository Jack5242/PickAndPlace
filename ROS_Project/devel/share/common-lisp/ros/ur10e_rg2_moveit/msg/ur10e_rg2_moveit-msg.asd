
(cl:in-package :asdf)

(defsystem "ur10e_rg2_moveit-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
)
  :components ((:file "_package")
    (:file "UniversalRobotsJointsMsg" :depends-on ("_package_UniversalRobotsJointsMsg"))
    (:file "_package_UniversalRobotsJointsMsg" :depends-on ("_package"))
    (:file "Ur10eMoveitJoints" :depends-on ("_package_Ur10eMoveitJoints"))
    (:file "_package_Ur10eMoveitJoints" :depends-on ("_package"))
    (:file "Ur10eTrajectory" :depends-on ("_package_Ur10eTrajectory"))
    (:file "_package_Ur10eTrajectory" :depends-on ("_package"))
  ))