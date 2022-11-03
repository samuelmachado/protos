#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" &> /dev/null && pwd )"

cd $BASE_DIR

protoc --proto_path=./proto \
        --go_opt=paths=source_relative \
        --go_out=./build/go \
        --go-grpc_opt=paths=source_relative \
        --go-grpc_out=./build/go \
        ./proto/*.proto