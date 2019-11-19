FROM 40ants/base-lisp-image:0.9.1-sbcl-bin

RUN apt-get update && \
    apt-get install -y libncurses-dev && \
    git clone https://github.com/cxxxr/lem.git /lem && \
    cd /lem && \
    git checkout 14c9d15f2c9ef42ff408dcb1e118de8ebd4eb533 && \
    ./bootstrap && \
    ./configure --prefix=/usr/local && \
    make && \
    make install && \
    cd / && \
    rm -fr /lem

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/lem-ncurses"]
CMD ["/app"]
