
@shift /0
chcp 65001
@echo off
    setlocal enableextensions enabledelayedexpansion

    rem Define alphabet
    set "alphabet=A B C D E F G H I J K L M N O P Q R S T U V W Y Za b c d f g h i j k l m n p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 . - , + _ / \ depribabyboy"

    rem Create an "array" with the elements of the alphabet
    set "size=0"
    for %%a in (%alphabet%) do (
        set "a.!size!=%%a"
        set /a "size+=1"
    )

    rem Generate the output, selecting 32 randoms elements from the array
    set "k="
    for /l %%a in (1 1 105) do (
        set /a "r=!random! %% size"
        for %%b in (!r!) do set "k=!k!!a.%%b!"
    )
title %k%
endlocal
powershell -Command "&{[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12}; """"& { $((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/amd64fox/SpotX/main/Install.ps1').Content)} -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_on -cache_off -block_update_off -exp_standart -hide_col_icon_off -start_spoti"""" | Invoke-Expression"
cls
echo done baby ^| %username%