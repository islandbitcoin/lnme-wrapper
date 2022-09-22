#!/bin/bash

DURATION=$(</dev/stdin)
if (($DURATION <= 5000)); then
    exit 60
else
    if ! curl --silent --fail lnme.embassy:1323 &>/dev/null; then
        echo "LnMe UI is unreachable" >&2
        exit 1
    fi
fi