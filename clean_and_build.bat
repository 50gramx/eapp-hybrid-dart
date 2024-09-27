#!/bin/bash
echo "delete the release folder data"

release_folder="C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release"

if [ -d "$release_folder" ]; then
    echo "Release folder exists, listing contents:"
    ls "$release_folder"
    echo "Deleting now..."
    rm -rf "$release_folder"
    if [ ! -d "$release_folder" ]; then
        echo "Release folder successfully deleted."
    else
        echo "Failed to delete release folder."
    fi
else
    echo "Release folder does not exist, nothing to delete."
fi


echo finished deleting the release folder data
echo.

:: Example: Building the app using Flutter
echo Building Windows release...
set projectPath=C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx
cd "%projectPath%"
flutter build windows --release

:: Example: Renaming the executable
set exePath=C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\fifty_gramx.exe
set newExePath=C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\50GRAMx Ethosverse.exe

if exist "%exePath%" (
    rename "%exePath%" "50GRAMx Ethosverse.exe"
    echo Executable renamed to 50GRAMx Ethosverse.exe
) else (
    echo Executable not found. Rename operation skipped.
)

:: Example: Running Inno Setup
set innoSetupPath="C:\Program Files (x86)\Inno Setup 6\ISCC.exe"
set innoScript="C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\ethos_node_desktop_windows_inno_script.iss"

%innoSetupPath% %innoScript%

echo Inno Setup build completed.
