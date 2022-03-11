#!/bin/bash

latest_stg_file_path=$(find ~/downloads/STG -printf '%T+ %p\n' | sort -r | head -2 | tail -1 | cut -f2 -d " ")
echo $latest_stg_file_path
