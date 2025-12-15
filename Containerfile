FROM osrf/ros:humble-desktop-full

ENV DEBIAN_FRONTEND=noninteravtive

RUN apt-get update && apt-get install -y \
    tmux git nano

RUN apt-get install -y \
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
    echo "export TURTLEBOT3_MODEL=waffle_pi" >> /etc/bash.bashrc && \
    echo 'PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }[[ -z \"\$__PREFIX_SET\" ]] && { PS1=\"[Humble] \$PS1\"; __PREFIX_SET=1; }"' >> /etc/bash.bashrc

ENV DEBIAN_FRONTEND=dialog
