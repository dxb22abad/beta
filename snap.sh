
#!/bin/bash
date
cd /root/snap2html/DiogenesList-master/
python3 /root/snap2html/DiogenesList-master/diogeneslist.py /root/rclone/beta index
sed -i "s#\[LINK ROOT\]#https://betadata.dxz.plus/0\:#g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\00##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>嫖自公开分享_个人提高用_侵权联系https://t.me/dxb22abad(telegram)#g" /root/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>00盘_Nplayer适用By大学渣#g" /root/snap2html/DiogenesList-master/index.html
cp /root/snap2html/DiogenesList-master/index.html /root/snapGit/
cd /root/snapGit
git add .
git commit -m 'snap2htmlDailyUpdate'
git push -u beta master
date
