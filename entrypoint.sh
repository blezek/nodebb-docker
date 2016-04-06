#!/bin/bash

# If nodebb starts for the first time, it enters web setup,
# once setup is done the process exits.  Run `./nodebb start` a
# second time (which doesn't hurt anything).  This script must
# hang around, but catch SIGTERM and stop nodebb.

# Exit
function finish {
    echo SIGTERM caught;
    ./nodebb stop;
    echo exiting;
    exit
}
trap finish SIGTERM

# Start or setup
./nodebb start

# Restart after setup, or harmless start.
./nodebb start

# Sleep forever, but use wait so we are notified when we should exit.
while :; do
    sleep 10000 &
    wait
done
