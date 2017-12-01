#!/bin/bash

ori_root_path=/home/fhc/Downloads/竞品分析包
apk_root_path=/home/fhc/devcode/autorev



#for item in 01:ajm 02:nj 03:al 04:360 05:mgy 10:mix;do
for item in 01:ajm 02:nj 03:al 04:360 05:mgy;do

datedir=`ls $ori_root_path/${item:0:2}* | tr '\n' ','`
echo ${item:0:2}
echo $datedir

done




mkdir -p $apk_root_path/{bb}









