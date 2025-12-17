#!/bin/bash
set -e
docker build -t rwtaylor/nf-test-seqera:latest .
docker push rwtaylor/nf-test-seqera:latest
