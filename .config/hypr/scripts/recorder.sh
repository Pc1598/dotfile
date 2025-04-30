#!/bin/env bash

# Toggle off if already recording
if pgrep -x "wl-screenrec" > /dev/null; then
    pkill -INT -x wl-screenrec
    notify-send -h string:wl-screenrec:record -t 1000 "Finished Recording"
    exit 0
fi

# Countdown notifications
notify-send -h string:wl-screenrec:record -t 1000 "Recording in:" "<span color='#90a4f4' font='26px'><i><b>3</b></i></span>"
sleep 1
notify-send -h string:wl-screenrec:record -t 1000 "Recording in:" "<span color='#90a4f4' font='26px'><i><b>2</b></i></span>"
sleep 1
notify-send -h string:wl-screenrec:record -t 950  "Recording in:" "<span color='#90a4f4' font='26px'><i><b>1</b></i></span>"
sleep 1

# Record with timestamped filename (with audio)
dateTime=$(date +%m-%d-%Y-%H-%M-%S)
wl-screenrec --audio --audio-device alsa_output.pci-0000_00_1f.3.analog-stereo.monitor -f "$HOME/Videos/$dateTime.mp4"
