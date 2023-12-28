# Get Installed Programs

Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName | Sort-Object DisplayName

## to "grep"> | Select-String "adobe"
## to write to a txt file> | Out-File -FilePath C:\path\to\output.txt

# TODO
## Get disk info, usage
## Get ipconfig
## Get local/cached user profiles
## Get resource info, winver
## Get installed patches
