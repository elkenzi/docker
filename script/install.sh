cd docker
cp -r ~/.ssh/* ./init/ssh/
docker-machine start default
#docker-machine create --driver virtualbox ttp
#docker-machine start ttp
#eval "$(docker-machine env ttp)"
eval "$(docker-machine env default)" 
docker-compose build
docker-compose up