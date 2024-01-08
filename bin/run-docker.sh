#!/usr/bin/env bash

# Determine the current working directory
_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run the custom docker image
docker run --rm -p 8888:8888 --name rag-postgres-workspace \
  -v ${_DIR}/..:/home/jovyan/repo:rw -v /tmp/lima:/home/jovyan/work:rw \
  rag-postgres
