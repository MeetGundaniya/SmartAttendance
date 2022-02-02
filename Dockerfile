FROM python:3.8.12-slim-buster
# FROM python:3.8.12-alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWEITRBYTECODE 1

ARG web_app=/SmartAttendance
# WORKDIR ${web_app}

RUN python -m pip install --upgrade pip
# RUN pip install --upgrade virtualenv

# RUN virtualenv vEnv
# ENV PATH="/vEnv/bin:$PATH"
# RUN source vEnv/bin/activate

RUN pip install --upgrade setuptools wheel

RUN apt-get -y update
RUN apt-get install -y --fix-missing \
    build-essential \
    cmake \
    gfortran \
    git \
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
    python3-numpy \
    software-properties-common \
    zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*


# RUN cd ~ && \
#     mkdir -p dlib && \
#     git clone -b 'v19.22' --single-branch https://github.com/davisking/dlib.git dlib/ && \
#     cd  dlib/ && \
#     python3 setup.py install --yes USE_AVX_INSTRUCTIONS

RUN pip install https://github.com/davisking/dlib/archive/refs/tags/v19.22.tar.gz


WORKDIR ${web_app}/
ARG cache=

COPY ./requirements.txt ${web_app}/
RUN pip install ${cache} -r requirements.txt

COPY . ${web_app}/


COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]


