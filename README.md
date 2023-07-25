# ros_web
 control and monitor robots with ROS using the web browser

 ## Env.
 ```bat
$ git clone https://github.com/rendezvue/ros_web.git
$ cd ros_web/
$ docker build -t rdv/ros:web .
```
```bat
docker run -it \
    --privileged \
    --gpus all \
    --net=host \
    -e DISPLAY=192.168.xxx.xxx:0.0 \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v /etc/localtime:/etc/localtime:ro \
    -e TZ=Asia/Seoul \
    -v /dev:/dev \
    rdv/ros:web
```

## RUN
```bat
roslaunch web_cmdvel web.launch
```
```bat
$ cd /root/web_ws/src/ros_web/web_cmdvel/
$ python -m SimpleHTTPServer 7000
```
```bat
http://localhost:7000/
http://192.168.xxx.xxx:7000/
```