#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/huy/ROS_Project/src/ros_tcp_endpoint"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/huy/ROS_Project/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/huy/ROS_Project/install/lib/python3/dist-packages:/home/huy/ROS_Project/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/huy/ROS_Project/build" \
    "/usr/bin/python3" \
    "/home/huy/ROS_Project/src/ros_tcp_endpoint/setup.py" \
    egg_info --egg-base /home/huy/ROS_Project/build/ros_tcp_endpoint \
    build --build-base "/home/huy/ROS_Project/build/ros_tcp_endpoint" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/huy/ROS_Project/install" --install-scripts="/home/huy/ROS_Project/install/bin"
