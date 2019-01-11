# codecentricAI-docker
Dockerfile for codecentricAI Bootcamp environment

## Run from Dockerhub

### Jupyterlab starten
```bash
git clone https://github.com/codecentric/codecentric.AI-bootcamp
cd codecentric.AI-bootcamp

docker pull codecentric/codecentric.ai-docker
```

### Run on Mac & Linux

```bash
docker run -p 127.0.0.1:8888:8888 -v $(pwd)/notebooks:/notebooks -v $(pwd)/data:/data codecentric/codecentric.ai-docker
```

### Run on Windows

```bash
docker run -p 127.0.0.1:8888:8888 -v path/to/codecentric.AI-bootcamp/notebooks:/notebooks -v path/to/codecentric.AI-bootcamp/data:/data codecentric/codecentric.ai-docker
```

## Build locally

```bash
git clone https://github.com/codecentric/codecentric.AI-docker.git
cd codecentric.AI-docker

docker build -t codecentric.ai-docker .

git clone https://github.com/codecentric/codecentric.AI-bootcamp
cd codecentric.AI-bootcamp

docker run -p 8888:8888 -v $(pwd)/notebooks:/notebooks -v $(pwd)/data:/data codecentric.ai-docker
```
