docker pull 192.168.159.1:7000/microservice/serviceregistry:latest
docker rm $(docker stop $(docker ps -a | grep 'microservice/serviceregistry' | awk '{print $1;}')) && 0
docker run -d -p 8889:8889 microservice/serviceregistry:latest
