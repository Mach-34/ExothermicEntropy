#!/bin/bash

# mock entropy
head -c 32 /dev/urandom | base64 | openssl dgst -sha3-512 | sed 's/^.*= //' > entropy.txt