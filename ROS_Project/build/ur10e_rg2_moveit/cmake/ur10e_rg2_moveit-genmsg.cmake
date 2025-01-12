# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur10e_rg2_moveit: 3 messages, 1 services")

set(MSG_I_FLAGS "-Iur10e_rg2_moveit:/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Imoveit_msgs:/home/huy/ROS_Project/devel/share/moveit_msgs/msg;-Imoveit_msgs:/home/huy/ROS_Project/src/moveit_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/noetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur10e_rg2_moveit_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" NAME_WE)
add_custom_target(_ur10e_rg2_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur10e_rg2_moveit" "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" NAME_WE)
add_custom_target(_ur10e_rg2_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur10e_rg2_moveit" "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" NAME_WE)
add_custom_target(_ur10e_rg2_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur10e_rg2_moveit" "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" "trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Twist:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Transform:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:moveit_msgs/RobotTrajectory"
)

get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" NAME_WE)
add_custom_target(_ur10e_rg2_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur10e_rg2_moveit" "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" "trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Twist:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Transform:trajectory_msgs/MultiDOFJointTrajectory:ur10e_rg2_moveit/Ur10eMoveitJoints:trajectory_msgs/JointTrajectory:geometry_msgs/Point:moveit_msgs/RobotTrajectory"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_cpp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_cpp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Services
_generate_srv_cpp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Module File
_generate_module_cpp(ur10e_rg2_moveit
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur10e_rg2_moveit_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur10e_rg2_moveit_generate_messages ur10e_rg2_moveit_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_cpp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_cpp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_cpp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_cpp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10e_rg2_moveit_gencpp)
add_dependencies(ur10e_rg2_moveit_gencpp ur10e_rg2_moveit_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10e_rg2_moveit_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_eus(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_eus(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Services
_generate_srv_eus(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Module File
_generate_module_eus(ur10e_rg2_moveit
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ur10e_rg2_moveit_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ur10e_rg2_moveit_generate_messages ur10e_rg2_moveit_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_eus _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_eus _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_eus _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_eus _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10e_rg2_moveit_geneus)
add_dependencies(ur10e_rg2_moveit_geneus ur10e_rg2_moveit_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10e_rg2_moveit_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_lisp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_lisp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Services
_generate_srv_lisp(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Module File
_generate_module_lisp(ur10e_rg2_moveit
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur10e_rg2_moveit_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur10e_rg2_moveit_generate_messages ur10e_rg2_moveit_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_lisp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_lisp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_lisp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_lisp _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10e_rg2_moveit_genlisp)
add_dependencies(ur10e_rg2_moveit_genlisp ur10e_rg2_moveit_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10e_rg2_moveit_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_nodejs(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_nodejs(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Services
_generate_srv_nodejs(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Module File
_generate_module_nodejs(ur10e_rg2_moveit
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ur10e_rg2_moveit_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ur10e_rg2_moveit_generate_messages ur10e_rg2_moveit_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10e_rg2_moveit_gennodejs)
add_dependencies(ur10e_rg2_moveit_gennodejs ur10e_rg2_moveit_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10e_rg2_moveit_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_py(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit
)
_generate_msg_py(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Services
_generate_srv_py(ur10e_rg2_moveit
  "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/huy/ROS_Project/src/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit
)

### Generating Module File
_generate_module_py(ur10e_rg2_moveit
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur10e_rg2_moveit_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur10e_rg2_moveit_generate_messages ur10e_rg2_moveit_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/UniversalRobotsJointsMsg.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_py _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eMoveitJoints.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_py _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/msg/Ur10eTrajectory.msg" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_py _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/huy/ROS_Project/src/ur10e_rg2_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(ur10e_rg2_moveit_generate_messages_py _ur10e_rg2_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10e_rg2_moveit_genpy)
add_dependencies(ur10e_rg2_moveit_genpy ur10e_rg2_moveit_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10e_rg2_moveit_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10e_rg2_moveit
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10e_rg2_moveit
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ur10e_rg2_moveit_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ur10e_rg2_moveit_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(ur10e_rg2_moveit_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ur10e_rg2_moveit_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10e_rg2_moveit
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ur10e_rg2_moveit_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10e_rg2_moveit
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ur10e_rg2_moveit_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10e_rg2_moveit
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ur10e_rg2_moveit_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ur10e_rg2_moveit_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(ur10e_rg2_moveit_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ur10e_rg2_moveit_generate_messages_py sensor_msgs_generate_messages_py)
endif()
