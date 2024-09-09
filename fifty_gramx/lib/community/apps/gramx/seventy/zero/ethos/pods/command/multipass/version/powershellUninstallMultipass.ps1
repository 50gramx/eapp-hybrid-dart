$programName = "Multipass"
$uninstallCommand = $null

# Define registry paths to search
$registryPaths = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

# Search all registry paths for the program
foreach ($path in $registryPaths) {
    $installedProgram = Get-ItemProperty $path -ErrorAction SilentlyContinue | Where-Object { $_.DisplayName -like "*$programName*" }
    if ($installedProgram) {
        $uninstallCommand = $installedProgram.UninstallString
        break
    }
}

if ($uninstallCommand) {
    Write-Host "$programName is installed."
    # Uninstall the program
    & $uninstallCommand /quiet
    Write-Host "$programName has been uninstalled."
    exit 0
} else {
    Write-Host "$programName is not installed on this system."
    exit 1
}
