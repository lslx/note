#!/bin/bash
source ~/.bash_profile_port
basedir=/home/fhc/ext800/makerom/android-4.4.4_r1/out/target/product/hammerhead

kerneldir=/home/fhc/ext800/kernel/

cd $kerneldir/boot5mk444
outfile=bootnew.img
kernelfile=$kerneldir/msm/arch/arm/boot/zImage-dtb

abootimg --create $kerneldir/boot5mk444/$outfile -f bootimg.cfg -k $kernelfile -r initrd.img










