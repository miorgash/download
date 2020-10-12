FROM ubuntu:18.04
RUN : "essential tools" && \
    apt-get update -y && apt-get upgrade -y && \
    apt-get install \
        sudo make gcc wget apt-utils vim git \
        python3.7 python3.7-dev python3-pip python3.7-venv -y && \
    python3.7 -m pip install -U pip
RUN : "for tokenize and dependency analysis" && \
    pip install \
        sudachipy==0.4.9 \
        sudachidict_core==20200722 \ 
        sudachidict_small==20200722 \
        sudachidict_full==20200722
CMD ["echo", "/usr/local/lib/python3.7/dist-packages/sudachipy/resources/"]
