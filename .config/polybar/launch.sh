#!/bin/bash

killall -q polybar

polybar -r wsps >> /tmp/polybar1.log &
polybar -r hinf >> /tmp/polybar2.log &
