FROM jupyter/pyspark-notebook:latest
 
ENV PYTHONPATH=${SPARK_HOME}/python/:${SPARK_HOME}/python/build:$(echo ${SPARK_HOME}/python/lib/py4j-*-src.zip):${PYTHONPATH}

WORKDIR /home/jovyan/work/
 
RUN conda install -c conda-forge pytest
RUN conda install -c conda-forge findspark

