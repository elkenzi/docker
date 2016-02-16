cd docker
eval "$(docker-machine env ttp)"
docker-compose build
docker-compose up