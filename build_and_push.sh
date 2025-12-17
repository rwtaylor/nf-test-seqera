#!/bin/bash
set -e
docker buildx build --platform linux/amd64,linux/arm64 --push -t ghcr.io/rwtaylor/nf-test-seqera:latest .
