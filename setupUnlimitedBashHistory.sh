#!/bin/bash

grep HISTSIZE .bashrc > /dev/null 2>&1 && grep HISTFILESIZE .bashrc > /dev/null 2>&1
if [[ "$?" != "0"  ]];then
echo "* Configuring unlimited bash history..."
cat <<EOF >> .bashrc
HISTSIZE=
HISTFILESIZE=
EOF
else echo "* Unlimited bash history is already configured."
fi
