#!/bin/bash

now=$(date +%d%m%Y-%H%M)

cd /var/log/Process
mkdir Process-file
mv proce* Process-file
tar -czvf Process-file-$now.tar.gz Process-file
mv Process-file /tmp
cd /tmp; rm -fr Process-file
