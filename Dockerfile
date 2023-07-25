FROM osrf/ros:melodic-desktop-full-bionic

RUN apt-get update

RUN apt-get install ros-melodic-usb-cam ros-melodic-rosbridge-server ros-melodic-web-video-server

RUN mkdir -p ~/web_ws/src \
    && cd ~/web_ws/src \
    && git clone https://github.com/rendezvue/ros_web.git \
    && cd .. \
    && source /opt/ros/melodic/setup.bash \
    && catkin_make

RUN echo "source /opt/ros/melodic/setup.bash" >> /root/.bashrc \
    && echo "source /root/web_ws/devel/setup.bash" >> /root/.bashrc

WORKDIR /root/web_ws/src
