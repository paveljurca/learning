#!/bin/bash
echo -n "$[ $1+1 ] "
sleep 1
./$0 "$(( $1+1 ))"
