#!/usr/bin/env bash

# 当前路径
PWD=$(pwd)/sources
mkdir -pv "${PWD}"
cd "${PWD}"
# 获取下载路径
DOWNLOAD=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/MetaCubeX/mihomo/releases' | sed 's;";\n;g;s;tag;download;g' | grep '/download/' | head -n 2 | tail -1`

# mac配置文件处理函数
function mac_process_config {
    local config_file=$1
    echo "mac环境配置文件${config_file}"
    # 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
    echo "正在编辑 config.yaml，请稍候..."
    echo 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
    echo 删除 .config\mihomo\config.yaml 中开头为 "port: 7890" 的行：
    sed -i '' '/^port: 7890/d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "mixed-port: 7890" 的行：
    sed -i '' '/^mixed-port: 7890/d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "socks-port: 7891" 的行：
    sed -i '' '/^socks-port: 7891/d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "allow-lan: " 的行：
    sed -i '' '/^allow-lan: /d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "external-controller: " 的行：
    sed -i '' '/^external-controller: /d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "mode: " 的行：
    sed -i '' '/^mode: /d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "log-level: " 的行：
    sed -i '' '/^log-level: /d' "${config_file}"
    echo 在第1行开头添加 port: 7891
    sed -i '' $'1i\\\nport: 7891\n' "${config_file}"
    echo 在第2行开头添加 socks-port: 7892
    sed -i '' $'2i\\\nsocks-port: 7892\n' "${config_file}"
    echo 在第3行开头添加 mixed-port: 7893
    sed -i '' $'3i\\\nmixed-port: 7893\n' "${config_file}"
    echo 在第4行开头添加 external-controller: :7894
    sed -i '' $'4i\\\nexternal-controller: :7894\n' "${config_file}"
    echo 在第5行开头添加 redir-port: 7895
    sed -i '' $'5i\\\nredir-port: 7895\n' "${config_file}"
    echo 在第6行开头添加 tproxy-port: 7896
    sed -i '' $'6i\\\ntproxy-port: 7896\n' "${config_file}"
    echo 在第7行开头添加 allow-lan: true
    sed -i '' $'7i\\\nallow-lan: true\n' "${config_file}"
    echo 在第8行开头添加 mode: rule
    sed -i '' $'8i\\\nmode: rule\n' "${config_file}"
    echo 在第9行开头添加 log-level: debug
    sed -i '' $'9i\\\nlog-level: debug\n' "${config_file}"
}

# linux配置文件处理函数
function linux_process_config {
    local config_file=$1
    echo "linux环境配置文件${config_file}"
    # 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
    echo "正在编辑 config.yaml，请稍候..."
    echo 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
    echo 删除 .config\mihomo\config.yaml 中开头为 "port: 7890" 的行：
    sed -i '/^port: 7890/d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "mixed-port: 7890" 的行：
    sed -i '/^mixed-port: 7890/d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "socks-port: 7891" 的行：
    sed -i '/^socks-port: 7891/d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "allow-lan: " 的行：
    sed -i '/^allow-lan: /d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "external-controller: " 的行：
    sed -i '/^external-controller: /d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "mode: " 的行：
    sed -i '/^mode: /d' "${config_file}"
    echo 删除 .config\mihomo\config.yaml 中开头为 "log-level: " 的行：
    sed -i '/^log-level: /d' "${config_file}"
    echo 在第1行开头添加 port: 7891
    sed -i $'1i\\\nport: 7891\n' "${config_file}"
    echo 在第2行开头添加 socks-port: 7892
    sed -i $'2i\\\nsocks-port: 7892\n' "${config_file}"
    echo 在第3行开头添加 mixed-port: 7893
    sed -i $'3i\\\nmixed-port: 7893\n' "${config_file}"
    echo 在第4行开头添加 external-controller: :7894
    sed -i $'4i\\\nexternal-controller: :7894\n' "${config_file}"
    echo 在第5行开头添加 redir-port: 7895
    sed -i $'5i\\\nredir-port: 7895\n' "${config_file}"
    echo 在第6行开头添加 tproxy-port: 7896
    sed -i $'6i\\\ntproxy-port: 7896\n' "${config_file}"
    echo 在第7行开头添加 allow-lan: true
    sed -i $'7i\\\nallow-lan: true\n' "${config_file}"
    echo 在第8行开头添加 mode: rule
    sed -i $'8i\\\nmode: rule\n' "${config_file}"
    echo 在第9行开头添加 log-level: debug
    sed -i $'9i\\\nlog-level: debug\n' "${config_file}"
}

