#!/bin/bash
set -e
docker buildx build --platform linux/amd64,linux/arm64 --load -t rwtaylor/nf-test-seqera:latest .
