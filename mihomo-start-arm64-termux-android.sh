#!$PREFIX/bin/env bash
clear

pkg install tsu

# 当前路径
PWD=$(pwd)/sources
mkdir -pv "${PWD}"
cd "${PWD}"

rm -rfv "*.log"
echo "开始吧小老弟！"
echo "当前目录${PWD}"

yamledit(){
# 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
echo "正在编辑 config.yaml，请稍候..."
echo 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
echo 删除 .config\mihomo\config.yaml 中开头为 "port: 7890" 的行：
sed -i '/^port: 7890/d' ".config/mihomo/config.yaml"
echo 删除 .config\mihomo\config.yaml 中开头为 "mixed-port: 7890" 的行：
sed -i '/^mixed-port: 7890/d' ".config/mihomo/config.yaml"
echo 删除 .config\mihomo\config.yaml 中开头为 "socks-port: 7891" 的行：
sed -i '/^socks-port: 7891/d' ".config/mihomo/config.yaml"
echo 删除 .config\mihomo\config.yaml 中开头为 "allow-lan: " 的行：
sed -i '/^allow-lan: /d' ".config/mihomo/config.yaml"
echo 删除 .config\mihomo\config.yaml 中开头为 "external-controller: " 的行：
sed -i '/^external-controller: /d' ".config/mihomo/config.yaml"
echo 删除 .config\mihomo\config.yaml 中开头为 "mode: " 的行：
sed -i '/^mode: /d' ".config/mihomo/config.yaml"
echo 删除 .config\mihomo\config.yaml 中开头为 "log-level: " 的行：
sed -i '/^log-level: /d' ".config/mihomo/config.yaml"
echo 在第1行开头添加 port: 7891
sed -i $'1i\\\nport: 7891\n' ".config/mihomo/config.yaml"
echo 在第2行开头添加 socks-port: 7892
sed -i $'2i\\\nsocks-port: 7892\n' ".config/mihomo/config.yaml"
echo 在第3行开头添加 mixed-port: 7893
sed -i $'3i\\\nmixed-port: 7893\n' ".config/mihomo/config.yaml"
echo 在第4行开头添加 external-controller: :7894
sed -i $'4i\\\nexternal-controller: :7894\n' ".config/mihomo/config.yaml"
echo 在第5行开头添加 redir-port: 7895
sed -i $'5i\\\nredir-port: 7895\n' ".config/mihomo/config.yaml"
echo 在第6行开头添加 tproxy-port: 7896
sed -i $'6i\\\ntproxy-port: 7896\n' ".config/mihomo/config.yaml"
echo 在第7行开头添加 allow-lan: true
sed -i $'7i\\\nallow-lan: true\n' ".config/mihomo/config.yaml"
echo 在第8行开头添加 mode: rule
sed -i $'8i\\\nmode: rule\n' ".config/mihomo/config.yaml"
echo 在第9行开头添加 log-level: debug
sed -i $'9i\\\nlog-level: debug\n' ".config/mihomo/config.yaml"
}

startclash(){
echo "等待软件启动，请稍候..."
echo "可能需要输入密码来干掉工具"
sudo kill -9 `ps -ef | grep -v grep | grep mihomo-linux-arm64 | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep mihomo-linux-arm64 | awk '{print $2}'`
kill -9 `ps -ef | grep -v grep | grep tail | awk '{print $2}'`
chmod u+x mihomo-linux-arm64
nohup sudo ${PWD}/mihomo-linux-arm64 -d ${PWD}/.config/mihomo/ > mihomo-linux-arm64.log 2>&1 &
echo '正在清理网络环境' && \
        sudo settings delete global http_proxy && \
        sudo settings delete global global_http_proxy_host && \
        sudo settings delete global global_http_proxy_port
sudo settings put global http_proxy 127.0.0.1:7891
nohup am start -a android.intent.action.VIEW -d "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB" > intent.log 2>&1 &
trap "echo '正在终止。。。' && \
        sudo settings delete global http_proxy && \
        sudo settings delete global global_http_proxy_host && \
        sudo settings delete global global_http_proxy_port && \
        trap INT" INT

# armv8 变成 arm64 了？	
# tail -200f clash-linux-armv8.log
tail -200f mihomo-linux-arm64.log
}

choices(){
echo 说明
echo 一、此脚本支持 android OS 需要配合 termux 使用
echo "输入 1..12 通过联网更新文件使用，输入 13 随机执行现有文件:"
read choice
if [ $choice -eq 1 ];then
# ./wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts -c "http://gitlab.com/free9999/ipupdate/-/raw/master/clash/config.yaml"-O ".config/clash/config.yaml"
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经1启动程序！
startclash
elif [ $choice -eq 2 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/13/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经2启动程序！
startclash
elif [ $choice -eq 3 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/15/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经3启动程序！
startclash
elif [ $choice -eq 4 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/1/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经4启动程序！
startclash
elif [ $choice -eq 5 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经5启动程序！
startclash
elif [ $choice -eq 6 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经6启动程序！
startclash
elif [ $choice -eq 7 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/13/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经7启动程序！
startclash
elif [ $choice -eq 8 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/15/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经8启动程序！
startclash
elif [ $choice -eq 9 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经9启动程序！
startclash
elif [ $choice -eq 10 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/1/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经10启动程序！
startclash
elif [ $choice -eq 11 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/2/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
echo 已经11启动程序！
startclash
elif [ $choice -eq 12 ];then
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/3/config.yaml" -o ".config/mihomo/config.yaml" -O
yamledit
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
