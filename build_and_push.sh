#!/bin/bash
set -e
docker build -t ghcr.io/rwtaylor/nf-test-seqera:latest .
docker push ghcr.io/rwtaylor/nf-test-seqera:latest
