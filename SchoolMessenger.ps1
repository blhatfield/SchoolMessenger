Stop-Process -Name messenger
Rename-Item -Path "C:\Program Files (x86)\SchoolMessenger\config.json" -NewName "old_Config.json"
Invoke-WebRequest "https://raw.githubusercontent.com/blhatfield/SchoolMessenger/main/config_Employee%20_ddcc.json" -Outfile 'C:\Program Files (x86)\SchoolMessenger\config.json'
Rename-Item -Path "C:\Program Files (x86)\SchoolMessenger\icons\banner.PNG" -NewName "old_banner.png"
Invoke-WebRequest "https://raw.githubusercontent.com/blhatfield/SchoolMessenger/main/banner.png" -Outfile 'C:\Program Files (x86)\SchoolMessenger\icons\banner.png'
Start-Process -FilePath "C:\Program Files (x86)\SchoolMessenger\messenger.exe"
ping -n 3 127.0.0.1
