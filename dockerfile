FROM tobimai/bonnetal-raw

ENV LD_LIBRARY_PATH /opt/ros/melodic/lib:$LD_LIBRYRY_PATH
ENV ROS_MASTER_URI http://localhost:113311/

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN cd bonnetal && git pull

RUN chmod +x /opt/ros/melodic/setup.bash

CMD /bin/bash -c "/opt/ros/melodic/setup.bash && source bonnetal/deploy/devel/setup.bash && roslaunch bonnetal/deploy/src/segmentation/ros/launch/bonnetal_segmentation.launch"
