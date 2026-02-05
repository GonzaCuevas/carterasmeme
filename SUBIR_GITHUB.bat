@echo off
title Subir a GitHub - MEME STUDIO
color 0B
echo.
echo ========================================
echo   SUBIR PROYECTO A GITHUB
echo ========================================
echo.

REM Verificar si Git está instalado
where git >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Git no esta instalado.
    echo.
    echo Descarga Git desde: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Verificando estado de Git...
echo.

REM Verificar si es un repositorio Git
if not exist ".git" (
    echo Inicializando repositorio Git...
    git init
    echo.
)

REM Mostrar estado
echo Archivos que se van a subir:
git status --short
echo.

REM Verificar si hay cambios
git diff --quiet
if errorlevel 1 (
    echo Hay cambios sin commitear.
    echo.
    set /p commit_msg="Mensaje del commit (Enter para 'Initial commit'): "
    if "!commit_msg!"=="" set commit_msg=Initial commit - MEME STUDIO
    
    echo.
    echo Agregando archivos...
    git add .
    
    echo Haciendo commit...
    git commit -m "!commit_msg!"
    echo.
)

REM Verificar si hay remote configurado
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo.
    echo ========================================
    echo   CONFIGURAR REPOSITORIO REMOTO
    echo ========================================
    echo.
    echo 1. Ve a https://github.com/new
    echo 2. Crea un nuevo repositorio
    echo 3. NO marques "Initialize with README"
    echo 4. Copia la URL del repositorio
    echo.
    set /p repo_url="Pega la URL del repositorio (ej: https://github.com/usuario/repo.git): "
    
    if not "!repo_url!"=="" (
        git remote add origin "!repo_url!"
        git branch -M main
        echo.
        echo Remote configurado correctamente.
        echo.
    ) else (
        echo.
        echo No se configuro el remote. Configuralo manualmente con:
        echo   git remote add origin TU_URL_AQUI
        echo.
        pause
        exit /b 0
    )
)

echo.
echo ========================================
echo   SUBIENDO A GITHUB
echo ========================================
echo.

REM Intentar hacer push
git push -u origin main

if errorlevel 1 (
    echo.
    echo [ADVERTENCIA] El push fallo.
    echo.
    echo Posibles causas:
    echo - El repositorio remoto no existe
    echo - No tienes permisos
    echo - Necesitas autenticarte
    echo.
    echo Solucion:
    echo 1. Verifica que el repositorio existe en GitHub
    echo 2. Configura tu autenticacion de Git
    echo 3. Intenta de nuevo: git push -u origin main
    echo.
) else (
    echo.
    echo ========================================
    echo   ¡PROYECTO SUBIDO EXITOSAMENTE!
    echo ========================================
    echo.
)

pause
