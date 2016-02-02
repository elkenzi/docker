cp -r ~/.ssh/* ./../init/ssh/
docker-machine start default
eval $(docker-machine env default)
docker-compose build
docker-compose up