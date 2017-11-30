#!/bin/bash

cd ~/Downloads
mkdir jpfxb
rsync -avuz -e 'ssh -p22022' --progress fhc@$laptop_xps:vboxshare/竞品分析包  jpfxb







