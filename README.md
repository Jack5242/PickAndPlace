Pick and Place Tutorial using Pilz Industrial Motion Planner
Table of Contents

Overview
ROS Setup
Unity Scene Setup
Robot Configuration
Unity Implementation
ROS Implementation

Overview
This project adapts the pick and place operation for the UR10e robot arm integrated with the OnRobot RG2 gripper using the Pilz Industrial Motion Planner. The project aims to automate picking objects from a 3D printer and placing them at desired locations in a simulated Unity environment. The key difference is the use of Pilz's PTP (Point-to-Point) motion planning instead of OMPL.
To clone this project:
bashCopygit clone --recurse-submodules https://github.com/YourUsername/ur10e_rg2_pilz_pickplace.git
ROS Setup

Navigate to your ROS workspace and install the required packages:

bashCopysudo apt-get update && sudo apt-get upgrade
sudo apt-get install ros-noetic-pilz-industrial-motion ros-noetic-prbt-moveit-config ros-noetic-robot-state-publisher ros-noetic-moveit ros-noetic-rosbridge-suite ros-noetic-joy ros-noetic-ros-control ros-noetic-ros-controllers
sudo -H pip3 install rospkg jsonpickle

Clone the necessary Pilz packages into your src folder:

bashCopycd ~/catkin_ws/src
git clone https://github.com/PilzDE/pilz_industrial_motion.git
git clone https://github.com/PilzDE/pilz_robots.git

Build your workspace:

bashCopycd ~/catkin_ws
catkin_make
source devel/setup.bash
Unity Scene Setup
[Previous Unity scene setup remains the same as the original tutorial]
Robot Configuration

Modify the MoveIt configuration to use Pilz:

Create a new file ur10e_moveit_config/config/pilz_cartesian_limits.yaml:
yamlCopycartesian_limits:
  max_trans_vel: 1.0
  max_trans_acc: 2.0
  max_rot_vel: 1.0

Update the move_group.launch file to use Pilz:

xmlCopy<arg name="pipeline" default="pilz_industrial_motion_planner" />

Create a new planning pipeline configuration in ur10e_moveit_config/config/pilz_planning_pipeline.yaml:

yamlCopyplanning_plugins:
  - pilz_industrial_motion_planner/CommandPlanner

default_planner_config: PTP
planning_pipeline_configs:
  pipeline_names:
    - pilz_industrial_motion_planner
  planner_configs:
    - PTP
    - LIN
    - CIRC

plan_request_params:
  planning_attempts: 1
  planning_time: 10.0
  max_velocity_scaling_factor: 0.5
  max_acceleration_scaling_factor: 0.5
Unity Implementation

Create a new C# script PilzTrajectoryPlanner.cs:

csharpCopyusing UnityEngine;
using RosMessageTypes.Moveit;
using RosMessageTypes.Geometry;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.ROSGeometry;

public class PilzTrajectoryPlanner : MonoBehaviour
{
    public GameObject target;
    public GameObject targetPlacement;
    public GameObject ur10eRobot;
    public string rosServiceName = "ur10e_pilz_moveit";
    
    private RosConnection ros;
    private readonly float jointAssignmentWait = 0.1f;
    private readonly float poseAssignmentWait = 0.5f;
    
    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterRosService<MoverServiceRequest, MoverServiceResponse>(rosServiceName);
    }

    public void PublishJoints()
    {
        var request = new MoverServiceRequest
        {
            plannerType = "PTP",  // Specify Pilz PTP planner
            maxVelocityScaling = 0.5f,
            maxAccelerationScaling = 0.5f,
            
            pickPose = new PoseMsg
            {
                position = target.transform.position.To<FLU>(),
                orientation = Quaternion.Euler(90, target.transform.eulerAngles.y, 0).To<FLU>()
            },
            
            placePose = new PoseMsg
            {
                position = targetPlacement.transform.position.To<FLU>(),
                orientation = Quaternion.Euler(90, 0, 0).To<FLU>()
            }
        };

        ros.SendServiceMessage(rosServiceName, request, TrajectoryResponse);
    }

    void TrajectoryResponse(MoverServiceResponse response)
    {
        if (response.success)
        {
            Debug.Log("Trajectory received");
            StartCoroutine(ExecuteTrajectories(response));
        }
    }
}
ROS Implementation

Create a new Python script pilz_trajectory_planner.py:

pythonCopy#!/usr/bin/env python3

import rospy
import moveit_commander
from moveit_msgs.msg import RobotTrajectory
from geometry_msgs.msg import Pose
from ur10e_rg2_moveit.srv import MoverService, MoverServiceResponse

class PilzTrajectoryPlanner:
    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)
        self.robot = moveit_commander.RobotCommander()
        self.scene = moveit_commander.PlanningSceneInterface()
        self.group = moveit_commander.MoveGroupCommander("manipulator")
        
        # Set Pilz as the planner
        self.group.set_planning_pipeline_id("pilz_industrial_motion_planner")
        self.group.set_planner_id("PTP")
        
        # Set up service
        self.service = rospy.Service('ur10e_pilz_moveit', MoverService, self.handle_trajectory_planning)

    def handle_trajectory_planning(self, req):
        # Set planning parameters
        self.group.set_max_velocity_scaling_factor(req.max_velocity_scaling)
        self.group.set_max_acceleration_scaling_factor(req.max_acceleration_scaling)
        
        # Plan to pick pose
        self.group.set_pose_target(req.pick_pose)
        pick_plan = self.group.plan()
        
        # Plan to place pose
        self.group.set_pose_target(req.place_pose)
        place_plan = self.group.plan()
        
        response = MoverServiceResponse()
        response.trajectories = [pick_plan.joint_trajectory, place_plan.joint_trajectory]
        response.success = True
        
        return response

if __name__ == '__main__':
    rospy.init_node('pilz_trajectory_planner')
    planner = PilzTrajectoryPlanner()
    rospy.spin()

Create a launch file test_pilz_planner.launch:

xmlCopy<launch>
    <arg name="tcp_ip" default="0.0.0.0"/>
    <arg name="tcp_port" default="10000"/>
    
    <param name="ROS_IP" value="$(arg tcp_ip)"/>
    <param name="ROS_TCP_PORT" value="$(arg tcp_port)"/>
    
    <!-- Launch MoveIt -->
    <include file="$(find ur10e_moveit_config)/launch/move_group.launch">
        <arg name="pipeline" value="pilz_industrial_motion_planner"/>
    </include>
    
    <!-- Launch your trajectory planner -->
    <node name="pilz_trajectory_planner" pkg="ur10e_rg2_moveit" type="pilz_trajectory_planner.py" output="screen"/>
    
    <!-- Launch TCP endpoint -->
    <node name="server_endpoint" pkg="ros_tcp_endpoint" type="default_server_endpoint.py" output="screen">
        <param name="tcp_ip" value="$(arg tcp_ip)"/>
        <param name="tcp_port" value="$(arg tcp_port)"/>
    </node>
</launch>
To run the system:

Source your workspace:

bashCopysource devel/setup.bash

Launch the system:

bashCopyroslaunch ur10e_rg2_moveit test_pilz_planner.launch

In Unity, press Play and use the UI button to trigger the pick and place operation.

The main differences from the original implementation are:

Use of Pilz Industrial Motion Planner instead of OMPL
PTP (Point-to-Point) motion planning configuration
Additional configuration for Cartesian limits
Modified planning pipeline settings
Updated trajectory planner implementation for Pilz compatibility
