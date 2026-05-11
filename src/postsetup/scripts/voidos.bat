@echo off
if /i "%CD:~0,2%"=="C:" (
    vol C:
) else (
    C:
    vol C:
)
echo Il disco C: e' VoidOS
