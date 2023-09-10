#!/usr/bin/env bash
clear
# kill -9 `ps -ef | grep -v grep | grep clash-darwin-amd64 | awk '{print $2}'`
killall clash-darwin-amd64
# kill -9 `ps -ef | grep -v grep | grep chrom* | awk '{print $2}'`
killall Google\ Chrome
killall Microsoft\ Edge
killall tail
# rm -rfv ".config/clash"
PWD=`pwd`/sources
cd ${PWD}
rm -rfv "*.log" chrome-user-data/SingletonLock edge-user-data/SingletonLock
echo "开始吧小老弟！"
echo "当前目录${PWD}"
mkdir -p ".config/clash"
cp -r Country.mmdb ".config/clash/"

startclash(){
echo 等待软件启动，请稍候...
chmod u+x clash-darwin-amd64
nohup ./clash-darwin-amd64 -d .config/clash/ > clash-darwin-amd64.log 2>&1 &
if [ -e /Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge ];then 
echo "true"
nohup /Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge --user-data-dir="${PWD}/edge-user-data" --proxy-server=socks5://127.0.0.1:7891 https://www.duckduckgo.com/?q=youtube > edge.log 2>&1 &
elif [ -e /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome ];then 
echo "true"
nohup /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --user-data-dir="${PWD}/chrome-user-data" --proxy-server=socks5://127.0.0.1:7891 https://www.duckduckgo.com/?q=youtube > chrome.log 2>&1 &
else 
echo Chrome/Edge浏览器不存在或没有正确安装，请尝试重新安装Chrome/Edge浏览器
fi
tail -200f clash-darwin-amd64.log
}

choices(){
echo 说明
echo 一、此脚本支持chrome/edge浏览器，所以需要安装chrome/edge浏览器，如果有兴趣可以自己DIY别的浏览器。
echo "输入 1..14 通过联网更新文件使用，输入 15 随机执行现有文件:"
read choice
if [ $choice -eq 1 ];then
# ./wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts -c "http://gitlab.com/free9999/ipupdate/-/raw/master/clash/config.yaml"-O ".config/clash/config.yaml"
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://gitlab.com/free9999/ipupdate/-/raw/master/clash/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经1启动程序！
startclash
elif [ $choice -eq 2 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/1/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经2启动程序！
startclash
elif [ $choice -eq 3 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://gitlab.com/free9999/ipupdate/-/raw/master/clash/3/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经3启动程序！
startclash
elif [ $choice -eq 4 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/15/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经4启动程序！
startclash
elif [ $choice -eq 5 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://gitlab.com/free9999/ipupdate/-/raw/master/clash/2/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经5启动程序！
startclash
elif [ $choice -eq 6 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/13/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经6启动程序！
startclash
elif [ $choice -eq 7 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经7启动程序！
startclash
elif [ $choice -eq 8 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/2/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经8启动程序！
startclash
elif [ $choice -eq 9 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经9启动程序！
startclash
elif [ $choice -eq 10 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/3/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经10启动程序！
startclash
elif [ $choice -eq 11 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经11启动程序！
startclash
elif [ $choice -eq 12 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/config.yaml" -o ".config/clash/config.yaml" -O
echo 已经12启动程序！
startclash
elif [ $choice -eq 13 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/jsvpn/jsproxy@dev/baitai/20200329/1302338.md" -o ".config/clash/config.yaml" -O
echo 已经13启动程序！
startclash
elif [ $choice -eq 14 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://raw.metahosting.cyou/jsvpn/jsproxy/dev/baitai/20200329/1302338.md" -o ".config/clash/config.yaml" -O
echo 已经14启动程序！
startclash
elif [ $choice -eq 15 ];then
pool=(1 2 3 4 5 6 7 8 9 10 11 12 13 14)
num=${#pool[*]}
pn=${pool[$((RANDOM%num+1))]}
echo $pn
if [ "$pn" = "" ]; then
	cp -r -v config1.yaml ".config/clash/config.yaml"
else
	cp -r -v config$pn.yaml ".config/clash/config.yaml"
fi
echo 已经随机启动程序！
startclash
else
echo "what's up?"
choices
fi
}

choices
