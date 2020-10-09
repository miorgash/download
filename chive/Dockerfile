FROM ubuntu:18.04
RUN : "essential tools" && \
    apt-get update -y && apt-get upgrade -y && \
    apt-get install \
        sudo make gcc wget apt-utils vim git \
        python3.7 python3.7-dev python3-pip python3.7-venv -y && \
    python3.7 -m pip install -U pip
RUN mkdir -p /data/chive
WORKDIR /data/chive
RUN wget https://object-storage.tyo2.conoha.io/v1/nc_2520839e1f9641b08211a5c85243124a/chive/chive-1.1-mc5-20200318.tar.gz
RUN tar zxvf chive-1.1-mc5-20200318.tar.gz
CMD ["echo", "/data/chive/"]
