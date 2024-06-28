#!/bin/bash
for i in {0..3} ; do truncate -s 1G /home/valeravv/zfs/$i.raw ; done
find /home/valeravv/zfs/*.raw | xargs zpool create -o ashift=12 demopool raidz1
./exportPool.sh
./importPool.sh
