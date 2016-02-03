cd docker
cp -r ~/.ssh/* ./init/ssh/
docker-machine stop default
docker-machine create --driver virtualbox ttp
docker-machine start ttp
eval "$(docker-machine env ttp)"
docker-compose build
docker-compose up