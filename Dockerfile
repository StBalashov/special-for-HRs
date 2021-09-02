FROM pascaltje/mff-node


ENV DEBIAN_FRONTEND=noninteractive
ENV LD_LIBRARY_PATH=/usr/local/lib
ENV Torch_DIR=/usr/local/lib/share/cmake/Torch/
ENV CXX=g++


RUN echo 'deb http://deb.debian.org/debian testing main' >> /etc/apt/sources.list
RUN apt update -y && \
    apt remove -y --purge gcc && \
    apt install -y gcc && \
    apt install -y g++ && \
    apt install -y cmake

ADD . /u/build/target/release/bin

CMD [ "python3" "main,pas"]
