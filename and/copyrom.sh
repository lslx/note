#!/bin/bash

function mycopy(){
	SRC=$1
	DST=$2

	DSTP=`dirname $DST`
	mkdir -p $DSTP
	#EE=`(cd $SRC;find . -type d | grep obj$ | grep -v '/obj/.\+/obj$')`
	EE=`(cd $SRC;find -type d | grep obj$ | grep -v '/obj/.\+/obj$' | sed 's/^\.\///')`
	EE=`[[ "$EE" != "" ]] && echo $EE | sed -e 's/ / --exclude /g' -e 's/^/ --exclude /'`
	echo EE2:$EE

	echo rsync -av $EE $SRC $DSTP
	read sss
	(cd $SRC;rsync -av $EE $SRC $DSTP)

}

SRCBASE=/home/fhc/ext800/src-android-local
DSTBASE=/home/fhc/ext800/makerom



MYSRC=$SRCBASE/android-4.4.4_r1/out
MYDST=$DSTBASE/android-4.4.4_r1/out
[ ! -d $MYSRC ] && echo mysrc dir:$MYSRC not exsits,pass
[   -e $MYDST ] && echo mydst dir:$MYDST exsits,avoid overwrite,pass
if [ -d $MYSRC ] && [ ! -e $MYDST ];then
	mycopy $MYSRC $MYDST
fi
exit 
# fix me obj32


MYSRC=$SRCBASE/android-5.1.1_r14/out
MYDST=$DSTBASE/android-5.1.1_r14/out
[ ! -d $MYSRC ] && echo mysrc dir:$MYSRC not exsits,pass
[   -e $MYDST ] && echo mydst dir:$MYDST exsits,avoid overwrite,pass
if [ -d $MYSRC ] && [ ! -e $MYDST ];then
	mycopy $MYSRC $MYDST
fi

MYSRC=$SRCBASE/android-6.0.1_r77/out
MYDST=$DSTBASE/android-6.0.1_r77/out
[ ! -d $MYSRC ] && echo mysrc dir:$MYSRC not exsits,pass
[   -e $MYDST ] && echo mydst dir:$MYDST exsits,avoid overwrite,pass
if [ -d $MYSRC ] && [ ! -e $MYDST ];then
	mycopy $MYSRC $MYDST
fi

MYSRC=$SRCBASE/android-7.1.1_r27/out
MYDST=$DSTBASE/android-7.1.1_r27/out
[ ! -d $MYSRC ] && echo mysrc dir:$MYSRC not exsits,pass
[   -e $MYDST ] && echo mydst dir:$MYDST exsits,avoid overwrite,pass
if [ -d $MYSRC ] && [ ! -e $MYDST ];then
	mycopy $MYSRC $MYDST
fi

echo all done 




