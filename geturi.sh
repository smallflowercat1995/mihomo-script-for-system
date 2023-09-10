#!/usr/bin/env bash
# 当前路径
PWD=`pwd`/sources
cd ${PWD}

DOWNLOAD=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/bannedbook/fanqiang/releases' | sed 's;";\n;g;s;tag;download;g' | grep '/download/' | head -n 1`

# 下载方法失效？
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/bannedbook/fanqiang/wiki/Chrome%E4%B8%80%E9%94%AE%E7%BF%BB%E5%A2%99%E5%8C%85' | grep ChromeGo下载点 | sed 's;"; ;g' | awk '{print $3}' | head -n 1`
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/bannedbook/fanqiang/releases' | grep ChromeGo.7z | sed 's;"; ;g' | awk '{print $3}' | head -n 1`

# FILE_NAME=`basename ${CLASH_PATH}`

# DIR_NAME=`echo ${FILE_NAME} | sed 's;.7z;;g'`

echo "https://github.com${DOWNLOAD}/ChromeGo.7z"

# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "${CLASH_PATH}" -O
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${CLASH_PATH}" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/ChromeGo.7z" -o ChromeGo.7z -O

# unar -f ${FILE_NAME}
unar -f ChromeGo.7z

# cd ${DIR_NAME}
cd ChromeGo

grep -r 'wget' | grep -v "Binary file" | sed 's;--ca-certificate=ca-bundle.crt -c;;g;s;--no-check-certificate;;g' | awk '{print $2}' > info1.txt

sort info1.txt | uniq > ${PWD}/info.txt

rm -rfv info1.txt

cd ../ ; echo "ok good!"

# rm -rfv ${DIR_NAME} ${FILE_NAME}
rm -rfv ChromeGo.7z ChromeGo

# unset CLASH_PATH FILE_NAME DIR_NAME PWD_PATH
unset PWD DOWNLOAD

echo ${PWD} ${DOWNLOAD}
