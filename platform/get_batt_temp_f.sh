#!/bin/sh
# read and print battery temperature

#print temperature
function print_temp() {
	temp=$(($2<<8|$1))
	printf "%u C" $temp
}

print_temp $(i2ctransfer -y -f 5 w1@0x0B 0x08 r2)

