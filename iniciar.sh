#!/usr/bin/env bash
cd "$(dirname "$0")"
command -v node >/dev/null || { echo "Node.js nao encontrado. Instale a versao LTS em https://nodejs.org"; exit 1; }
[ -d node_modules ] || { echo "Instalando dependencias (so na primeira vez)..."; npm install || exit 1; }
echo "Abrindo a calculadora em http://localhost:5173"
npm run dev -- --open
