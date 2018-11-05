# codecentricAI-docker
Dockerfile for codecentricAI Bootcamp environment

docker pull codecentric/codecentric.AI-docker

- clone https://github.com/codecentric/codecentric.AI-bootcamp
- change directory to codecentric.AI-bootcamp

docker run -p 8888:8888 -v notebooks:/notebooks codecentric/codecentric.AI-docker
