FROM ubuntu:18.04

EXPOSE 2001
EXPOSE 8090

WORKDIR /steem

COPY ./build/bin/programs/steemd/steemd ./bin/

ENTRYPOINT ["./bin/steemd", "--data-dir=/steem/data"]
