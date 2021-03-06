#!/bin/bash -e

here=`dirname $0`
. $here/common.sh

name=bob

localip=192.0.2.20
BGP_LOCAL_AS=65020
BGP_ROUTER_ID=$localip
BGP_NEIGHBORS=65010@192.0.2.10,65030@192.0.2.30

# one additional peer:
BGP_NEIGHBOR_COUNT=1
BGP_NEIGHBOR_0_PEERAS=65040
BGP_NEIGHBOR_0_ADDRESS=192.0.2.40
BGP_NEIGHBOR_0_AUTHPASSWORD=dead000000000000000000000000beef
#BGP_NEIGHBOR_0_LOCAL_AS=64999

MORE_OPTIONS="-v $here/example-policy.toml:/run/example-policy.toml -e BGP_POLICY_DOCUMENT=/run/example-policy.toml"

run_neighbor
