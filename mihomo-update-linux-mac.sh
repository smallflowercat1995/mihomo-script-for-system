#!/usr/bin/env bash
PWD=`pwd`/sources
cd ${PWD}
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/config.yaml" -o "config1.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/13/config.yaml" -o "config2.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/15/config.yaml" -o "config3.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/1/config.yaml" -o "config4.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/2/config.yaml" -o "config5.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/3/config.yaml" -o "config6.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/13/config.yaml" -o "config7.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash/15/config.yaml" -o "config8.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/config.yaml" -o "config9.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/1/config.yaml" -o "config10.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/2/config.yaml" -o "config11.yaml" -O
curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k "https://fastly.jsdelivr.net/gh/Alvin9999/pac2@latest/clash.meta2/3/config.yaml" -o "config12.yaml" -O

