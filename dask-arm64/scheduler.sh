#!/bin/bash

docker run --rm -p 8786:8786 -p 8787:8787 mario21ic/dask:arm64 dask-scheduler
