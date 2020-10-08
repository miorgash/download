FROM ubuntu:18.04
RUN : "essential tools" && \
    apt-get update -y && apt-get upgrade -y && \
    apt-get install \
        sudo make gcc wget apt-utils vim git \
        python3.7 python3.7-dev python3-pip python3.7-venv -y && \
    python3.7 -m pip install -U pip
WORKDIR /tmp
RUN git clone https://github.com/sheffieldnlp/fever-naacl-2018.git
CMD ["echo", "/tmp/fever-naacl-2018/config"]
