cls.
@echo off
color 0a
rem %1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

set PWD=%~dp0sources\
CD /D "%PWD%"

@echo "开始吧小老弟！"
@echo "当前目录%PWD%"

@echo 说明
@echo 一、此脚本支持Chrome浏览器，所以需要安装Chrome浏览器，如果有兴趣可以自己DIY别的浏览器。
@echo 二、使用时请将防火墙关闭，并允许专用网络和公用网络
@echo 三、也可以将谷歌浏览器程序放到 sources\Google\Chrome\Application\ 路径中，这样即使没有安装 chrome 也可以直接使用，自行意会吧

:Choice
set /p choice=  "输入 1..12 通过联网更新文件使用，输入 13 随机执行现有文件:"
if /i "%choice%"=="1" goto ip1
if /i "%choice%"=="2" goto ip2
if /i "%choice%"=="3" goto ip3
if /i "%choice%"=="4" goto ip4
if /i "%choice%"=="5" goto ip5
if /i "%choice%"=="6" goto ip6
if /i "%choice%"=="7" goto ip7
if /i "%choice%"=="8" goto ip8
if /i "%choice%"=="9" goto ip9
if /i "%choice%"=="10" goto ip10
if /i "%choice%"=="11" goto ip11
if /i "%choice%"=="12" goto ip12
if /i "%choice%"=="13" goto ip13
echo.&echo.没有这个选项，请按回车键或空格键重试！&pause >NUL 2>NUL
Goto :Choice

rem wget --connect-timeout=5 --no-check-certificate 
:ip1
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经1，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip2
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/13/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经2，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip3
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/15/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经3，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip4
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/1/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经4，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo


:ip5
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经5，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo


:ip6
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经6，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip7
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/13/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经7，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip8
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/15/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经8，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip9
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经9，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip10
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/1/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经10，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip11
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/2/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经11，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip12
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/3/config.yaml" -o ".config\mihomo\config.yaml"
echo.&echo.已经12，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:ip13
set pmin=1
set pmax=12
set /a pmod=%pmax%-%pmin%
set /a pnum=%RANDOM% %% %pmod%+%pmin%
echo config%pnum%.yaml
copy /Y config%pnum%.yaml ".config\mihomo\config.yaml"
echo.&echo.已经随机使用文件%pnum%，请按回车键或空格键启动程序！&pause >NUL 2>NUL
goto startmihomo

:startmihomo
@echo "等待软件启动，请稍候..."
@echo "可能需要管理员权限来干掉工具、edge和chrome(chromium)浏览器"
taskkill /f /t /im "mihomo-windows*"  >NUL 2>NUL
taskkill /f /t /im "chrome*"  >NUL 2>NUL
taskkill /f /t /im "msedge*"  >NUL 2>NUL
@echo 启动工具
start "" "%PWD%mihomo-windows-amd64.exe"  -d "%PWD%.config\mihomo" >nul 2>&1
rem "..\..\..\chrome-user-data"

IF EXIST "%PWD%Google\Chrome\Application\chrome.exe" (
	echo Chrome浏览器在 "%PWD%Google\Chrome\Application\" 中
	start Google\Chrome\Application\chrome.exe --user-data-dir="%PWD%chrome-user-data" --proxy-server="http://127.0.0.1:7890" "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB"
) ELSE (
	echo Chrome浏览器不在 "%PWD%Google\Chrome\Application\" 中,请检查 "%PWD%Google\Chrome\Application\" 中是否存在 chrome.exe
	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
	IF  not errorlevel 1 (
		echo Chrome浏览器在 "C:\Program Files\Google\Chrome\Application\" 中
    		start chrome.exe --user-data-dir="%PWD%chrome-user-data"  --proxy-server="http://127.0.0.1:7890" "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB"
	) else (
		echo Chrome浏览器不存在或没有正确安装,"C:\Program Files\Google\Chrome\Application\chrome.exe",请尝试重新安装Chrome浏览器
		IF EXIST "%PWD%Microsoft\Edge\Application\msedge.exe" (
			echo Edge浏览器在 "%PWD%Microsoft\Edge\Application\" 中
			start Microsoft\Edge\Application\msedge.exe --user-data-dir="%PWD%edge-user-data" --proxy-server="http://127.0.0.1:7890" "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB"
		) ELSE ( 
			echo Edge浏览器不在 "%PWD%Microsoft\Edge\Application\" 中,请检查 "%PWD%Microsoft\Edge\Application\" 中是否存在 msedge.exe
			%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe" >nul 2>&1
			IF  not errorlevel 1 (
				echo Edge浏览器在 "C:\Program Files (x86)\Microsoft\Edge" 中
				start msedge.exe --user-data-dir="%PWD%edge-user-data" --proxy-server="http://127.0.0.1:7890" "https://www.youtube.com/results?search_query=免费节点&sp=EgQIAxAB"
			) ELSE (
				echo Edge浏览器不存在或没有正确安装,"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",请尝试重新安装Edge浏览器
			)
		)
	)
)

rem echo.&echo.已经执行，请按回车键或空格键关闭此窗口！&pause >NUL 2>NUL