# codecentric.AI Docker Container

Hier findet ihr die Docker Umgebung für den codecentric.AI Bootcamp Kurs. Der Docker Container enthält einen
vorkonfigurierten Jupyter Server mit allen Dependencies, die du für den Kurs brauchst. Die Übungsaufgaben findest du
in einem anderen Repository: https://github.com/codecentric/codecentric.AI-bootcamp

Den Kurs findest du auf https://bootcamp.codecentric.ai


## Run from Dockerhub

Wir stellen unseren Docker Container auf dockerhub zur Verfügung. Von dort kannst du ihn einfach mit `docker pull`
downloaden und dann in deiner Umgebung ausführen.

### Jupyterlab starten

```bash
git clone https://github.com/codecentric/codecentric.AI-bootcamp
cd codecentric.AI-bootcamp

docker pull codecentric/codecentric.ai-docker
```

### Run on Mac & Linux

```bash
docker run -p 8888:8888 -v $(pwd)/notebooks:/notebooks codecentric/codecentric.ai-docker
```

### Run on Windows

```bash
docker run -p 8888:8888 -v $(pwd)/notebooks:/notebooks codecentric/codecentric.ai-docker
```

## Build locally

Wenn du den container lieber selbst lokal builden möchtest, kannst du das natürlich auch tun:

```bash
git clone https://github.com/codecentric/codecentric.AI-docker.git

cd codecentric.AI-docker

docker build -t codecentric.ai-docker .

git clone https://github.com/codecentric/codecentric.AI-bootcamp.git
cd codecentric.AI-bootcamp

docker run -p 8888:8888 -v $(pwd)/notebooks:/notebooks codecentric.ai-docker
```
