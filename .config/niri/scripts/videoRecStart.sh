#!/bin/bash

if [ -f /var/tmp/videorec-pid ]; then
    notify-send -h string:x-canonical-private-synchronous:video-notify "video already in progress" -i "/usr/share/icons/Yaru/scalable/status/camera-disabled-symbolic.svg"
    exit
fi

nohup ((tail -f $1 & echo $! >/var/tmp/videorec-pid) | wf-recorder -g "$(slurp)") > /dev/null 2>&1 &

notify-send -h string:x-canonical-private-synchronous:video-notify "started recording" -i /usr/share/icons/Yaru/scalable/camera/camera-focus-symbolic.svg
