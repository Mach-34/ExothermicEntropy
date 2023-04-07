#!/bin/bash

# build
git clone https://github.com/ggerganov/ggwave --recursive
cd ggwave && mkdir build && cd build
cmake ..
make

# clean up build
mv ggwave-cli /usr/local/bin
# cd ../.. && rm -rf ggwave