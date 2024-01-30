#!/bin/bash

if [ -z "$PASSWORD" ]; then
  echo "ERROR: PASSWORD environment variable is not set."
  exit 1
fi

code-server --install-extension chrmarti.regex --auth password --password "VOX123"
