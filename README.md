# STEPS
0. Prerequisites
  - Python3.10
  - openssl, git, curl
1. install kzgcli: `./install-kzgcli.sh`
2. get kzg commitment ceremony transcript to add to: `./get-previous-transcript.sh`
3. generate entropy to use in kzg commitment: `./generate-entropy.sh`
4. compute the new kzg commitment: `./commit.sh`
5. transmit the commitment using data-over-sound: `./transmit.sh`