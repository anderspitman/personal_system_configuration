setup=${1}

builtin=LVDS1
externalPort=DP1
dockDisplayPort=DP2
dockDVI=HDMI3

normalDPI=96
highDPI=192

if [ "${setup}" == "home" ]; then
  xrandr --output ${builtin} --auto
  xrandr --output ${externalPort} --mode 1920x1080 --rate 60 \
      --right-of ${builtin}
  xrandr --output ${builtin} --off
  xrandr --output ${externalPort} --mode 3840x2160 --rate 30
  xrandr --dpi ${highDPI}
elif [ "${setup}" == "work" ]; then
  xrandr --output ${dockDisplayPort} --auto
  xrandr --output ${builtin} --off
  xrandr --output ${dockDVI} --auto --rotate left --right-of ${dockDisplayPort} 
  xrandr --dpi ${normalDPI}
elif [ "${setup}" == "off" ]; then
  if (xrandr | grep "${externalPort} connected"); then
    echo "Reduce resolution of 4k display"
    # first reduce resolution of the 4k display. Otherwise the GPU can't
    # handle running them both at the same time.
    xrandr --output ${externalPort} --mode 1920x1080 --rate 60 \
        --right-of ${builtin}
  fi
  # order is important here. the GPU can't handle 3 displays, but the X server
  # will crash if we turn them all off at the same time. So first turn off one
  # of the external ones, then turn on the builtin, then turn off the other
  # external.
  xrandr --output ${dockDisplayPort} --off
  xrandr --output ${builtin} --auto
  xrandr --output ${dockDVI} --off
  xrandr --output ${externalPort} --off
  xrandr --dpi ${normalDPI}
fi
