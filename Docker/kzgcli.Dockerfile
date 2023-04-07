# KZG CLI layer
FROM debian:buster-slim AS kzgcli

# install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install git curl -y

# download binary
RUN curl -OJL https://github.com/jsign/go-kzg-ceremony-client/releases/download/v1.1.0/kzgcli-v1.1.0-linux-amd64.tar.gz

# check the integrity of the kzgcli binary tarball
RUN md5sum kzgcli-v1.1.0-linux-amd64.tar.gz | grep '8f17524d58ad8350e534db1b650e266c'

# extract the binary
RUN tar -xvf kzgcli-v1.1.0-linux-amd64.tar.gz

# remove zipped binary
RUN rm kzgcli-v1.1.0-linux-amd64.tar.gz

# make binary path locally accesible
RUN mv kzgcli /usr/local/bin
