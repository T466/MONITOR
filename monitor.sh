#!/bin/bash


if [ ! -e "/var/log/Process" ]; then

mkdir /var/log/Process

   else
echo

fi

hj=$(date +%d%m%Y-%H%M)

ps aux > /var/log/Process/process-$hj
