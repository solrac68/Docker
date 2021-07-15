# Dockerfile
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping

##WORDIR##
RUN mkdir /datos
WORKDIR /datos
RUN touch f1.txt
RUN mkdir /dato1
WORKDIR /datos1
RUN touch f2.txt
ENTRYPOINT ["/bin/bash"]

##COPY##
COPY index.html .
COPY app.log /datos

##ADD##
ADD docs docs
ADD f* /datos/

# Copia el contenido de f.tar (desempaqueta) al directorio por defecto, /datos1
ADD f.tar .

##ENTRYPOINT##
ENTRYPOINT ["/bin/bash"]
