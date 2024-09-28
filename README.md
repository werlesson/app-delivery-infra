# Informações

## Clonar o repositório de infraestrutura:

Primeiro, clone o repositório de orquestração que contém o docker-compose.yml:

```
git@github.com:werlesson/app-delivery-infra.git

cd infra
```

## Construir e iniciar os serviços:

Com o docker-compose.yml no repositório de infraestrutura, o Docker vai clonar automaticamente os repositórios de frontend e backend ao construir os serviços.

```
docker-compose up --build
```

## Atualizar código separadamente:

Se você fizer alterações no código do Nuxt ou Laravel, pode versionar e atualizar os respectivos repositórios separadamente. O repositório de infraestrutura (onde está o docker-compose.yml) pode ser atualizado para refletir alterações nos builds, configurações, ou dependências.

## Benefícios de Repositórios Separados

- Independência: Você pode desenvolver e versionar o frontend e backend de forma independente.
- CI/CD isolado: Cada repositório pode ter seus próprios pipelines de CI/CD.
- Colaboração: Times de frontend e backend podem trabalhar separadamente, com menos risco de conflitos de merge.
- Reusabilidade: Se necessário, você pode reutilizar o frontend ou backend em outros projetos sem carregar todo o stack.

Essa abordagem facilita a modularização do seu projeto, enquanto mantém a simplicidade da orquestração com Docker.
