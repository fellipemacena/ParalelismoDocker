# Use a imagem Cypress como base
FROM cypress/included:13.6.6

# Instalar dependências adicionais se necessário (por exemplo, bash, git, etc.)
RUN apt-get update && apt-get install -y bash

# Copiar os arquivos do projeto para dentro do container
WORKDIR /e2e
COPY . /e2e

# Instalar dependências do Cypress (caso ainda não estejam instaladas)
RUN npm ci

# Configurar o comando padrão para rodar os testes
ENTRYPOINT ["npx", "cypress", "run"]
