# Define the URL for the Multipass installer
$installerUrl = "https://github.com/canonical/multipass/releases/download/v1.14.0/multipass-1.14.0+win-win64.exe"
$installerPath = "$env:TEMP\multipass-1.14.0+win-win64.exe"

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Run the installer silently
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

# Clean up the installer file if you no longer need it
Remove-Item $installerPath

# Confirm installation
if (Get-Command "multipass" -ErrorAction SilentlyContinue) {
    Write-Host "Multipass has been successfully installed."
    exit 0
} else {
    Write-Host "Multipass installation failed."
    exit 1
}