# 更新url节点
function update_url(){
  urls=(
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/13/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/15/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/1/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/2/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/3/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/13/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash/15/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/1/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/2/config.yaml"
    "https://raw.githubusercontent.com/Alvin9999/pac2/master/clash.meta2/3/config.yaml"
  )
  
  config_files=("config1.yaml" "config2.yaml" "config3.yaml" "config4.yaml" "config5.yaml" "config6.yaml" "config7.yaml" "config8.yaml" "config9.yaml" "config10.yaml" "config11.yaml" "config12.yaml")
  
  index=0
  for url in "${urls[@]}"; do
    echo "${config_files[$index]}" \<- "Updating ${url}"
    curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 \
      --retry 2 -H "Connection: keep-alive" -k "$url" -o "${config_files[$index]}" -O
    # 获取操作系统类型
    os_type="$(uname)"

    # 设置 sed 命令的参数
    if [[ "$os_type" == "Linux" ]]; then
        # 调用函数，并传入config_files数组和索引
        linux_process_config "${config_files[$index]}"
    elif [[ "$os_type" == "Darwin" ]]; then
        # 调用函数，并传入config_files数组和索引
        mac_process_config "${config_files[$index]}"
    else
        echo "不支持的操作系统"
        exit 1
    fi

    let index++
  done
}

# 更新程序windows amd64
function update_windows_amd64(){
# 获取最新版本
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/Dreamacro/clash/releases' | grep windows | sed 's;"; ;g' | grep -v 'px-1' | awk '{print $3}' |  head -n 3 | tail -n 1`

# 获取版本号
# VERSION_NAME=-`dirname ${CLASH_PATH} | xargs basename`

# 获取压缩包名
# FILE_NAME=`basename ${CLASH_PATH}`

# 文件名1
# EXE_FILE_NAME_1=`echo ${FILE_NAME} | sed "s;${VERSION_NAME};;g;s;.zip;.exe;g"`

# 文件名2
# EXE_FILE_NAME_2="clash-windows-amd64.exe"

# 打印环境变量
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
echo "https://github.com${DOWNLOAD}/mihomo-windows-amd64-`basename ${DOWNLOAD}`.zip"

# 下载
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${CLASH_PATH}" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/mihomo-windows-amd64-`basename ${DOWNLOAD}`.zip" -o mihomo-windows-amd64-`basename ${DOWNLOAD}`.zip -O

# 覆盖解压
# unar -f ${FILE_NAME}
unar -f mihomo-windows-amd64-`basename ${DOWNLOAD}`.zip

# 修改文件名
# cp -fv ${EXE_FILE_NAME_1} ${EXE_FILE_NAME_2}
# cp -fv mihomo-windows-amd64.exe clash-windows-amd64.exe
# chmod -vR 777 clash-windows-amd64.exe

# 删除压缩包文件
# rm -rfv ${FILE_NAME} ${EXE_FILE_NAME_1}
# rm -rfv mihomo-windows-amd64-`basename ${DOWNLOAD}`.zip mihomo-windows-amd64.exe
rm -rfv mihomo-windows-amd64-`basename ${DOWNLOAD}`.zip

# 解除环境变量
# unset CLASH_PATH VERSION_NAME FILE_NAME EXE_FILE_NAME_1 EXE_FILE_NAME_2

# 解除成功？
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
}

