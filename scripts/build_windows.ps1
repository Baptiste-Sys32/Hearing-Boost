$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $RepoRoot

python -m pip install -r requirements.txt pycaw comtypes pyinstaller

$IconArgs = @()
if (Test-Path "assets\hearing-boost-icon.ico") {
    $IconArgs = @("--icon", "assets\hearing-boost-icon.ico")
} else {
    Write-Warning "assets\hearing-boost-icon.ico was not found. Building without a Windows .ico file."
}

python -m PyInstaller `
    --noconfirm `
    --clean `
    --windowed `
    --name HearingBoost `
    @IconArgs `
    --add-data "assets\hearing-boost-icon.svg;assets" `
    --version-file "packaging\windows_version_info.txt" `
    hearing_boost.py
