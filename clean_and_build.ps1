# Delete the release folder data
Write-Host "Deleting the release folder data"

# Set the release folder path
$releaseFolder = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release"

# Check if the folder exists
if (Test-Path $releaseFolder) {
    Write-Host "Release folder exists, listing contents:"
    Get-ChildItem $releaseFolder

    Write-Host "Deleting now..."
    Remove-Item -Recurse -Force $releaseFolder

    if (-Not (Test-Path $releaseFolder)) {
        Write-Host "Release folder successfully deleted."
    } else {
        Write-Host "Failed to delete release folder."
    }
} else {
    Write-Host "Release folder does not exist, nothing to delete."
}

Write-Host "Finished deleting the release folder data"

# Change directory to project and pull latest changes
Write-Host "Changing directory to project..."
$projectPath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx"
Set-Location $projectPath

Write-Host "Checking out master branch..."
git checkout master

Write-Host "Pulling latest changes from origin..."
git pull

# Build Windows release
Write-Host "Building Windows release..."
flutter build windows --release

# Rename the generated app executable
$exePath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\fifty_gramx.exe"
$newExePath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\50GRAMx Ethosverse.exe"

if (Test-Path $exePath) {
    Rename-Item -Path $exePath -NewName "50GRAMx Ethosverse.exe"
    Write-Host "Executable renamed to 50GRAMx Ethosverse.exe"
} else {
    Write-Host "Executable not found. Rename operation skipped."
}

# Update the version number in the Inno Setup script
$innoScriptPath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\ethos_node_desktop_windows_inno_script.iss"
$versionNumber = (Get-Date -Format "yyyy.MM.dd")
$innoScript = Get-Content $innoScriptPath

# Update the version number in the Inno Setup script using regex
$updatedInnoScript = $innoScript -replace '#define MyAppVersion\s+"(\d{4}\.\d{2}\.\d{2})"', "#define MyAppVersion `"$versionNumber`""

# Write the updated content back to the file
$updatedInnoScript | Set-Content $innoScriptPath

Write-Host "Updated MyAppVersion to $versionNumber in the Inno Setup script."

# Execute the Inno Setup script to create the build
Write-Host "Executing Inno Setup script..."
& "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" $innoScriptPath
Write-Host "Inno Setup build completed."

# Path to generated .exe file
$exeFilePath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\50GRAMx Ethosverse.exe"

# Upload the .exe file to Google Cloud Storage
Write-Host "Uploading the .exe file to Google Cloud Storage..."

# Set the destination in the GCS bucket
$gcsDestination = "gs://packges/com.50gramx.dev/50GRAMx Ethosverse.exe"
$gcloudPath = "C:\Users\amitk\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin\"

# Change directory to gcloud SDK and upload the file
Set-Location $gcloudPath
.\gsutil cp $exeFilePath $gcsDestination

Write-Host "Upload to Google Cloud Storage completed."
