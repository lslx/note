#!/bin/bash
source ~/.bash_profile_port

aosptar=aosp171128_md5_92c23739e2cf7e02ac6bf1209c2b7a39.tar
tag=mylogtagflag
echo $tag begin work
date
#
#echo $tag cp
#date
#time cp /media/fhc/sg2t/$aosptar ~
#
#echo $tag md5sum
#date
#time md5sum ~/$aosptar
#
#echo $tag rm mirror
#date
#time rm -fr ~/ext800/aospbk
#
#echo $tag rm androidcode
#date
#time rm -fr ~/ext800/androidcode
#
#echo $tag tar xvf aosp
#date
#cd ~
#time tar xvf ~/$aosptar
#
#echo $tag rm ccache
#date
#time rm -fr ~/CCACHE4ROM

#echo $tag getandcodeall
#date
#time getandcodeall

echo $tag compileandall
date
time compileandall

echo $tag end work
date
