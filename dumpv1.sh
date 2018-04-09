#!/bin/bash


attachit=`adb shell ps | grep com.terton.government.fjjs | awk '{print $2}' | sed -n '1p'`
killit=`adb shell ps | grep com.terton.government.fjjs | awk '{print $2}' | sed -n '2p'`
echo $killit $attachit
adb shell kill  $killit
sleep 1

dex1addr=`adb shell cat /proc/$attachit/maps  | grep dex | grep extracted | awk '{print $1}' | sed 's/^/0x/g' | sed 's/-/ 0x/g' | head -1`
dex2addr=`adb shell cat /proc/$attachit/maps  | grep dex | grep extracted | sed -n '2p'| awk '{print $1}' | sed 's/^/0x/g' | sed 's/-/ 0x/g'`

echo $dex1addr $dex2addr

echo dump binary memory 1j.dex $dex1addr > gdb.cmds
echo dump binary memory 2j.dex $dex2addr >> gdb.cmds
echo q >> gdb.cmds
adb push gdb.cmds /data/local/tmp/gdb.cmds

adb shell cd /data/local/tmp/\; ./gdb -x gdb.cmds  --pid $attachit

adb pull /data/local/tmp/1j.dex 
adb pull /data/local/tmp/2j.dex 
