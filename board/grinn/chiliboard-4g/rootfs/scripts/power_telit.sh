#!/bin/sh

PIN=55

[ -d /sys/class/gpio/gpio$PIN ] || (echo $PIN > /sys/class/gpio/export && echo out > /sys/class/gpio/gpio$PIN/direction)
echo 1 > /sys/class/gpio/gpio$PIN/value
sleep 5
echo 0 > /sys/class/gpio/gpio$PIN/value
