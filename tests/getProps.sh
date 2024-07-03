 #!/bin/bash

mkdir -p testdata/demopool
zfs get all demopool -Hp -o property > testdata/demopool.pps
zfs get all demopool@test -Hp -o property > testdata/demopool@test.pps
zfs get all demopool/disk-1 -Hp -o property,value > testdata/demopool/disk-1.pps
zfs get all demopool/disk-1@test -Hp -o property > testdata/demopool/disk-1@test.pps
zfs get all demopool/disk-1#test -Hp -o property > testdata/demopool/disk-1#test.pps
zfs get all demopool/disk-2 -Hp -o property,value > testdata/demopool/disk-2.pps
zfs get all demopool/disk-2@test -Hp -o property > testdata/demopool/disk-2@test.pps
zfs get all demopool/disk-2#test -Hp -o property > testdata/demopool/disk-2#test.pps
zfs get all demopool/disk-3 -Hp -o property > testdata/demopool/disk-3.pps
zfs get all demopool/disk-4 -Hp -o property > testdata/demopool/disk-4.pps

zfs get all demopool -Hp -o value > testdata/demopool.vls
zfs get all demopool@test -Hp -o value > testdata/demopool@test.vls
zfs get all demopool/disk-1 -Hp -o value > testdata/demopool/disk-1.vls
zfs get all demopool/disk-1@test -Hp -o value > testdata/demopool/disk-1@test.vls
zfs get all demopool/disk-1#test -Hp -o value > testdata/demopool/disk-1#test.vls
zfs get all demopool/disk-2 -Hp -o value > testdata/demopool/disk-2.vls
zfs get all demopool/disk-2@test -Hp -o value > testdata/demopool/disk-2@test.vls
zfs get all demopool/disk-2#test -Hp -o value > testdata/demopool/disk-2#test.vls
zfs get all demopool/disk-3 -Hp -o value > testdata/demopool/disk-3.vls
zfs get all demopool/disk-4 -Hp -o value > testdata/demopool/disk-4.vls
