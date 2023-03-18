@echo off
chcp 65001
title IP Pinger
mode 67,30
color a
echo.
echo              ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗██████╗ 
echo              ██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝██╔══██╗
echo              ██████╔╝██║██╔██╗ ██║██║  ███╗█████╗  ██████╔╝
echo              ██╔═══╝ ██║██║╚██╗██║██║   ██║██╔══╝  ██╔══██╗
echo              ██║     ██║██║ ╚████║╚██████╔╝███████╗██║  ██║
echo              ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo                  -------------------------------------
echo                  -       CTRL+C TO STOP PINGING      -
echo                  -------------------------------------
echo.
set /p IP=Enter Kids IP HAHAHA :

:main
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo THE BITCH IS OFFLINE...)
ping -t 2 0 10 127.0.0.1 >nul


color a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo THE BITCH IS OFFLINE...)
ping -t 2 0 10 127.0.0.1 >nul
goto main