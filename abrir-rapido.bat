@echo off
title MEME STUDIO - Inicio Rapido
color 0A
echo.
echo ========================================
echo   MEME STUDIO - Inicio Rapido
echo ========================================
echo.

REM Detener procesos Node existentes
echo Deteniendo procesos anteriores...
taskkill /F /IM node.exe >nul 2>&1
timeout /t 1 /nobreak >nul

REM Verificar si existe el build
if not exist ".next" (
    echo.
    echo [ADVERTENCIA] No se encontro build de produccion.
    echo Generando build optimizado (esto puede tardar 1-2 minutos)...
    echo.
    call npm run build
    if errorlevel 1 (
        echo.
        echo [ERROR] Fallo el build. Usando modo desarrollo...
        start cmd /k "npm run dev"
        timeout /t 8 /nobreak >nul
        start http://localhost:3000
        pause
        exit
    )
)

echo.
echo Iniciando servidor de PRODUCCION (mas rapido)...
start cmd /k "npm start"
timeout /t 3 /nobreak >nul

echo.
echo Abriendo navegador...
start http://localhost:3000

echo.
echo ========================================
echo   Sitio abierto en: http://localhost:3000
echo   Modo: PRODUCCION (optimizado)
echo ========================================
echo.
echo Presiona cualquier tecla para cerrar...
pause >nul
