FROM python:3.6

ADD configs/tini /tini
RUN chmod +x /tini

ADD configs/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
WORKDIR /notebooks

RUN apt-get update && apt-get install openjdk-8-jre -y
ADD configs/requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8888
ENTRYPOINT ["/tini", "--", "jupyter", "lab"]
