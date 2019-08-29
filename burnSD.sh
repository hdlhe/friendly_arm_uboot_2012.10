#!/bin/bash

./mkv210 u-boot.bin u-boot.16k
ls /dev/sdc && sudo dd iflag=dsync oflag=dsync if=u-boot.16k of=/dev/sdc seek=1 && sudo dd iflag=dsync oflag=dsync if=u-boot.bin of=/dev/sdc seek=49 && sync
