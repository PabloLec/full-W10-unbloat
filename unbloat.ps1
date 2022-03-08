Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Set-Location $env:TEMP
# W4RH4WK/Debloat-Windows-10
Invoke-RestMethod -Uri https://github.com/W4RH4WK/Debloat-Windows-10/archive/refs/heads/master.zip -OutFile ./Debloat-Windows-10.zip
Expand-Archive ./Debloat-Windows-10.zip
$scriptPath = Join-Path $env:TEMP "Debloat-Windows-10/Debloat-Windows-10-master/scripts"
Set-Location $scriptPath
ls -Recurse *.ps*1 | Unblock-File
& Join-Path $scriptPath "block-telemetry.ps1"
& Join-Path $scriptPath "disable-services.ps1"
& Join-Path $scriptPath "fix-privacy-settings.ps1"
& Join-Path $scriptPath "optimize-user-interface.ps1"
& Join-Path $scriptPath "optimize-windows-update.ps1"
& Join-Path $scriptPath "remove-default-apps.ps1"
& Join-Path $scriptPath "remove-onedrive.ps1"

Set-Location $env:TEMP
# Sycnex/Windows10Debloater
Invoke-RestMethod -Uri https://github.com/Sycnex/Windows10Debloater/archive/refs/heads/master.zip -OutFile ./Windows10Debloater.zip
Expand-Archive ./Windows10Debloater.zip
$scriptPath = Join-Path $env:TEMP "Windows10Debloater/Windows10Debloater-master"
Set-Location $scriptPath
$scriptFile = Join-Path $scriptPath "Windows10SysPrepDebloater.ps1"
& $scriptFile -Sysprep -Debloat -Privacy

Set-Location $env:TEMP
# https://www.oo-software.com/en/shutup10
Invoke-RestMethod -Uri https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe -OutFile ./OOSU10.exe
Start-Process ./OOSU10.exe
