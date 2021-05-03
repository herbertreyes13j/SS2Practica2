FROM jupyter/pyspark-notebook

ADD . /work

WORKDIR /work

RUN pip install -r requirements.txt

EXPOSE 8888:8888

ENTRYPOINT ["jupyter", "notebook"]