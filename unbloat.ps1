Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Set-Location $env:TEMP
# W4RH4WK/Debloat-Windows-10
Invoke-RestMethod -Uri https://github.com/W4RH4WK/Debloat-Windows-10/archive/refs/heads/master.zip -OutFile ./Debloat-Windows-10.zip
Expand-Archive ./Debloat-Windows-10.zip
Set-Location ./Debloat-Windows-10/scripts
ls -Recurse *.ps*1 | Unblock-File
& .\block-telemetry.ps1
& .\disable-services.ps1
& .\fix-privacy-settings.ps1
& .\optimize-user-interface.ps1
& .\optimize-windows-update.ps1
& .\remove-default-apps.ps1
& .\remove-onedrive.ps1

Set-Location $env:TEMP
# Sycnex/Windows10Debloater
Invoke-RestMethod -Uri https://github.com/Sycnex/Windows10Debloater/archive/refs/heads/master.zip -OutFile ./Windows10Debloater.zip
Expand-Archive ./Windows10Debloater.zip
Set-Location ./Windows10Debloater
& .\Windows10SysPrepDebloater.ps1 -Sysprep -Debloat -Privacy

Set-Location $env:TEMP
# https://www.oo-software.com/en/shutup10
Invoke-RestMethod -Uri https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe -OutFile ./OOSU10.exe
Start-Process -Wait ./OOSU10.exe
