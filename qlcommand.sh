#!/bin/bash
A=`sed '/AutomaticLoginEnable*/d' /etc/gdm3/custom.conf`
echo "$A" > /etc/gdm3/custom.conf
B=`sed '/\[daemon\]/a AutomaticLoginEnable=false' /etc/gdm3/custom.conf`
echo "$B" > /etc/gdm3/custom.conf
if [ -e /var/lib/gdm3 ]
then
    if [ -d /var/lib/gdm3 ]
    then
        chown -R root /var/lib/gdm3
        reboot -h now
    else
        echo "NO"
    fi
else
    echo "NO"
fi

