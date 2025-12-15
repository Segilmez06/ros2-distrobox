# ROS2 Distrobox
ROS2 on Distrobox, with enhancements.

## Usage

### Stable Image
Default usage:
```
distrobox create humble --image segilmez06/ros2-distrobox:humble --home ~/.distrobox/humble
```
Attach Nvidia (requires `nvidia-container-toolkit`):
```
distrobox create humble-nvidia --image segilmez06/ros2-distrobox:humble --additional-flags "--gpus all" --home ~/.distrobox/humble-nvidia
```

### Development Image
Default usage:
```
distrobox create humble-dev --image segilmez06/ros2-distrobox:humble-dev --home ~/.distrobox/humble-dev
```
Attach Nvidia (requires `nvidia-container-toolkit`):
```
distrobox create humble-dev-nvidia --image segilmez06/ros2-distrobox:humble-dev --additional-flags "--gpus all" --home ~/.distrobox/humble-dev-nvidia
```