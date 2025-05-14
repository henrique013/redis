# Redis

Este projeto configura um ambiente Redis usando Docker, com configurações otimizadas para persistência de dados e gerenciamento de memória.

## 🚀 Tecnologias

- [Redis](https://redis.io/) - Banco de dados em memória
- [Docker](https://www.docker.com/) - Containerização
- [Docker Compose](https://docs.docker.com/compose/) - Orquestração de containers

## 📋 Pré-requisitos

- Docker
- Docker Compose
- Git

## 🔧 Configuração

1. Clone o repositório:

```bash
git clone https://github.com/henrique013/redis.git
cd redis
```

2. Configure o ambiente de desenvolvimento:

```bash
cd dev
cp .env.example .env
```

3. Edite o arquivo `.env` com suas configurações:

```env
REDIS_PASS=sua_senha_aqui
REDIS_PORT=6379
```

## 🚀 Executando o projeto

Todas as operações de desenvolvimento devem ser realizadas dentro da pasta `dev`:

```bash
cd dev
```

### Iniciar o Redis

```bash
./up.sh
```

### Parar o Redis

```bash
./down.sh
```

## ⚙️ Configurações do Redis

O Redis está configurado com as seguintes otimizações:

### Persistência de Dados

- AOF (Append Only File) ativado
- Sincronização a cada segundo
- Rewrite automático do AOF quando atingir 100% de crescimento ou 64MB

### Política de Memória

- Política `noeviction`: retorna erro quando não há mais memória disponível

### Snapshots

- Salva quando 1 chave muda em 900 segundos (15 minutos)
- Salva quando 10 chaves mudam em 300 segundos (5 minutos)
- Salva quando 10000 chaves mudam em 60 segundos

## 🔐 Segurança

- O Redis é configurado com autenticação por senha
- A senha é definida através da variável de ambiente `REDIS_PASS`
- A porta **pública** padrão (6379) pode ser alterada através da variável `REDIS_PORT`

## 📦 Estrutura do Projeto

```
.
├── dev/                   # Ambiente de desenvolvimento
│   ├── docker-compose.yml # Docker Compose de desenvolvimento
│   ├── .env.example       # Exemplo de configuração
│   ├── up.sh              # Script para iniciar o ambiente
│   └── down.sh            # Script para parar o ambiente
├── src/                   # Código fonte e configurações
│   └── redis.conf         # Configuração do Redis
└── Dockerfile             # Configuração do container
```

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## ✨ Autor

- LinkedIn: [Henrique Alves](https://www.linkedin.com/in/henrique-alves-a44b99135)
- GitHub: [henrique013](https://github.com/henrique013)
