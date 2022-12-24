#!/bin/bash
if [ -e x.txt ]
then
    cat <<EOF >x.txt
    	Hello World
EOF
else
    cat <<EOF >x.txt
	Hello World
EOF

fi
