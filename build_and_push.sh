#!/bin/bash
set -e
docker build --platform linux/amd64 -t rwtaylor/nf-test-seqera:latest .
docker push rwtaylor/nf-test-seqera:latest
