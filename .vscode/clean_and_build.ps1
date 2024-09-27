# cleanup_and_build.ps1

Write-Host "`n`ndelete the release folder data"

# Set the release folder path
$release_folder = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release"

# Check if the folder exists
if (Test-Path $release_folder) {
    Write-Host "Release folder exists, listing contents:"
    Get-ChildItem $release_folder

    Write-Host "Deleting now..."
    Remove-Item -Recurse -Force $release_folder

    if (-not (Test-Path $release_folder)) {
        Write-Host "Release folder successfully deleted."
    } else {
        Write-Host "Failed to delete release folder."
    }
} else {
    Write-Host "Release folder does not exist, nothing to delete."
}

Write-Host "finished deleting the release folder data`n`n"

# Example: Building the app using Flutter
Write-Host "Building Windows release..."
flutter build windows --release

# Example: Renaming the executable
$exePath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\fifty_gramx.exe"
$newExePath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\50GRAMx Ethosverse.exe"
if (Test-Path $exePath) {
    Rename-Item -Path $exePath -NewName $newExePath
    Write-Host "Executable renamed to 50GRAMx Ethosverse.exe"
} else {
    Write-Host "Executable not found. Rename operation skipped."
}

# Example: Running Inno Setup
$innoSetupPath = "C:\Program Files (x86)\Inno Setup 6\ISCC.exe"
$innoScript = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\ethos_node_desktop_windows_inno_script.iss"
& $innoSetupPath $innoScript

Write-Host "Inno Setup build completed."
