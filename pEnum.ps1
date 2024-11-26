#Logo
$logo = @"
         ____              
   ___  / __/__  __ ____ _ 
  / _ \/ _// _ \/ // /  ' \
 / .__/___/_//_/\_,_/_/_/_/
/_/                        


"@
Write-Host -ForegroundColor Yellow "$logo"

whoami


Write-Host -NoNewLine "Computer Info: " -ForegroundColor Yellow
Get-ComputerInfo | Select-Object -Property WindowsRegisteredOwner, WindowsProductName, WindowsCurrentVersion, WindowsVersion, `
    WindowsEditionId, WindowsSystemRoot, CsSystemType, CsUserName, CsDomain, CsDNSHostname, OsName, `
    OsSystemDirectory, OsWindowsDirectory, OsLocale, OsArchitecture, OsProductType, TimeZone

Write-Host "Network Info: " -ForegroundColor Yellow
ipconfig /all
netstat -ano
route print

Write-Host "User Info: " -ForegroundColor Yellow
Get-ChildItem Env:USERNAME
net group

Write-Host "History Info: " -ForegroundColor Yellow
Get-History -Count 10

