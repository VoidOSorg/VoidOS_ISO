@echo off
echo wait...
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\*\Installer\setup.exe" (
    for /d %%d in ("%ProgramFiles(x86)%\Microsoft\Edge\Application\*") do (
        "%%d\Installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall >nul 2>nul
    )
)
if exist "%ProgramW6432%\Microsoft\Edge\Application\*\Installer\setup.exe" (
    for /d %%d in ("%ProgramW6432%\Microsoft\Edge\Application\*") do (
        "%%d\Installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall >nul 2>nul
    )
)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f >nul 2>nul
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f >nul 2>nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext\CLSID" /v "{7d6d2c2b-1c4e-4e5f-b7c4-8f2e6b3d9a1e}" /t REG_DWORD /d 1 /f >nul 2>nul
echo Operazione completata.
pause
