eval $(ssh-agent)
compton -c &
xrandr --output VGA1 --auto --right-of DP1 --rotate left
sh ~/.fehbg &
exec i3
