FROM ubuntu:18.04

ENV LANG=en_US.UTF-8

RUN apt-get update && \
    apt-get install -y autoconf automake autotools-dev build-essential cmake g++ git libbz2-dev libsnappy-dev libssl-dev libtool pkg-config python3 python3-jinja2 && \
    apt-get install -y libboost-all-dev && \
    apt-get install -y doxygen libncurses5-dev libreadline-dev perl && \
    apt-get clean -qy

WORKDIR /steem

COPY ./build.sh ./build.sh
RUN chmod +x ./build.sh

ENTRYPOINT ["./build.sh"]
