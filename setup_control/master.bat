@echo off
F:
cd gstreamer\1.0\x86_64\bin
gst-launch-1.0 -e -v udpsrc port=9000 ! application/x-rtp, payload=96 ! rtpjitterbuffer ! rtph264depay ! avdec_h264 ! fpsdisplaysink sync=false text-overlay=false