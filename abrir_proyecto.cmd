@echo off
if /i "%~d0"=="P:" goto abrir
subst P: /d >nul 2>&1
subst P: "%~dp0."
:abrir
for %%f in (P:\*.opj) do start "" "%%f"
