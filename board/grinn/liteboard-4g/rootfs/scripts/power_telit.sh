#!/bin/sh

gpioset `gpiofind "TELIT_4G_INIT"`=1
sleep 2
gpioset `gpiofind "TELIT_4G_INIT"`=0

