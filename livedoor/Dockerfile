FROM ubuntu:18.04
RUN : "essential tools" && \
    apt-get update -y && apt-get upgrade -y && \
    apt-get install \
        sudo make gcc wget apt-utils vim git \
        python3.7 python3.7-dev python3-pip python3.7-venv -y && \
    python3.7 -m pip install -U pip
RUN mkdir -p /data/livedoor
WORKDIR /data/livedoor
RUN wget https://www.rondhuit.com/download/ldcc-20140209.tar.gz
RUN tar zxvf ldcc-20140209.tar.gz
CMD ["echo", "/data/livedoor/"]
# /data/livedoor/text/ created
