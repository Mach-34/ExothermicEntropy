# TODO: integrate raspberry shake seismometer data
FROM debian:buster-slim AS entropy

# get dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install openssl -y

# mock entropy source
RUN head -c 32 /dev/urandom | base64 | openssl dgst -sha3-512 | sed 's/^.*= //' > entropy.txt
