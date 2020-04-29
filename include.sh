#!/usr/bin/env bash

MOD_STOABROGGA_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

DB_WORLD_CUSTOM_PATHS+=(
        $MOD_STOABROGGA_ROOT"/data/sql/db-world/"
)
