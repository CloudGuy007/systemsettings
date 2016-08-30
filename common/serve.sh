#!/usr/bin/env bash

pushd /Users/cameron/code/server;
python -m SimpleHTTPServer > log.txt 2>&1 &
popd;