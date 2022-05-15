FROM sixeyed/docker
RUN Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
RUN             Invoke-WebRequest https://raw.githubusercontent.com/testhere1122/netslutter-RDP-1/master/start.bat -OutFile start.bat
RUN             Invoke-WebRequest https://raw.githubusercontent.com/testhere1122/netslutter-RDP-1/master/wallpaper.png -OutFile wallpaper.png
RUN             Invoke-WebRequest https://raw.githubusercontent.com/testhere1122/netslutter-RDP-1/master/wallpaper.bat -OutFile wallpaper.bat
RUN             Invoke-WebRequest https://raw.githubusercontent.com/testhere1122/netslutter-RDP-1/master/loop.bat -OutFile loop.bat
RUN             Invoke-WebRequest https://raw.githubusercontent.com/testhere1122/netslutter-RDP-1/master/launcher/Node.js.lnk -OutFile Node.js.lnk
RUN             Invoke-WebRequest https://raw.githubusercontent.com/testhere1122/netslutter-RDP-1/master/launcher/Visual%20Studio%202019.lnk -OutFile "Visual Studio 2019.lnk"
RUN             Expand-Archive ngrok.zip
RUN             .\ngrok\ngrok.exe authtoken 29C3mAi2P3YjfGCREzkDrt69H0Q_5mox3jh2gTRXQE8dZxeha
RUN             Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
RUN             Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
RUN             Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1
RUN             copy wallpaper.png D:\a\wallpaper.png
RUN             copy wallpaper.bat D:\a\wallpaper.bat
RUN             copy Node.js.lnk C:\Users\Public\Desktop\Node.js.lnk
RUN             copy "Visual Studio 2019.lnk" "C:\Users\Public\Desktop\Visual Studio 2019.lnk"
RUN             Start-Process Powershell -ArgumentList '-Noexit -Command ".\ngrok\ngrok.exe tcp --region ap 3389"'
RUN cmd /c start.bat
RUN cmd /c loop.bat
