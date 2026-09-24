@echo off
cd /d "%~dp0"

for /r %%F in (*.inf) do (
    pnputil /add-driver "%%F" /install >nul
)

echo Drivers installed successfully.
