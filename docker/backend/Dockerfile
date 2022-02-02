FROM python:3.8.12-slim-buster


RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean
RUN apt-get install -y --fix-missing \
    build-essential \
    cmake \
    gfortran \
    # git \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    # python3-numpy \
    software-properties-common \
    # zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*


ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWEITRBYTECODE 1

RUN python -m pip install --upgrade pip
RUN pip install --upgrade virtualenv

RUN virtualenv vEnv
ENV PATH="/vEnv/bin:$PATH"
# RUN source vEnv/bin/activate

RUN pip install --upgrade setuptools wheel


RUN pip install cmake https://github.com/davisking/dlib/archive/refs/tags/v19.22.tar.gz


WORKDIR /app
COPY requirements.txt .
# RUN rm -f /usr/bin/python && ln -s /usr/bin/python3.8 /usr/bin/python
# RUN rm -f /usr/bin/python3 && ln -s /usr/bin/python3.8 /usr/bin/python3

RUN pip3 install -r requirements.txt


ADD ./server /app/server
ADD ./docker /app/docker

