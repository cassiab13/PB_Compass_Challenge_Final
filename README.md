# 🍿 Cinema APP

Aplicação para reserva de ingressos de cinema com backend em Node.js e frontend em React, incluindo testes automatizados com Postman e Robot Framework.

---

## 🔢 Índice

- [Sobre](#sobre)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Pré-requisitos](#pré-requisitos)
- [Instalação e Execução](#instalação-e-execução)
- [Testes Automatizados](#testes-automatizados)
- [Documentação](#documentação)
- [Relatórios](#relatórios)
- [CI/CD](#cicd)
- [Contato](#contato)

---

## ℹ Sobre

O **Cinema APP** é um sistema para gerenciar reservas de ingressos de cinema, com funcionalidades de cadastro, login, visualização e cancelamento de reservas.

O backend foi desenvolvido com Node.js, Express e MongoDB, e o frontend com React e Vite.

A qualidade do software é garantida por testes automatizados, tanto na API quanto na interface, utilizando Postman e Robot Framework.

---

## 🗂 Estrutura do Projeto

├── cinema-challenge-backend/ # Backend Node.js + Express

├── cinema-challenge-frontend/ # Frontend React + Vite

├── documentacao/ # Plano de testes, collection Postman e relatórios

├── robot-framework/ # Testes automatizados Robot Framework

├── .github/workflows/ # Configuração CI/CD GitHub Actions

├── README.md # Documentação principal do projeto

---

## 🚩 Pré-requisitos

- Node.js (v18+ recomendado)
- npm ou yarn
- MongoDB (local ou remoto)
- Python 3.x
- Robot Framework e dependências (via `requirements.txt`)
- Git

---

## 💻 Instalação e Execução

### Backend

1. Entre na pasta do backend:
   ```bash
   cd cinema-challenge-backend

2. Instale as dependências:
   npm install

3. Crie o arquivo .env com as variáveis de ambiente:
   PORT=3000
   MONGODB_URI=mongodb://localhost:27017/cinema-app

4. Popule o banco com dados de exemplo:
   npm run seed

5. Inicie o servidor (modo produção):
   npm start

  Ou modo de desenvolvimento com nodemon:
   npm run dev

### Frontend

1. Entre na pasta do frontend:
   cd cinema-challenge-frontend

2. Instale as dependências:
   npm install

3. Crie o arquivo .env.local com as variáveis:
   VITE_API_URL=/api/v1
   VITE_APP_ENV=development
   VITE_ENABLE_MOCK_API=false
   VITE_ENABLE_ANALYTICS=false

4. Inicie o servidor frontend:
   npm start

5. O frontend estará disponível em http://localhost:3002.

### 📂 Testes automatizados

Este projeto conta com testes automatizados divididos em:
Testes de API: coleções Postman localizadas na pasta documentacao/, contendo planos de testes para as rotas da API.
Testes de UI e integração: scripts Robot Framework na pasta robot-framework/, que automatizam interações na interface e validações funcionais.
Para executar os testes, consulte o arquivo de workflow .github/workflows/ci.yml para ver o processo automatizado, ou rode localmente via Newman e Robot Framework.

### 📝 Documentações
A pasta documentacao/ contém o plano de testes detalhado para o sistema Cinema APP, incluindo:
Coleções Postman com testes automatizados para API
Arquivos de ambiente para execução
Relatórios dos testes executados

### 📜 Relatórios
Após a execução dos testes, os relatórios são gerados automaticamente e podem ser encontrados em:
Relatórios Postman: documentacao/postman-results.xml
Relatórios Robot Framework: robot-framework/output.xml, robot-framework/log.html e robot-framework/report.html
Estes relatórios auxiliam na análise dos resultados e acompanhamento da qualidade do projeto.

### 🟢 CI/CD
O projeto possui integração contínua configurada via GitHub Actions:
Roda testes automatizados de backend e frontend
Inicia a aplicação para execução dos testes
Gera e armazena relatórios dos testes
Para mais detalhes, verifique o arquivo .github/workflows/ci.yml.

#### 📱 Contato
Para dúvidas ou contribuições, abra uma issue ou envie um pull request.
