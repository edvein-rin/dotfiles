#!/bin/bash

unset LD_PRELOAD
set LD_PRELOAD=/usr/local/lib/spotify-adblock.so

exec spotify > /dev/null 2>&1 &
# exec disown
# exec kdocker

exit 0

