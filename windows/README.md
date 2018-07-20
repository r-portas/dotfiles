# Windows Installer
1. Run `Set-ExecutionPolicy RemoteSigned` in powershell
2. Run the installer script with powershell, ensure powershell is running as Admin

## Automated install script

Run with powershell
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/r-portas/dotfiles/master/windows/install.ps1'))
```
