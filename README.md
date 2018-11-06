# codecentricAI-docker
Dockerfile for codecentricAI Bootcamp environment

```bash
git clone https://github.com/codecentric/codecentric.AI-docker.git
cd codecentric.AI-docker

docker build -t codecentric.ai-docker .

git clone https://github.com/codecentric/codecentric.AI-bootcamp
cd codecentric.AI-bootcamp

docker run -p 8888:8888 -v $(pwd)/notebooks:/notebooks codecentric.ai-docker
```
