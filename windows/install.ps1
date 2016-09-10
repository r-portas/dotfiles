iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y googlechrome
choco install -y firefox
choco install -y nodejs.install
choco install -y 7zip.install
choco install -y python3
choco install -y f.lux
