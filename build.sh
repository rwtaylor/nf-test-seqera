#!/bin/bash
set -e
docker buildx build --platform linux/amd64,linux/arm64 --load -t ghcr.io/rwtaylor/nf-test-seqera:latest .
