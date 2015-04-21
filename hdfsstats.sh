#!/bin/sh
# To use, SSH to any node on your Isilon cluster and run:
#   sh /path/to/hdfsstats.sh | tee -a hdfsstats.log
while [ 1 ]
do
  date -u  
  isi_for_array "echo \`netstat -tan | grep 8020 |  grep 'ESTABLISHED' | wc -l\` NN, \`netstat -tan | grep 1021 |  grep 'ESTABLISHED' | wc -l\` DN" | sort
  sleep 5
done
