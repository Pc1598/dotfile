#!/bin/env bash

# We use a fixed ID. Noctalia/GJS shells usually respect this if sent via -r
NOTIFY_ID=4242
APP_NAME="ScreenRecorder"
FILENAME="$HOME/Videos/$(date +%m-%d-%Y-%H-%M-%S).mp4"

# Toggle off
if pgrep -x "wl-screenrec" > /dev/null; then
    pkill -INT -x wl-screenrec
    notify-send -a "$APP_NAME" -r "$NOTIFY_ID" -t 2000 "Recording" "Finished & Saved"
    exit 0
fi

# 1. Single "Started" notification
# -a sets the App Name so Noctalia groups it correctly
# -r replaces any existing bubble with ID 4242
notify-send -a "$APP_NAME" -r "$NOTIFY_ID" -t 1500 "Recording" "Started..."

# 2. 1-second pause as requested
sleep 1

# 3. Start Recording
wl-screenrec --audio \
  --audio-device alsa_output.pci-0000_00_1f.3.analog-stereo.monitor \
  --codec hevc \
  -f "$FILENAME"
