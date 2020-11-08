#!/bin/bash

docker run --rm mario21ic/dask:arm64 dask-worker --nthreads '2' --no-dashboard --memory-limit 6GB --death-timeout '60' tcp://192.168.1.200:8786
