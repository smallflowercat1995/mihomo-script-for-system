cls.
@echo off
color 0a
rem %1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

set PWD=%~dp0sources\
CD /D "%PWD%"

@echo "��ʼ��С�ϵܣ�"
@echo "��ǰĿ¼%PWD%"

@echo ˵��
@echo һ���˽ű�֧��Chrome�������������Ҫ��װChrome��������������Ȥ�����Լ�DIY����������
@echo ����ʹ��ʱ�뽫����ǽ�رգ�������ר������͹�������
@echo ����Ҳ���Խ��ȸ����������ŵ� sources\Google\Chrome\Application\ ·���У�������ʹû�а�װ chrome Ҳ����ֱ��ʹ�ã���������

:Choice
set /p choice=  "���� 1..12 ͨ�����������ļ�ʹ�ã����� 13 ���ִ�������ļ�:"
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
echo.&echo.û�����ѡ��밴�س�����ո�����ԣ�&pause >NUL 2>NUL
Goto :Choice

rem wget --connect-timeout=5 --no-check-certificate 
:ip1
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�1���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip2
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/13/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�2���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip3
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/15/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�3���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip4
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/1/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�4���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo


:ip5
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�5���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo


:ip6
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�6���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip7
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/13/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�7���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip8
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/15/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�8���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip9
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�9���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip10
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/1/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�10���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip11
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/2/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�11���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip12
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/3/config.yaml" -o ".config\mihomo\config.yaml"
goto yamledit
echo.&echo.�Ѿ�12���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:ip13
set pmin=1
set pmax=12
set /a pmod=%pmax%-%pmin%
set /a pnum=%RANDOM% %% %pmod%+%pmin%
echo config%pnum%.yaml
copy /Y config%pnum%.yaml ".config\mihomo\config.yaml"
echo.&echo.�Ѿ����ʹ���ļ�%pnum%���밴�س�����ո����������&pause >NUL 2>NUL
goto startmihomo

:yamledit
@echo "���ڱ༭ config.yaml�����Ժ�..."
@echo ɾ���滻�޸� port: 7891 socks-port: 7892 nmixed-port: 7893 external-controller: :7894 redir-port: 7895 tproxy-port: 7896 allow-lan: true mode: rule log-level: debug
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "port: 7890" ���У�
findstr /v /c:"port: 7890" .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "mixed-port: 7890" ���У�
findstr /v /c:"mixed-port: 7890" .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "socks-port: 7891" ���У�
findstr /v /c:"socks-port: 7891" .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "allow-lan: " ���У�
findstr /v /c:"allow-lan: " .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "external-controller: " ���У�
findstr /v /c:"external-controller: " .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "mode: " ���У�
findstr /v /c:"mode: " .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
@echo ɾ�� .config\mihomo\config.yaml �п�ͷΪ "log-level: " ���У�
findstr /v /c:"log-level: " .config\mihomo\config.yaml > temp.txt & move /y temp.txt .config\mihomo\config.yaml
rem @echo �滻 .config\mihomo\config.yaml �� "port: 7890" Ϊ "port: 7891" �滻 "socks-port: 7891" Ϊ "socks-port: 7892"��
rem powershell -Command "(Get-Content .config\mihomo\config.yaml) -replace 'port: 7890', 'port: 7891' -replace 'socks-port: 7891', 'socks-port: 7892' | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�1�п�ͷ��� port: 7891
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 1) { 'port: 7891' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�2�п�ͷ��� socks-port: 7892
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 2) { 'socks-port: 7892' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�3�п�ͷ��� mixed-port: 7893
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 3) { 'mixed-port: 7893' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�4�п�ͷ��� external-controller: :7894
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 4) { 'external-controller: :7894' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�5�п�ͷ��� redir-port: 7895
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 5) { 'redir-port: 7895' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�6�п�ͷ��� tproxy-port: 7896
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 6) { 'tproxy-port: 7896' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�7�п�ͷ��� allow-lan: true
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 7) { 'allow-lan: true' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�8�п�ͷ��� mode: rule
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 8) { 'mode: rule' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �ڵ�9�п�ͷ��� log-level: debug
powershell -Command "(Get-Content .config\mihomo\config.yaml) | ForEach-Object { if ($_.ReadCount -eq 9) { 'log-level: debug' } $_ } | Set-Content .config\mihomo\config.yaml"
@echo �滻 utf-8 crlf Ϊ lf �� ȥ��ÿ�н�β�� \r
powershell -Command "(Get-Content .config\mihomo\config.yaml) -join \"`n\" | Set-Content -NoNewline .config\mihomo\config.yaml"

:startmihomo
@echo "�ȴ�������������Ժ�..."
@echo "������Ҫ����ԱȨ�����ɵ����ߡ�edge��chrome(chromium)�����"
taskkill /f /t /im "mihomo-windows*"  >NUL 2>NUL
taskkill /f /t /im "chrome*"  >NUL 2>NUL
taskkill /f /t /im "msedge*"  >NUL 2>NUL
@echo ��������
start "" "%PWD%mihomo-windows-amd64.exe"  -d "%PWD%.config\mihomo" >nul 2>&1
rem "..\..\..\chrome-user-data"

IF EXIST "%PWD%Google\Chrome\Application\chrome.exe" (
	echo Chrome������� "%PWD%Google\Chrome\Application\" ��
	start Google\Chrome\Application\chrome.exe --user-data-dir="%PWD%chrome-user-data" --proxy-server="http://127.0.0.1:7891" "https://www.youtube.com/results?search_query=��ѽڵ�&sp=EgQIAxAB"
) ELSE (
	echo Chrome��������� "%PWD%Google\Chrome\Application\" ��,���� "%PWD%Google\Chrome\Application\" ���Ƿ���� chrome.exe
	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
	IF  not errorlevel 1 (
		echo Chrome������� "C:\Program Files\Google\Chrome\Application\" ��
    		start chrome.exe --user-data-dir="%PWD%chrome-user-data"  --proxy-server="http://127.0.0.1:7891" "https://www.youtube.com/results?search_query=��ѽڵ�&sp=EgQIAxAB"
	) else (
		echo Chrome����������ڻ�û����ȷ��װ,"C:\Program Files\Google\Chrome\Application\chrome.exe",�볢�����°�װChrome�����
		IF EXIST "%PWD%Microsoft\Edge\Application\msedge.exe" (
			echo Edge������� "%PWD%Microsoft\Edge\Application\" ��
			start Microsoft\Edge\Application\msedge.exe --user-data-dir="%PWD%edge-user-data" --proxy-server="http://127.0.0.1:7891" "https://www.youtube.com/results?search_query=��ѽڵ�&sp=EgQIAxAB"
		) ELSE ( 
			echo Edge��������� "%PWD%Microsoft\Edge\Application\" ��,���� "%PWD%Microsoft\Edge\Application\" ���Ƿ���� msedge.exe
			%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe" >nul 2>&1
			IF  not errorlevel 1 (
				echo Edge������� "C:\Program Files (x86)\Microsoft\Edge" ��
				start msedge.exe --user-data-dir="%PWD%edge-user-data" --proxy-server="http://127.0.0.1:7891" "https://www.youtube.com/results?search_query=��ѽڵ�&sp=EgQIAxAB"
			) ELSE (
				echo Edge����������ڻ�û����ȷ��װ,"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",�볢�����°�װEdge�����
			)
		)
	)
)

rem echo.&echo.�Ѿ�ִ�У��밴�س�����ո���رմ˴��ڣ�&pause >NUL 2>NUL