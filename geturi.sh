#!/usr/bin/env bash
# 当前路径
PWD_PATH=`pwd`/sources
cd ${PWD_PATH}
echo "当前路径 ${PWD_PATH}"

DOWNLOAD=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/bannedbook/fanqiang/releases' | sed 's;";\n;g;s;tag;download;g' | grep '/download/' | head -n 1`

# 下载方法失效？
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/bannedbook/fanqiang/wiki/Chrome%E4%B8%80%E9%94%AE%E7%BF%BB%E5%A2%99%E5%8C%85' | grep ChromeGo下载点 | sed 's;"; ;g' | awk '{print $3}' | head -n 1`
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/bannedbook/fanqiang/releases' | grep ChromeGo.7z | sed 's;"; ;g' | awk '{print $3}' | head -n 1`

# FILE_NAME=`basename ${CLASH_PATH}`

# DIR_NAME=`echo ${FILE_NAME} | sed 's;.7z;;g'`

echo "https://github.com${DOWNLOAD}/ChromeGo.7z"

# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "${CLASH_PATH}" -O
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${CLASH_PATH}" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/ChromeGo.7z" -o ${PWD_PATH}/ChromeGo.7z -O

# unar -f ${FILE_NAME}
unar -f ${PWD_PATH}/ChromeGo.7z

grep -r 'wget' ${PWD_PATH}/ChromeGo | grep -v "Binary file" | sed 's;--ca-certificate=ca-bundle.crt -c;;g;s;--no-check-certificate;;g' | awk '{print $4}' > ${PWD_PATH}/ChromeGo/info1.txt

cat << SMALLFLOWERCAT1995 | tee -a ${PWD_PATH}/ChromeGo/info1.txt
# SS SSR
https://raw.githubusercontent.com/Alvin9999/pac2/master/SS/ssconfig.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/SSR/ssconfig.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/ssrfile2/1
https://raw.githubusercontent.com/Alvin9999/pac2/master/ssrfile2/2
https://raw.githubusercontent.com/Alvin9999/pac2/master/SS-Kcptun/ssconfig.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/SS-Kcptun/1/ssconfig.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/ssr-wj/ssconfig.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/ssr-wj/1/ssconfig.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/ssconfig.txt

# SS VMESS
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/1
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/2
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/3
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/4
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/5
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/6
https://raw.githubusercontent.com/Alvin9999/pac2/master/clashfile/7

# clash
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/20201105.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/test.txt
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/1/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/2/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/3/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/13/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/15/config.yaml

# clash.meta2
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/1/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/2/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/3/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/13/config.yaml
https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/15/config.yaml

# hysteria
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria/1/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria/2/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria/13/config.json

# hysteria2
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria2/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria2/1/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria2/2/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/hysteria2/13/config.json

# xary
https://raw.githubusercontent.com/Alvin9999/pac2/master/xray/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/xray/1/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/xray/2/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/xray/3/config.json

# trojan-go
https://raw.githubusercontent.com/Alvin9999/pac2/master/trojan-go/config.json

# singbox
https://raw.githubusercontent.com/Alvin9999/pac2/master/singbox/config.json
https://raw.githubusercontent.com/Alvin9999/pac2/master/singbox/1/config.json
SMALLFLOWERCAT1995

# 过滤节点
#sort ${PWD_PATH}/ChromeGo/info1.txt | uniq > ${PWD_PATH}/info.txt
cat ${PWD_PATH}/ChromeGo/info1.txt | grep -v "raw.metahosting.cyou" | grep -v "# " | sort | uniq > ${PWD_PATH}/info.txt

echo ${PWD_PATH}/info.txt
cat ${PWD_PATH}/info.txt

cd ${PWD_PATH}/ ; echo "ok good!"

# rm -rfv ${DIR_NAME} ${FILE_NAME}
rm -rfv ChromeGo.7z ChromeGo

# unset CLASH_PATH FILE_NAME DIR_NAME PWD_PATH
unset PWD_PATH DOWNLOAD

echo ${PWD_PATH} ${DOWNLOAD}
