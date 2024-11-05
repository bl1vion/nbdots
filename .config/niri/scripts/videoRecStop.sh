#!/bin/bash

if [ ! -f /var/tmp/videorec-pid ]; then
    notify-send -h string:x-canonical-private-synchronous:video-notify "not recording" -i "/usr/share/icons/Yaru/scalable/status/camera-disabled-symbolic.svg"
fi

kill -SIGINT "$(</var/tmp/videorec-pid)"

notify-send -h string:x-canonical-private-synchronous:video-notify "stopped recording" -i "/usr/share/icons/Yaru/scalable/ui/cross-small-symbolic.svg"
