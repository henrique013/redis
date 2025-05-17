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
cp .redis.env.example .redis.env
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

### Criar uma nova tag

Para criar e enviar uma nova tag para o repositório remoto:

```bash
./tag.sh 1.0.0
```

Substitua `1.0.0` pela versão desejada seguindo o padrão [SemVer](https://semver.org/).

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
- A porta **pública** padrão (6379) pode ser alterada através da variável `PUBLIC_PORT`

## 📦 Estrutura do Projeto

```
.
├── dev/                   # Ambiente de desenvolvimento
│   ├── .env.example       # Exemplo de variáveis de ambiente usadas pelo Docker Compose
│   ├── .redis.env.example # Exemplo de variáveis de ambiente usadas pela imagem do Redis
│   ├── docker-compose.yml # Docker Compose de desenvolvimento
│   ├── up.sh              # Script para iniciar o container
│   ├── down.sh            # Script para parar o container
│   └── tag.sh             # Script para gerar tag do container
├── src/                   # Código fonte e configurações
│   ├── entrypoint.sh      # Script de startup do container
│   └── redis.conf         # Configuração do Redis
└── Dockerfile             # Configuração da imagem do Redis
```

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## ✨ Autor

- LinkedIn: [Henrique Alves](https://www.linkedin.com/in/henrique-alves-a44b99135)
- GitHub: [henrique013](https://github.com/henrique013)
