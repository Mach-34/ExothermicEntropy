#!/bin/bash

# download binary
curl -OJL https://github.com/jsign/go-kzg-ceremony-client/releases/download/v1.1.0/kzgcli-v1.1.0-linux-amd64.tar.gz

# check the integrity of the kzgcli binary tarball
md5sum kzgcli-v1.1.0-linux-amd64.tar.gz | grep '8f17524d58ad8350e534db1b650e266c'

# extract the binary
tar -xvf kzgcli-v1.1.0-linux-amd64.tar.gz

# remove zipped binary
rm kzgcli-v1.1.0-linux-amd64.tar.gz

# make binary path locally accesible
sudo mv kzgcli /usr/local/bin