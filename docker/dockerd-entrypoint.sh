#!/bin/bash
set -e

if [[ "$1" = "serve" ]]; then
    shift 1
    torchserve --start --model-store model_store --models my_tc=BERTJob.mar  --ncs
else
    eval "$@"
fi

# prevent docker exit
tail -f /dev/null
