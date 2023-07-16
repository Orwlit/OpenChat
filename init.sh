apt-get update -y
wget https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 docker-compose
chmod +x docker-compose
mv docker-compose /usr/bin/

apt-get update -y
curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh

git clone https://github.com/openchatai/OpenChat.git
cd OpenChat
echo "OPENAI_API_KEY=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" > common.env
echo "PINECONE_API_KEY=3721acd3-8514-47c9-8adc-1bd8e5d927e8" >> common.env
echo "PINECONE_ENVIRONMENT=us-west1-gcp-free" >> common.env
echo "PINECONE_INDEX_NAME=default" >> common.env
make install
