cls.
@echo off
color 0a
rem %1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

set https_proxy=http://127.0.0.1:7890
set http_proxy=http://127.0.0.1:7890
set all_proxy=socks5://127.0.0.1:7891 
set PWD=%~dp0sources\

CD /D "%PWD%"

@echo "当前目录%PWD%"

curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://gitlab.com/free9999/ipupdate/-/raw/master/clash/config.yaml" -o "config1.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/1/config.yaml" -o "config2.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://gitlab.com/free9999/ipupdate/-/raw/master/clash/3/config.yaml" -o "config3.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/15/config.yaml" -o "config4.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://gitlab.com/free9999/ipupdate/-/raw/master/clash/2/config.yaml" -o "config5.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/13/config.yaml" -o "config6.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o "config7.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/2/config.yaml" -o "config8.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o "config9.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/3/config.yaml" -o "config10.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o "config11.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://www.githubip.xyz/Alvin9999/pac2/master/clash/config.yaml" -o "config12.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/jsvpn/jsproxy@dev/baitai/20200329/1302338.md" -o "config13.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://raw.metahosting.cyou/jsvpn/jsproxy/dev/baitai/20200329/1302338.md" -o "config14.yaml" -O

rem echo.&echo.已经完成，请按回车键或空格键关闭此窗口！&pause >NUL 2>NUL