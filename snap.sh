
#!/bin/bash
date
cd /root/snap2html/DiogenesList-master/
python /root/snap2html/DiogenesList-master/diogeneslist.py /root/rclone/00 index
sed -i "s#\[LINK ROOT\]#https://media.dxz.plus#g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\00##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>所有内容均来自公开分享_收藏自用_侵权联系https://t.me/dxb22abad(telegram)#g" /root/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>00盘_请使用Nplayer获得良好体验#g" /root/snap2html/DiogenesList-master/index.html
cp /root/snap2html/DiogenesList-master/index.html /root/snapGit/
cd /root/snapGit
git add .
git commit -m 'snap2htmlDailyUpdate'
git push -u origin master
date
