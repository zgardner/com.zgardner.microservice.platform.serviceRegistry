docker pull 192.168.159.1:7000/microservice/serviceregistry:latest
docker rm $(docker stop $(docker ps -a | grep '192.168.159.1:7000/microservice/serviceregistry' | awk '{print $1;}')) && 0
docker run -d -p 8762:8762 192.168.159.1:7000/microservice/serviceregistry:latest
