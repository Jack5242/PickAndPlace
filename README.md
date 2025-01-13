#Pick and Place Tutorial using Pilz Industrial Motion Planner

**Table of Contents** 
-[Pick & and Place Tutorial]
-





## Overview
This project adapts the pick and place operation for the UR10e robot arm integrated with the OnRobot RG2 gripper using the Pilz Industrial Motion Planner. The project aims to automate picking objects from a 3D printer and placing them at desired locations in a simulated Unity environment. The key difference is the use of Pilz's PTP (Point-to-Point) motion planning.

If you have not already cloned this project to your local machine, do so now:

'''bash 
git clone --recurse-submodules 
'''




# ROS Download
1. Navigate to the `/PATH/TO/ur10e_rg2_PickAndPlace/ROS` directory of this downloaded repo.
   - This directory will be used as the [ROS catkin workspace](http://wiki.ros.org/catkin/Tutorials/using_a_workspace).
   - If you cloned the project and forgot to use `--recurse-submodules`, or if any submodule in this directory doesn't have content, you can run the command `git submodule update --init --recursive` to download packages for Git submodules.
   - Copy or download this directory to your ROS operating system if you are doing ROS operations in another machine, VM, or container.
    > Note: This contains the ROS packages for the pick-and-place task, including [ROS TCP Endpoint](https://github.com/Unity-Technologies/ROS-TCP-Endpoint), [MoveIt Msgs](https://github.com/ros-planning/moveit_msgs), `UR10e_moveit`, and `UR10e_urdf`.

2. The provided files require the following packages to be installed. ROS Noetic users should run:

   ```bash
   sudo apt-get update && sudo apt-get upgrade
   sudo apt-get install python3-pip ros-noetic-robot-state-publisher ros-noetic-moveit ros-noetic-rosbridge-suite ros-noetic-joy ros-noetic-ros-control ros-noetic-ros-controllers
   sudo -H pip3 install rospkg jsonpickle
   ```
3. If you have not already built and sourced the ROS workspace since importing the new ROS packages, navigate to your ROS workplace, and run `catkin_make && source devel/setup.bash`. Ensure there are no errors.

`The ROS workspace is now ready to accept commands!`
## Unity Scene
**Installing Unity**
1. Install [Unity Hub](https://unity3d.com/get-unity/download).

2. Go it the "Installs" tab in the Unity Hub, and click the "Add" button. Select Unity **2020.3.11f1 (LTS)**. If this version is no longer available through the hub, you can find it in the [Unity Download Archive](https://unity3d.com/get-unity/download/archive).
   > Note: If you want to use another Unity version, the following versions work for the Pick-and-Place tutorial:

   > - Unity 2020.3: 2020.3.10f1 or later
   > - Unity 2021.1: 2021.1.8f1 or later
   > - Unity 2021.2: 2021.2.a16 or later

3. Go to the "Projects" tab in the Unity Hub, click the "Add" button, and navigate to and select the PickAndPlaceProject directory within this cloned repository (`/PATH/TO/ur10e_rg2_PickAndPlace/UnityProject`) to add the tutorial project to your Hub.

4. Click the newly added project to open it.

**Setting up scene**
1. Open the Physics Project Settings (in the top menu bar, Edit > Project Settings > Physics) and ensure the `Solver Type` is set to `Temporal Gauss Seidel`. This prevents erratic behavior in the joints that may be caused by the default solver.

1. We will start with generating the MoveItMsg: RobotTrajectory. This file describes the trajectory contents that will be used in the sent and received trajectory messages.

   Select `Robotics -> Generate ROS Messages...` from the top menu bar.


   In the ROS Message Browser window, click `Browse` next to the ROS message path. Navigate to and select the ROS directory of this cloned repository (`ur10e_rg2_PickAndPlace/ROS/`). This window will populate with all msg and srv files found in this directory.



   Under `ROS/src/moveit_msgs/msg`, scroll to `RobotTrajectory.msg`, `CollisionObject.msg` and click its `Build msg` button. The button text will change to "Rebuild msg" when it has finished building.


	- One new C# script should populate the `Assets/RosMessages/Moveit/msg` directory: RobotTrajectoryMsg.cs. This name is the same as the message you built, with an "Msg" suffix (for message).

2. Next, the custom message scripts for this tutorial will need to be generated.

   Still in the ROS Message Browser window, expand `ROS/src/ur10e_rg2_moveit/msg` to view the msg files listed. Next to msg, click `Build 3 msgs`.


   > MessageGeneration generates a C# class from a ROS msg file with protections for use of C# reserved keywords and conversion to C# datatypes. Learn more about [ROS Messages](https://wiki.ros.org/Messages).


3. Finally, now that the messages have been generated, we will create the service for moving the robot.

   Still in the ROS Message Browser window, expand `ROS/src/ur10e_rg2_moveit/srv` to view the srv file listed. Next to srv, click `Build 1 srv`.


   > MessageGeneration generates two C# classes, a request and response, from a ROS srv file with protections for use of C# reserved keywords and conversion to C# datatypes. Learn more about [ROS Services](https://wiki.ros.org/Services).

   You can now close the ROS Message Browser window.

4. Navigate to Assets folder and open the project scene. Now you can Unity side is ready for execution.

## Ros Side
1. Open a terminal window in the ROS workspace. Once again, source the workspace. Then, run the following `roslaunch` in order to set the ROS parameters, start the server endpoint, and start the trajectory subscriber.

   ```bash
   roslaunch ur10e_rg2_moveit TrajectoryPlanner.launch
   ```

   > Note: Running `roslaunch` automatically starts [ROS Core](http://wiki.ros.org/roscore) if it is not already running.

   

   > Note: To use a port other than 10000, or if you want to listen on a more restrictive ip address than 0.0.0.0 (e.g. for security reasons), you can pass those arguments into the roslaunch command like this:

   ```bash
   roslaunch ur10e_rg2_moveit test_TrajectoryPlanner.launch tcp_ip:=127.0.0.1 tcp_port:=10005
   ```

   This launch will print various messages to the console, including the set parameters and the nodes launched.

   Ensure that the `process[server_endpoint]` and `process[trajectory_subscriber]` were successfully started, and that a message similar to `[INFO] [1603488341.950794]: Starting server on 192.168.50.149:10000` is printed.

2. Return to Unity, and press Play. Click the UI Button in the Game view to call `Publish()` function, publishing the associated data to the ROS topic. View the terminal in which the `roslaunch` command is running. It should now print `I heard:` with the data.

ROS and Unity have now successfully connected!

   ![](img/2_echo.gif)

## Execution
The following are the comprehensive execution steps to successfully run the system:

1. Launch ROS: Begin by launching the Robot Operating System (ROS) using the specified command provided above. This step initializes the ROS environment and activates the necessary nodes and packages required for communication and control of the UR10e robot arm and the RG2 gripper. Ensure that all dependencies are properly sourced, and no errors appear in the terminal during this process.

2. Open Unity and Start Simulation: Once ROS is running smoothly, open the Unity application where the robotic simulation is set up. In Unity, navigate to the simulation scene and press the Play button. This action starts the simulation, enabling real-time visualization and interaction with the robot model, allowing the system to process and display the robot's movements and responses.

3. Publish Arm Position and Receive Trajectory Data: Within the Unity interface, locate the button positioned at the bottom-left corner of the screen. Press this button to trigger the publishing of the robot arm's current position. This command sends the arm's state information to ROS, which processes it and returns the calculated motion trajectory. This trajectory data is then received in Unity, allowing the robot arm in the simulation to move according to the planned path.

By carefully following these steps, the integration between ROS and Unity will enable seamless control and visualization of the UR10e robot arm and RG6 gripper during execution.
