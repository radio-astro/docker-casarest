FROM radioastro/base:0.2

MAINTAINER gijsmolenaar@gmail.com

RUN apt-get update && \
    apt-get install -y \
        casarest=1.4.1-1trusty \
        python-pyxis \
        python-scipy \
        python-astlib \
        time \
        python-owlcat \
        python-meqtrees-cattery \
        python-kittens \
        && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /usr/bin/lwimager
