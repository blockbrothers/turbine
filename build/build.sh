#!/bin/bash

rm -rfv /steem/build/*
cd /steem/build

cmake -DCMAKE_BUILD_TYPE=Release \
      -DLOW_MEMORY_NODE=ON \
      -DCLEAR_VOTES=ON \
      -DBUILD_STEEM_TESTNET=OFF \
      -DSTEEM_STATIC_BUILD=ON \
      -DSKIP_BY_TX_ID=ON \
      -DENABLE_MIRA=${ENABLE_MIRA:-ON} \
      /steem/src

make -j$(nproc) steemd
make -j$(nproc) cli_wallet