# 更新程序 linux amd64
function update_linux_amd64(){
# 获取最新版本
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/Dreamacro/clash/releases' | grep linux | grep amd64 | sed 's;"; ;g' | grep -v 'px-1' | awk '{print $3}' |  head -n 2 | tail -n 1`

# 获取版本号
# VERSION_NAME=-`dirname ${CLASH_PATH} | xargs basename`

# 获取压缩包名
# FILE_NAME=`basename ${CLASH_PATH}`

# 文件名1
# EXE_FILE_NAME_1=`echo ${FILE_NAME} | sed 's;.gz;;g'`

# 文件名2
# EXE_FILE_NAME_2="clash-linux-amd64"

# 打印环境变量
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
echo "https://github.com${DOWNLOAD}/mihomo-linux-amd64-`basename ${DOWNLOAD}`.gz"

# 下载
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${CLASH_PATH}" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/mihomo-linux-amd64-`basename ${DOWNLOAD}`.gz" -o mihomo-linux-amd64-`basename ${DOWNLOAD}`.gz -O

# 覆盖解压
# unar -f ${FILE_NAME}
unar -f mihomo-linux-amd64-`basename ${DOWNLOAD}`.gz 

# 修改文件名
# cp -fv ${EXE_FILE_NAME_1} ${EXE_FILE_NAME_2}
cp -fv mihomo-linux-amd64-`basename ${DOWNLOAD}` mihomo-linux-amd64
# chmod -vR 777 clash-linux-amd64

# 删除压缩包文件
# rm -rfv ${FILE_NAME} ${EXE_FILE_NAME_1}
rm -rfv mihomo-linux-amd64-`basename ${DOWNLOAD}`.gz mihomo-linux-amd64-`basename ${DOWNLOAD}`

# 解除环境变量
# unset CLASH_PATH VERSION_NAME FILE_NAME EXE_FILE_NAME_1 EXE_FILE_NAME_2

# 解除成功？
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
}

# 更新程序 mac amd64
function update_mac_amd64(){
# 获取最新版本
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/Dreamacro/clash/releases' | grep darwin | grep amd64 | sed 's;"; ;g' | grep -v 'px-1' | awk '{print $3}' |  head -n 2 | tail -n 1`

# 获取版本号
# VERSION_NAME=-`dirname ${CLASH_PATH} | xargs basename`

# 获取压缩包名
# FILE_NAME=`basename ${CLASH_PATH}`

# 文件名1
# EXE_FILE_NAME_1=`echo ${FILE_NAME} | sed 's;.gz;;g'`

# 文件名2
# EXE_FILE_NAME_2="clash-darwin-amd64"

# 打印环境变量
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
echo "https://github.com${DOWNLOAD}/mihomo-darwin-amd64-`basename ${DOWNLOAD}`.gz"

# 下载
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${CLASH_PATH}" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/mihomo-darwin-amd64-`basename ${DOWNLOAD}`.gz" -o mihomo-darwin-amd64-`basename ${DOWNLOAD}`.gz -O

# 覆盖解压
# unar -f ${FILE_NAME}
unar -f mihomo-darwin-amd64-`basename ${DOWNLOAD}`.gz

# 修改文件名
# cp -fv ${EXE_FILE_NAME_1} ${EXE_FILE_NAME_2}
cp -fv mihomo-darwin-amd64-`basename ${DOWNLOAD}` mihomo-darwin-amd64
# chmod -vR 777 clash-darwin-amd64

# 删除压缩包文件
# rm -rfv ${FILE_NAME} ${EXE_FILE_NAME_1}
rm -rfv mihomo-darwin-amd64-`basename ${DOWNLOAD}`.gz mihomo-darwin-amd64-`basename ${DOWNLOAD}`

# 解除环境变量
# unset CLASH_PATH VERSION_NAME FILE_NAME EXE_FILE_NAME_1 EXE_FILE_NAME_2

# 解除成功？
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
}

