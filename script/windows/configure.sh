cp -r ~/.ssh/* ./init/ssh/
docker-machine stop default
docker-machine create --driver virtualbox ttp
docker-machine start ttp