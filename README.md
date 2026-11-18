# Project V - Calculadora Científica

Calculadora científica interativa desenvolvida para a disciplina de Matemática Computacional (UNA, Contagem).

## Funcionalidades

- Calculadora básica: `+`, `−`, `×`, `÷`, parênteses, decimais (vírgula), CE, C, backspace e ±
- Avaliação de funções f(x), com `+ − * / ^`, parênteses e multiplicação implícita (`2x`, `3(x+1)`)
- Operações com matrizes: soma, subtração, multiplicação por escalar e multiplicação
- Análise combinatória: fatorial, permutação simples e com repetição, combinação C(n,k)
- Sequências e recorrências lineares de segunda ordem
- Tema claro e escuro (a escolha fica salva no navegador)
- Wireframes das telas

Nos campos de número é possível usar vírgula ou ponto como separador decimal.

## Como abrir a calculadora

O `dist/` não fica no repositório (está no `.gitignore`), então ele precisa ser gerado:

1. Instale o Node.js 18 ou superior.
2. Na pasta do projeto, rode `npm install` e depois `npm run build`.
3. Dê um duplo clique em `dist/index.html`: ele abre no navegador e funciona sem internet.

**Atalho para rodar localmente:** no Windows, dê duplo clique em `iniciar.bat`; no Mac/Linux, rode `./iniciar.sh`. Ele instala as dependências na primeira vez e abre a calculadora em http://localhost:5173 (equivale a `npm install` + `npm run dev`).

Outros comandos:

- `npm run typecheck`: verifica os tipos do TypeScript
- `npm run lint`: verifica o padrão do código

## Estrutura

- `src/lib/`: lógica de cálculo (expressões, combinatória, matrizes, estado da calculadora, leitura de números)
- `src/components/`: telas e módulos da aplicação
- `src/App.tsx`: navegação, cabeçalho e tema