# 更新程序 linux armv8 官方改成 arm64 了？
# update_linux_armv8(){
function update_linux_arm64(){
# 下载方法失效？
# 获取最新版本
# CLASH_PATH=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/Dreamacro/clash/releases' | grep linux | grep armv8 | sed 's;"; ;g' | grep -v 'px-1' | awk '{print $3}' |  head -n 1`

# 获取版本号
# VERSION_NAME=-`dirname ${CLASH_PATH} | xargs basename`

# 获取压缩包名
# FILE_NAME=`basename ${CLASH_PATH}`

# 文件名1
# EXE_FILE_NAME_1=`echo ${FILE_NAME} | sed 's;.gz;;g'`

# 文件名2
# EXE_FILE_NAME_2="clash-linux-armv8"

# 打印环境变量变成 arm64 了？
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
# echo "https://github.com${DOWNLOAD}/clash-linux-armv8-`basename ${DOWNLOAD}`.gz" 
echo "https://github.com${DOWNLOAD}/mihomo-linux-arm64-`basename ${DOWNLOAD}`.gz"

# 下载变成 arm64 了？
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${CLASH_PATH}" -O
# curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/clash-linux-armv8-`basename ${DOWNLOAD}`.gz" -o clash-linux-armv8-`basename ${DOWNLOAD}`.gz -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${DOWNLOAD}/mihomo-linux-arm64-`basename ${DOWNLOAD}`.gz" -o mihomo-linux-arm64-`basename ${DOWNLOAD}`.gz -O

# 覆盖解压变成 arm64 了？
# unar -f ${FILE_NAME}
# unar -f clash-linux-armv8-`basename ${DOWNLOAD}`.gz
unar -f mihomo-linux-arm64-`basename ${DOWNLOAD}`.gz

# 修改文件名变成 arm64 了？
# cp -fv ${EXE_FILE_NAME_1} ${EXE_FILE_NAME_2}
# cp -fv clash-linux-armv8-`basename ${DOWNLOAD}` clash-linux-armv8
# chmod -vR 777 clash-linux-armv8
cp -fv mihomo-linux-arm64-`basename ${DOWNLOAD}` mihomo-linux-arm64
# chmod -vR 777 clash-linux-arm64

# 删除压缩包文件变成 arm64 了？
# rm -rfv ${FILE_NAME} ${EXE_FILE_NAME_1}
# rm -rfv clash-linux-armv8-`basename ${DOWNLOAD}`.gz clash-linux-armv8-`basename ${DOWNLOAD}`
rm -rfv mihomo-linux-arm64-`basename ${DOWNLOAD}`.gz mihomo-linux-arm64-`basename ${DOWNLOAD}`

# 解除环境变量
# unset CLASH_PATH VERSION_NAME FILE_NAME EXE_FILE_NAME_1 EXE_FILE_NAME_2

# 解除成功？
# echo -e "${CLASH_PATH}\n${VERSION_NAME}\n${FILE_NAME}\n${EXE_FILE_NAME_1}\n${EXE_FILE_NAME_2}"
}

# 更新 geoip 文件 Country.mmdb
function update_geoip_Country_mmdb(){
# 下载环境
#GEOIP_DOWNLOAD=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/Loyalsoldier/geoip/releases' | sed 's;";\n;g;s;tag;download;g' | grep '/download/' | head -n 1`

# 打印环境变量
#echo "https://github.com${GEOIP_DOWNLOAD}/Country.mmdb"

# 下载覆盖修改文件
#curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://github.com${GEOIP_DOWNLOAD}/Country.mmdb" -o Country.mmdb -O 
wget --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c 'https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geoip.metadb' -O '.config/mihomo/geoip.metadb'
wget --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c 'https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/country.mmdb' -O '.config/mihomo/country.mmdb'
}


# 执行操作
# 更新 yaml
update_url
# 更新 clash 内核程序
update_linux_amd64
update_mac_amd64
update_windows_amd64
# update_linux_armv8
update_linux_arm64
update_geoip_Country_mmdb

# 返回上层目录
cd ../ ; echo "ok good!"
chmod -vR 777 ./

# 解除环境
unset PWD_HOME DOWNLOAD
echo ${PWD} ${DOWNLOAD}
