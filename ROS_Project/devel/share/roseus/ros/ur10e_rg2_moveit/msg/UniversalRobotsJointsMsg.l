;; Auto-generated. Do not edit!


(when (boundp 'ur10e_rg2_moveit::UniversalRobotsJointsMsg)
  (if (not (find-package "UR10E_RG2_MOVEIT"))
    (make-package "UR10E_RG2_MOVEIT"))
  (shadow 'UniversalRobotsJointsMsg (find-package "UR10E_RG2_MOVEIT")))
(unless (find-package "UR10E_RG2_MOVEIT::UNIVERSALROBOTSJOINTSMSG")
  (make-package "UR10E_RG2_MOVEIT::UNIVERSALROBOTSJOINTSMSG"))

(in-package "ROS")
;;//! \htmlinclude UniversalRobotsJointsMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ur10e_rg2_moveit::UniversalRobotsJointsMsg
  :super ros::object
  :slots (_joints _pick_pose _place_pose ))

(defmethod ur10e_rg2_moveit::UniversalRobotsJointsMsg
  (:init
   (&key
    ((:joints __joints) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:pick_pose __pick_pose) (instance geometry_msgs::Pose :init))
    ((:place_pose __place_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _pick_pose __pick_pose)
   (setq _place_pose __place_pose)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:pick_pose
   (&rest __pick_pose)
   (if (keywordp (car __pick_pose))
       (send* _pick_pose __pick_pose)
     (progn
       (if __pick_pose (setq _pick_pose (car __pick_pose)))
       _pick_pose)))
  (:place_pose
   (&rest __place_pose)
   (if (keywordp (car __place_pose))
       (send* _place_pose __place_pose)
     (progn
       (if __place_pose (setq _place_pose (car __place_pose)))
       _place_pose)))
  (:serialization-length
   ()
   (+
    ;; float64[6] _joints
    (* 8    6)
    ;; geometry_msgs/Pose _pick_pose
    (send _pick_pose :serialization-length)
    ;; geometry_msgs/Pose _place_pose
    (send _place_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[6] _joints
     (dotimes (i 6)
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _pick_pose
       (send _pick_pose :serialize s)
     ;; geometry_msgs/Pose _place_pose
       (send _place_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _joints
   (dotimes (i (length _joints))
     (setf (elt _joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Pose _pick_pose
     (send _pick_pose :deserialize buf ptr-) (incf ptr- (send _pick_pose :serialization-length))
   ;; geometry_msgs/Pose _place_pose
     (send _place_pose :deserialize buf ptr-) (incf ptr- (send _place_pose :serialization-length))
   ;;
   self)
  )

(setf (get ur10e_rg2_moveit::UniversalRobotsJointsMsg :md5sum-) "3894bb7ef9fbb4e54ec5ad55d9a45d5d")
(setf (get ur10e_rg2_moveit::UniversalRobotsJointsMsg :datatype-) "ur10e_rg2_moveit/UniversalRobotsJointsMsg")
(setf (get ur10e_rg2_moveit::UniversalRobotsJointsMsg :definition-)
      "float64[6] joints
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ur10e_rg2_moveit/UniversalRobotsJointsMsg "3894bb7ef9fbb4e54ec5ad55d9a45d5d")


