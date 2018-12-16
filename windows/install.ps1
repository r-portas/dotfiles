Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Git for windows
choco install -y git

# Web Browsers
choco install -y googlechrome

# Languages
choco install -y python
choco install -y python3
choco install -y nodejs
choco install -y dotnetcore-sdk

# Web Dev tools
npm install --global --production windows-build-tools

# Tools
choco install -y docker-for-windows
choco install -y 7zip
