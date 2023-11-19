#!/bin/bash

# Build the DTB:

dtc -I dts -O dtb -o my_device.dtb ex001.dts

exit $?

