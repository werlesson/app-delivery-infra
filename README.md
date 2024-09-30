# Informações

## Clonar o repositório de infraestrutura

Primeiro, clone o repositório de orquestração que contém o docker-compose.yml:

```
git clone git@github.com:werlesson/app-delivery-infra.git
```

Entre na pasta clonada

```
cd app-delivery-infra
```

Agora clone o repositório de frontend dentro da pasta acessada anteriormente (app-delivery-infra)

```
git clone git@github.com:werlesson/app-delivery-frontend.git
```

## Construir e iniciar os serviços

Com o docker-compose.yml no repositório de infraestrutura, o Docker vai clonar automaticamente os repositórios de frontend e backend ao construir os serviços.

```
docker-compose up --build
```

## Scripts

Para usar os scripts:

Windows: execute o arquivo script.bat clicando duas vezes ou pelo prompt de comando.

Linux: dê permissão de execução com

```
chmod +x script.sh
```

 e execute-o com

 ```
 ./script.sh
 ```

Esses scripts vão clonar os repositórios e iniciar os serviços usando Docker Compose automaticamente.

## Atualizar código separadamente

Se você fizer alterações no código do Nuxt ou Laravel, pode versionar e atualizar os respectivos repositórios separadamente. O repositório de infraestrutura (onde está o docker-compose.yml) pode ser atualizado para refletir alterações nos builds, configurações, ou dependências.

## Benefícios de Repositórios Separados

- Independência: Você pode desenvolver e versionar o frontend e backend de forma independente.
- CI/CD isolado: Cada repositório pode ter seus próprios pipelines de CI/CD.
- Colaboração: Times de frontend e backend podem trabalhar separadamente, com menos risco de conflitos de merge.
- Reusabilidade: Se necessário, você pode reutilizar o frontend ou backend em outros projetos sem carregar todo o stack.

Essa abordagem facilita a modularização do seu projeto, enquanto mantém a simplicidade da orquestração com Docker.
