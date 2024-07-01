cls.
@echo off
color 0a
rem %1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
set PWD=%~dp0sources\

CD /D "%PWD%"

@echo "当前目录%PWD%"

setlocal enabledelayedexpansion

set URLS[0]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml
set URLS[1]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/13/config.yaml
set URLS[2]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/15/config.yaml
set URLS[3]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/1/config.yaml
set URLS[4]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml
set URLS[5]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml
set URLS[6]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/13/config.yaml
set URLS[7]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/15/config.yaml
set URLS[8]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/config.yaml
set URLS[9]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/1/config.yaml
set URLS[10]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/2/config.yaml
set URLS[11]=https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/3/config.yaml

set CONFIG_FILES[0]=config1.yaml
set CONFIG_FILES[1]=config2.yaml
set CONFIG_FILES[2]=config3.yaml
set CONFIG_FILES[3]=config4.yaml
set CONFIG_FILES[4]=config5.yaml
set CONFIG_FILES[5]=config6.yaml
set CONFIG_FILES[6]=config7.yaml
set CONFIG_FILES[7]=config8.yaml
set CONFIG_FILES[8]=config9.yaml
set CONFIG_FILES[9]=config10.yaml
set CONFIG_FILES[10]=config11.yaml
set CONFIG_FILES[11]=config12.yaml

for /L %%a in (0,1,11) do (
    echo Updating !URLS[%%a]!
    curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 ^
    --retry 2 -H "Connection: keep-alive" -k !URLS[%%a]! -o !CONFIG_FILES[%%a]! -O

    @echo 删除替换修改 port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "port: 7890" 的行：
    findstr /v /c:"port: 7890" !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "mixed-port: 7890" 的行：
    findstr /v /c:"mixed-port: 7890" !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "socks-port: 7891" 的行：
    findstr /v /c:"socks-port: 7891" !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "allow-lan: " 的行：
    findstr /v /c:"allow-lan: " !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "external-controller: " 的行：
    findstr /v /c:"external-controller: " !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "mode: " 的行：
    findstr /v /c:"mode: " !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    @echo 删除 !CONFIG_FILES[%%a]! 中开头为 "log-level: " 的行：
    findstr /v /c:"log-level: " !CONFIG_FILES[%%a]! > temp.txt & move /y temp.txt !CONFIG_FILES[%%a]!

    rem @echo 替换 !CONFIG_FILES[%%a]! 中 "port: 7890" 为 "port: 7891" 替换 "socks-port: 7891" 为 "socks-port: 7892"：
    rem powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) -replace 'port: 7890', 'port: 7891' -replace 'socks-port: 7891', 'socks-port: 7892' | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第1行开头添加 port: 7891
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 1) { 'port: 7891' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第2行开头添加 socks-port: 7892
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 2) { 'socks-port: 7892' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第3行开头添加 mixed-port: 7893
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 3) { 'mixed-port: 7893' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第4行开头添加 external-controller: :7894
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 4) { 'external-controller: :7894' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第5行开头添加 redir-port: 7895
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 5) { 'redir-port: 7895' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第6行开头添加 tproxy-port: 7896
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 6) { 'tproxy-port: 7896' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第7行开头添加 allow-lan: true
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 7) { 'allow-lan: true' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第8行开头添加 mode: rule
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 8) { 'mode: rule' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 在第9行开头添加 log-level: debug
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) | ForEach-Object { if ($_.ReadCount -eq 9) { 'log-level: debug' } $_ } | Set-Content !CONFIG_FILES[%%a]!"

    @echo 替换 utf-8 crlf 为 lf 即 去除每行结尾的 \r
    powershell -Command "(Get-Content !CONFIG_FILES[%%a]!) -join \"`n\" | Set-Content -NoNewline !CONFIG_FILES[%%a]!"
)
endlocal
rem echo.&echo.已经完成，请按回车键或空格键关闭此窗口！&pause >NUL 2>NUL