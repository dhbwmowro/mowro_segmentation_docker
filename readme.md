This reporsitory contains everything necessary to run the Semantic Segmentation in a Docker container. 

All Images are based on the official NVIDIA Image from [here](https://ngc.nvidia.com/catalog/containers/nvidia:l4t-ml), using the nvcr.io/nvidia/l4t-ml:r32.4.2-py3 container. 

There are two images in the mowrow [Dockerhub repository](https://hub.docker.com/orgs/dhbwmowro)
- pytorch-installed: contains the base image with pytorch compiled and installed
- bonnetal-raw: Contains a finished bonnetal installation

There is no Dockerfile for these images as it was easier to create them by hand because of problems with nvidia drivers/librabris.

The last image is the mowrow-segmentation image; The dockerfile of this one is in this Repository. It is the finished container for running the segmentation. 

You need to set the Environment-variable ROS_MASTER_URI to the IP+Port of the roscore (http://192.168.88.123:11311/ for example).
If you want to provide a custom machine learning model, create a bind mount on /bonnetal/model and put it there. 
