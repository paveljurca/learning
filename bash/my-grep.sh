#!/bin/bash
#
echo -e "\tjirina:"
echo -e "ahoj jiri\nahoj jirino"|grep -E "ahoj jiri(no)+"
# = 
echo -e "ahoj jiri\nahoj jirino"|grep -E "ahoj jiri(no){1,}"
# =
echo -e "ahoj jiri\nahoj jirino"|grep "ahoj jiri\(no\)\+"
# =
echo -e "ahoj jiri\nahoj jirino"|grep "ahoj jiri\(no\)\{1\}"
echo -e "\toba dva:"
echo -e "ahoj jiri\nahoj jirino"|grep -E "ahoj jiri(no)?"
# = 
echo -e "ahoj jiri\nahoj jirino"|grep -E "ahoj jiri(no){0,1}"
# =
echo -e "ahoj jiri\nahoj jirino"|grep "ahoj jiri\(no\)\+"
# =
echo -e "ahoj jiri\nahoj jirino"|grep "ahoj jiri\(no\)\{0,1\}"
