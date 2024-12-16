@echo off
setlocal enabledelayedexpansion

:: Ask for user password
set /p userPassword="Enter your password: "

:: Variables for character types
set containsLowercase=0
set containsUppercase=0
set containsNumber=0
set containsSymbol=0

:: Debug: show the password length
set passwordLength=0
for /l %%A in (0,1,31) do if "!userPassword:~%%A,1!" neq "" set /a passwordLength+=1
echo Password Length: %passwordLength%

:: Check for lowercase
echo %userPassword% | findstr /r "[a-z]" >nul && set containsLowercase=1
echo Contains Lowercase: %containsLowercase%

:: Check for uppercase
echo %userPassword% | findstr /r "[A-Z]" >nul && set containsUppercase=1
echo Contains Uppercase: %containsUppercase%

:: Check for numbers
echo %userPassword% | findstr /r "[0-9]" >nul && set containsNumber=1
echo Contains Number: %containsNumber%

:: Check for symbols
echo %userPassword% | findstr /r "[!@#$%^&*()_+|~=`{}\[\]:;<>?,./-]" >nul && set containsSymbol=1
echo Contains Symbol: %containsSymbol%

:: Simple strength evaluation
if %passwordLength% lss 6 (
    echo Weak password.
) else if %passwordLength% geq 6 if %passwordLength% lss 10 (
    echo Moderate password.
) else (
    echo Strong password.
)

:: Pause to prevent exiting
pause
