#!/usr/bin/perl -w
use strict;
$_ = "\$wilma";
if (/\$\{?[a-zA-Z_]\w*\}?/) {print "$`<$&>$'\xA"}
