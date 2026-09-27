@echo off
setlocal EnableExtensions
set "PROJECT=Z:\public\Pato\Dashboards\Comex"
set "COMEX_SOURCE=Z:\public\COMEX\Importaciones_SNFARG_2025.xlsx"
set "LOG=%PROJECT%\logs\actualizacion.log"
cd /d "%PROJECT%" || exit /b 10
if not exist "%COMEX_SOURCE%" (echo [%date% %time%] ERROR fuente no accesible>>"%LOG%" & exit /b 11)
where node >nul 2>&1 || (echo [%date% %time%] ERROR Node no disponible>>"%LOG%" & exit /b 12)
if not exist node_modules call npm install >>"%LOG%" 2>&1
call npm run build:data >>"%LOG%" 2>&1 || exit /b 13
call npx netlify deploy --prod --dir . >>"%LOG%" 2>&1 || exit /b 14
echo [%date% %time%] OK actualización y deploy>>"%LOG%"
exit /b 0
