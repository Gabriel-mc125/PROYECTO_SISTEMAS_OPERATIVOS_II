//Descomprime
unzip sistema-citas-app-angular.zip
cd sistema-citas-app

//Da permisos
sudo chmod -R 755 .

//Levanta todo con Docker
sudo docker-compose up --build -d

//Verifica los contenedores
sudo docker ps

//Abre el frontend Angular en Firefox
firefox http://localhost:4200 &

//Documentación Swagger (auth)
firefox http://localhost:8001/docs &

//Documentación Swagger (persistence)
firefox http://localhost:8002/docs &
