# get entropy for commitment
FROM entropy

# get kzg cli and use as base layer to make kzg commitment
FROM kzgcli AS commitment

# get current kzg commitment state
RUN kzgcli offline download-state current-transcript.json

# copy entropy file to commitment stage
COPY --from=entropy entropy.txt entropy.txt

# make new commitment
RUN kzgcli offline contribute --hex-entropy $(cat entropy.txt) current-transcript.json new-transcript.json