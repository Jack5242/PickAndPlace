# Install script for directory: /home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/huy/ROS_Project/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/RPY.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/ShiftPose.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/RobotState.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/ToolCommand.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/ProcessState.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/HardwareStatus.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/LogStatus.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/DigitalIOState.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/Sequence.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/Position.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/Trajectory.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/ObjectPose.msg"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/srv" TYPE FILE FILES
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetInt.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/RobotMove.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ManageProcess.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetLeds.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetInt.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/PingDxlTool.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/OpenGripper.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/CloseGripper.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetSequenceList.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ManageSequence.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ManagePosition.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetPositionList.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetString.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ObjDetection.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/EditGrip.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/EditWorkspace.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetTargetPose.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/TakePicture.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/SetConveyor.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/ControlConveyor.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/DebugMarkers.srv"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/action" TYPE FILE FILES
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/action/JoystickJoints.action"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/action/RobotMove.action"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/action/Tool.action"
    "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/action/Sequence.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolAction.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
    "/home/huy/ROS_Project/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/home/huy/ROS_Project/build/ur10e_rg2_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/huy/ROS_Project/devel/include/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/huy/ROS_Project/devel/share/roseus/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/huy/ROS_Project/devel/share/common-lisp/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/huy/ROS_Project/devel/share/gennodejs/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/huy/ROS_Project/devel/lib/python3/dist-packages/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/huy/ROS_Project/devel/lib/python3/dist-packages/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/huy/ROS_Project/build/ur10e_rg2_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/home/huy/ROS_Project/build/ur10e_rg2_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES
    "/home/huy/ROS_Project/build/ur10e_rg2_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig.cmake"
    "/home/huy/ROS_Project/build/ur10e_rg2_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs" TYPE FILE FILES "/home/huy/ROS_Project/src/ur10e_rg2_ros/niryo_one_msgs/package.xml")
endif()

