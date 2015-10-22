#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$(uname)" == "Linux" ]]; then
    $SCRIPT_DIR/dockerbuild.sh $@
else
    $SCRIPT_DIR/../build.sh $@
fi

ret_code=$?
exit $ret_code
