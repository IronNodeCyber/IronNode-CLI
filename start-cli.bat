@echo off
title IronNode - AI Security Terminal CLI
color 0A
echo.
echo ===================================================
echo  IronNode Security Utility - Interactive Terminal
echo ===================================================
echo.

cd /d "%~dp0"

:: Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    color 0C
    echo ERROR: Node.js is not installed on this system.
    echo Please install Node.js from https://nodejs.org/ to run this utility.
    echo.
    pause
    exit /b
)

:: Install dependencies if node_modules is missing
if not exist node_modules (
    echo [IronNode] First-time setup: Installing dependencies (ethers, chalk, dotenv)...
    call npm install
    if %errorlevel% neq 0 (
        color 0C
        echo ERROR: Failed to install npm dependencies.
        echo.
        pause
        exit /b
      )
)

echo [IronNode] Launching Interactive Terminal CLI...
echo.
node cli.js
pause
