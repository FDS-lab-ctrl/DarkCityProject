@echo off
cd /d "%~dp0"
"C:\Users\Nico\OneDrive\Documents\Godot 4\Godot_v4.4.1-stable_win64_console.exe" --path "%~dp0." --editor --import --headless --quit -- --damage-test
start "Dark City - Biblioteca de ropa" "C:\Users\Nico\OneDrive\Documents\Godot 4\Godot_v4.4.1-stable_win64.exe" --path "%~dp0." -- --damage-test --clothing-review
