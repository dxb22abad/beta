#!/bin/bash
date
cd /root/snap2html/DiogenesList-master/
python /root/snap2html/DiogenesList-master/diogeneslist.py /root/rclone/beta index
sed -i "s#\[LINK ROOT\]#https://betadata.xb.workers.dev/0\:/#g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\beta\\\\\\\##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>学习目的_侵权可联系https://t.me/dxb22abad(telegram)#g" /root/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>00盘参考dxz.plus#g" /root/snap2html/DiogenesList-master/index.html
cp /root/snap2html/DiogenesList-master/index.html /root/snapGit/
cd /root/snapGit
git add .
git commit -m 'beta'
git push  
