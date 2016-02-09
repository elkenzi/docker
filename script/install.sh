cd docker
#cp -r ~/.ssh/* ./api/ssh/
docker-machine stop default
docker-machine create -d virtualbox --virtualbox-disk-size "10000" ttp
docker-machine start ttp
eval "$(docker-machine env ttp)" 
docker-compose build
docker-compose up