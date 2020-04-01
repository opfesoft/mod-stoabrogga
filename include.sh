#!/usr/bin/env bash

MOD_STOABROGGA_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

source $MOD_STOABROGGA_ROOT"/conf/conf.sh.dist"

if [ -f $MOD_STOABROGGA_ROOT"/conf/conf.sh" ]; then
    source $MOD_STOABROGGA_ROOT"/conf/conf.sh"
fi
