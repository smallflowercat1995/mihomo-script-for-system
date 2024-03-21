#!/usr/bin/env bash
clear

PWD=`pwd`/sources
cd ${PWD}

echo "开始吧小老弟！"
echo "当前目录${PWD}"

startclash(){
echo "等待软件启动，请稍候..."
echo "可能需要输入密码来干掉工具、edge和chrome(chromium)浏览器"
sudo kill -9 `ps -ef | grep -v grep | grep mihomo-linux-amd64 | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep mihomo-linux-amd64 | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep msedge | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep microsoft-edge | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep microsoft-edge-dev | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep google-chrome | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep google-chrome-stable | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep chromium | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep chromium-browser | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep tail | awk '{print $2}'`
rm -rfv "*.log" chrome-user-data/SingletonLock edge-user-data/SingletonLock
chmod u+x mihomo-linux-amd64
nohup sudo  ${PWD}/mihomo-linux-amd64 -d  ${PWD}/.config/mihomo/ > mihomo-linux-amd64.log 2>&1 & disown

# 判断浏览器进程位置是否存在
if [ -e /usr/bin/microsoft-edge ];then
echo "microsoft-edge-dev true"
# microsoft-edge
nohup /usr/bin/microsoft-edge --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > edge.log 2>&1 & disown
elif [ -e /usr/bin/microsoft-edge-dev ];then
echo "microsoft-edge-dev true"
# microsoft-edge-dev
nohup /usr/bin/microsoft-edge-dev --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > edge.log 2>&1 & disown
elif [ -e /usr/bin/google-chrome ];then
echo "google-chrome true"
# google-chrome
nohup /usr/bin/google-chrome --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > chrome.log 2>&1 & disown
elif [ -e /usr/bin/google-chrome-stable ];then
echo "google-chrome-stable true"
# google-chrome-stable
nohup /usr/bin/google-chrome-stable --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > chrome.log 2>&1 & disown
elif [ -e /usr/bin/snap ];then
echo "true"
# snap install chromium
nohup snap run chromium --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > chromium.log 2>&1 & disown
elif [ -e /usr/bin/chromium ];then
echo "true"
nohup /usr/bin/chromium --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > chromium.log 2>&1 & disown
elif [ -e /usr/lib64/chromium-browser/chromium-browser ];then
echo "true"
nohup /usr/lib64/chromium-browser/chromium-browser --no-sandbox --user-data-dir="${PWD}/chrome-user-data" --proxy-server=http://127.0.0.1:7890 "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > chromium.log 2>&1 & disown
else 
echo -e "chromium/edge/google-chrome浏览器不存在或没有正确安装，请尝试重新安装chromium/google-chrome浏览器\n或者您可以通过安装snap来安装chromium/google-chrome，这样会比较好"
fi

tail -200f mihomo-linux-amd64.log
}

choices(){
echo 说明
echo 一、此脚本支持chromium/google-chrome/edge浏览器，所以需要安装chromium/google-chrome浏览器，如果有兴趣可以自己DIY别的浏览器。
echo "输入 1..12 通过联网更新文件使用，输入 13 随机执行现有文件:"
read choice 
if [ $choice -eq 1 ];then
# ./wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts -c "http://gitlab.com/free9999/ipupdate/-/raw/master/clash/config.yaml"-O ".config/clash/config.yaml"
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经1启动程序！
startclash
elif [ $choice -eq 2 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/13/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经2启动程序！
startclash
elif [ $choice -eq 3 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/15/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经3启动程序！
startclash
elif [ $choice -eq 4 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/1/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经4启动程序！
startclash
elif [ $choice -eq 5 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经5启动程序！
startclash
elif [ $choice -eq 6 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经6启动程序！
startclash
elif [ $choice -eq 7 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/13/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经7启动程序！
startclash
elif [ $choice -eq 8 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/15/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经8启动程序！
startclash
elif [ $choice -eq 9 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经9启动程序！
startclash
elif [ $choice -eq 10 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/1/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经10启动程序！
startclash
elif [ $choice -eq 11 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/2/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经11启动程序！
startclash
elif [ $choice -eq 12 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/3/config.yaml" -o ".config/mihomo/config.yaml" -O
echo 已经12启动程序！
startclash
elif [ $choice -eq 13 ];then
pool=(1 2 3 4 5 6 7 8 9 10 11 12)
num=${#pool[*]}
pn=${pool[$((RANDOM%num+1))]}
echo $pn
if [ "$pn" = "" ]; then
	cp -r -v config1.yaml ".config/mihomo/config.yaml"
else
	cp -r -v config$pn.yaml ".config/mihomo/config.yaml"
fi
echo 已经随机启动程序！
startclash
else
echo "what's up?"
choices
fi
}

choices
