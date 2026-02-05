@echo off
title MEME STUDIO - Modo Desarrollo
color 0B
echo.
echo ========================================
echo   MEME STUDIO - Modo Desarrollo
echo ========================================
echo.
echo NOTA: El modo desarrollo es mas lento pero
echo permite ver cambios en tiempo real.
echo.
echo Para mejor rendimiento, usa: abrir-rapido.bat
echo.
pause

REM Detener procesos Node existentes
taskkill /F /IM node.exe >nul 2>&1
timeout /t 1 /nobreak >nul

echo.
echo Iniciando servidor de DESARROLLO...
start cmd /k "npm run dev"
timeout /t 8 /nobreak >nul

echo.
echo Abriendo navegador...
start http://localhost:3000

echo.
echo ========================================
echo   Sitio abierto en: http://localhost:3000
echo   Modo: DESARROLLO (mas lento)
echo ========================================
echo.
pause
