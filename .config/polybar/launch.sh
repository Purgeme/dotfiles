#!/bin/bash

killall -q polybar

polybar -r fullbar >> /tmp/polybar1.log &
#polybar -r hinf >> /tmp/polybar2.log &
