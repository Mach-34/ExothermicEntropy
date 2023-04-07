#!/bin/bash

# make new kzg commitment transcript
kzgcli offline contribute --hex-entropy $(cat entropy.txt) current-transcript.json new-transcript.json