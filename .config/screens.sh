#!/bin/zsh


SCREEN_MOD_COUNT=4
SCREEN_MODE=$((($SCREEN_MODE+1)%SCREEN_MOD_COUNT))
echo $SCREEN_MODE
case $SCREEN_MODE in
	0)
	   xrandr --output LVDS1 --auto --output HDMI1 --off --output VGA1 --off
	;;
	1)
	   xrandr --output LVDS1 --auto --output HDMI1 --auto --output VGA1 --auto
	;;
	2)
	  xrandr --output LVDS1 --auto --output HDMI1 --auto --right-of LVDS1 --output VGA1 --auto --right-of HDMI1
	;;
	3)
	  xrandr --output LVDS1 --auto --output VGA1 --auto --right-of LVDS1 --output HDMI1 --auto --right-of VGA1
	;;
esac

feh --bg-scale /home/riomus/Images/bg.jpg

