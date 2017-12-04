#!/bin/bash

#ori_root_path
export orip=/home/fhc/Downloads/竞品分析包
#apk_root_path
export apkp=/home/fhc/devcode/autorev

if [ ! -e $orip ] || [ ! -e $apkp ];then
	echo orip or apkp dir not exsits
	exit 1
fi
cd $apkp


orilist=ori_apk_list.txt
newlist=new_apk_list.txt

# result like:jpfxb/02.nj/2017.04.06/md5.apk
find $orip -name "*apk">$orilist
cat $orilist | sed \
-e 's/^.\+竞品分析包/jpfxb/' \
-e 's/01.爱加密/01.ajm/' \
-e 's/02.娜迦/02.nj/' \
-e 's/03.阿里聚安全/03.al/' \
-e 's/05.魔固云/05.mgy/' \
-e 's/深圳福迈斯/shenzhenfuwansi/' \
| grep 'jpfxb/0[1-5]'>newlist.tmp

cat $orilist | awk '{print $0}' | xargs -I % md5sum % > md5list.txt

num=0
cat newlist.tmp | while read line
do
	num=$(($num+1))
	echo `dirname "$line"`/`cut -d ' ' -f1 md5list.txt | sed -n "${num}p"`.apk
done > $newlist


# create dir
cd $apkp
cat $newlist | while read line
do
	mkdir -p "`dirname $line`"
done

# copy apk file and generic info
num=0
cat $newlist | while read line
do
	num=$(($num+1))
	oripathfile="`sed -n \"${num}p\" $orilist`"
	cp "$oripathfile" "$line"
	newinfo="`basename \"$line\" | sed 's/\.apk$//'`"
	oriinfo="`basename \"$oripathfile\" | sed 's/\.apk$//'`"
	#echo $newinfo # md5
	#echo $oriinfo # ori name
	touch "`dirname $line`"/"${newinfo}_${oriinfo}"
	mkdir "`dirname $line`"/"${newinfo}_rev"
done



