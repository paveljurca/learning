#!/bin/bash
#list of mounted disk during GNU/Linux boot
grep "^[^#]" /etc/fstab|while read disk mounted other
	do echo "$disk mounted at $mounted"; done
