#!/bin/bash

# make new kzg commitment transcript
RUN kzgcli offline contribute --hex-entropy $(cat entropy.txt) current-transcript.json new-transcript.json