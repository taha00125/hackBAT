@echo off
setlocal

set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=10"

:loop
set "folderName="
for /l %%i in (1,1,%length%) do (
    set /a index=!random! %% 62
    for /l %%j in (!index!,1,!index!) do (
        set "folderName=!folderName!!chars:~%%j,1!"
    )
)

if exist "C:\!folderName!" (
    goto loop
) else (
    md "C:\!folderName!"
    goto loop
)
