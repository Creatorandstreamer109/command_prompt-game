@echo off
color 0A
setlocal enabledelayedexpansion

:: Questions and Options
set "questions[0]=Which year was the original PlayStation console released?"
set "options[0][0]=1. 1991"
set "options[0][1]=2. 1994"
set "options[0][2]=3. 1996"
set "options[0][3]=4. 1999"
set "answers[0]=2"

set "questions[1]=What was the first video game to ever be played in space?"
set "options[1][0]=1. Doom"
set "options[1][1]=2. Super Mario Bros"
set "options[1][2]=3. Tetris"
set "options[1][3]=4. Pong"
set "answers[1]=3"

set "questions[2]=Which was the best-selling video game console of all time?"
set "options[2][0]=1. PlayStation 2"
set "options[2][1]=2. Xbox 360"
set "options[2][2]=3. Nintendo Switch"
set "options[2][3]=4. Wii"
set "answers[2]=1"

set "questions[3]=Which game features the iconic phrase: 'The cake is a lie'?"
set "options[3][0]=1. Portal"
set "options[3][1]=2. Half-Life"
set "options[3][2]=3. BioShock"
set "options[3][3]=4. Mass Effect"
set "answers[3]=1"

set "questions[4]=Which console was codenamed 'Project Dolphin' during development?"
set "options[4][0]=1. Nintendo 64"
set "options[4][1]=2. GameCube"
set "options[4][2]=3. PlayStation"
set "options[4][3]=4. Xbox"
set "answers[4]=2"

set "questions[5]=In which game can you encounter 'Mew' under a truck?"
set "options[5][0]=1. Pokemon Red/Blue"
set "options[5][1]=2. Pokemon Gold/Silver"
set "options[5][2]=3. Pokemon Diamond/Pearl"
set "options[5][3]=4. Pokemon Sword/Shield"
set "answers[5]=1"

set "questions[6]=Which company developed the iconic game 'GoldenEye 007' for the N64?"
set "options[6][0]=1. Rare"
set "options[6][1]=2. Nintendo"
set "options[6][2]=3. EA"
set "options[6][3]=4. Ubisoft"
set "answers[6]=1"

set "questions[7]=What is the best-selling game of all time as of 2024?"
set "options[7][0]=1. Tetris"
set "options[7][1]=2. Minecraft"
set "options[7][2]=3. Grand Theft Auto V"
set "options[7][3]=4. Fortnite"
set "answers[7]=2"

set "questions[8]=Which console was the first to have built-in online gaming?"
set "options[8][0]=1. Dreamcast"
set "options[8][1]=2. PlayStation 2"
set "options[8][2]=3. Xbox"
set "options[8][3]=4. GameCube"
set "answers[8]=1"

set "questions[9]=Which video game has the most expensive in-game item ever sold?"
set "options[9][0]=1. Second Life"
set "options[9][1]=2. World of Warcraft"
set "options[9][2]=3. Eve Online"
set "options[9][3]=4. Star Citizen"
set "answers[9]=4"

:MainMenu
cls
echo ---------- Welcome player! ----------
echo 1) START
echo 2) HOW TO PLAY
echo 3) EXIT
set /p menuChoice="Enter your choice (1-3): "

if "%menuChoice%"=="1" goto StartGame
if "%menuChoice%"=="2" goto HowToPlay
if "%menuChoice%"=="3" exit
echo Invalid choice, please select 1, 2, or 3.
pause
goto MainMenu

:StartGame
for /L %%i in (0,1,9) do (
    echo !questions[%%i]!
    echo.
    echo !options[%%i][0]!
    echo !options[%%i][1]!
    echo !options[%%i][2]!
    echo !options[%%i][3]!
    echo.
    set /p userAnswer="Your answer: "
    
    if "!userAnswer!"=="!answers[%%i]!" (
        if %%i==9 (
            echo Congrats! You win! Thanks for playing!
            start cmd.exe /k curl parrot.live
            exit
        ) else (
            echo Correct! Moving to the next question...
            pause
        )
    ) else (
        echo Wrong answer! Opening a surprise...
        start cmd.exe /k curl ascii.live/rick
        exit
    )
)
goto MainMenu

:HowToPlay
cls
echo Answer all the questions correctly to win!
echo Press any key to go back to the main menu.
pause >nul
goto MainMenu