#!/usr/bin/env bash
# 当前路径
PWD=$(pwd)/sources
mkdir -pv "${PWD}"
cd "${PWD}"

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

update_url
