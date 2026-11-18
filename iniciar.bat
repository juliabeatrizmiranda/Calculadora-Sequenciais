@echo off
chcp 65001 >nul
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js nao encontrado. Instale a versao LTS em https://nodejs.org e rode este arquivo de novo.
  pause
  exit /b 1
)
if not exist node_modules (
  echo Instalando dependencias... isso so acontece na primeira vez.
  call npm install
  if errorlevel 1 ( echo Falha no npm install. & pause & exit /b 1 )
)
echo Abrindo a calculadora em http://localhost:5173
call npm run dev -- --open
pause
