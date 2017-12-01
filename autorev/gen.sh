#!/bin/bash

#ori_root_path
export orip=/home/fhc/Downloads/竞品分析包
#apk_root_path
export apkp=/home/fhc/devcode/autorev

if [ ! -e $apkp ];then
	echo dir not exsits: $apkp
	exit 1
fi
cd $apkp


orilist=ori_apk_list.txt
newlist=new_apk_list.txt













gtb(){
        echo '<!doctype html>'
        echo "<HTML>"
        echo "<HEAD>"
        echo '<meta http-equiv="content-type" content="txt/html; charset=utf-8" />'
        echo "  <TITLE>"
        echo "  analysis apk result"
        echo "  </TITLE>"
        echo "</HEAD>"
        echo ""
        echo "<BODY>"
        echo "<table boder=0 cellspacing=1 bgcolor=#000000>" ;
        for i in "$@" ;do
                 <$i cut -d ' ' -f 3 | tr '\n' ',' | sed s/,$// | sed `echo s/^/$i,/`
        echo
        done > ~/bin/tmp
        csv2html ~/bin/tmp
        echo "</table>"
        echo "</BODY>"
        echo "</HTML>"
}

