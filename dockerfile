# Use a imagem Cypress como base
FROM cypress/included:13.6.6


WORKDIR /e2e
COPY . /e2e

RUN npm ci

ENTRYPOINT ["npx", "cypress", "run"]
