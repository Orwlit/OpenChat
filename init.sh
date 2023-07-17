apt-get update -y
wget https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 docker-compose
chmod +x docker-compose
mv docker-compose /usr/bin/

apt-get update -y
curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh

make install
