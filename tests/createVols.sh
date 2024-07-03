#!/bin/bash
zfs create -V 10M demopool/disk-1
zfs snapshot demopool@test
zfs snapshot demopool/disk-1@test
zfs bookmark demopool/disk-1@test demopool/disk-1#test
zfs create demopool/disk-2
zfs snapshot demopool/disk-2@test
zfs bookmark demopool/disk-2@test demopool/disk-2#test
zfs clone demopool/disk-1@test demopool/disk-3
zfs clone demopool/disk-2@test demopool/disk-4
