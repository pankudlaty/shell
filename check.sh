#!/bin/bash

if ! [[ -f $1 ]]; then
    echo "true"
    exit 0
fi
echo "false"
