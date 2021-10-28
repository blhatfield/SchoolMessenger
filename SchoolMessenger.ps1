Rename-Item -Path "C:\Program Files (x86)\SchoolMessenger\config.json" -NewName "old_Config.json"
Invoke-WebRequest "https://github.com/blhatfield/SchoolMessenger/config_Employee_ddcc.json" -Outfile 'C:\Program Files (x86)\SchoolMessenger\config.json'
Rename-Item -Path "C:\Program Files (x86)\SchoolMessenger\icons\banner.png" -NewName "old_banner.png"
Invoke-WebRequest "https://github.com/blhatfield/SchoolMessenger/banner.png" -Outfile 'C:\Program Files (x86)\SchoolMessenger\icons\banner.png'
ping -n 3 127.0.0.1
