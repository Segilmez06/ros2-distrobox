FROM osrf/ros:humble-desktop-full

ENV DEBIAN_FRONTEND=noninteravtive

RUN apt-get update && apt-get install -y \
    tmux git \
    mesa-utils \
    python3-colcon-common-extensions \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    ros-humble-turtlebot3 \
    ros-humble-turtlebot3-gazebo \
    ros-humble-gazebo-ros-pkgs \
    && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*

RUN echo "set -g mouse on" >> /etc/tmux.conf && \
    echo 'set -g default-terminal "tmux-256color"' >> /etc/tmux.conf && \
    echo 'set -as terminal-features "$TERM:RGB"' >> /etc/tmux.conf

RUN echo "source /opt/ros/humble/setup.bash" >> /etc/bash.bashrc && \
    echo "source /usr/share/gazebo/setup.sh" >> /etc/bash.bashrc && \
    echo "export TURTLEBOT3_MODEL=waffle_pi" >> /etc/bash.bashrc

ENV DEBIAN_FRONTEND=dialog