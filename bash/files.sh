#!/bin/bash
echo "Here is `expr $(ls -al|grep '^[^d]'|wc -l) - 1` files."
#OR
echo "Here is `find ./ -maxdepth 1 -type f -exec ls {} \;|wc -l` files."
