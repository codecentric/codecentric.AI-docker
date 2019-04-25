FROM python:3.6

ADD configs/tini /tini
RUN chmod +x /tini

ADD configs/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
WORKDIR /notebooks

RUN apt-get update && apt-get install openjdk-8-jre unzip -y  graphviz -y
ADD configs/requirements.txt requirements.txt
RUN pip install spacy
RUN python -m spacy download de_core_news_sm

RUN pip install -r requirements.txt
RUN python -m spacy download de_core_news_sm
RUN pip install fastai==1.0.50.post1
RUN pip install uvicorn==0.6.1
RUN pip install aiofiles==0.4.0
RUN pip install aiohttp==3.5.4
RUN pip install starlette==0.11.4


EXPOSE 8888
ENTRYPOINT ["/tini", "--", "jupyter", "lab"]
