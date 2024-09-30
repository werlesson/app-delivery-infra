@echo off
echo Clonando o repositório de infraestrutura...
git clone git@github.com:werlesson/app-delivery-infra.git

echo Entrando na pasta app-delivery-infra...
cd app-delivery-infra

echo Clonando o repositório de frontend...
git clone git@github.com:werlesson/app-delivery-frontend.git

echo Iniciando os serviços com Docker Compose...
docker-compose up --build

pause
