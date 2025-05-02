#!/bin/sh

network_interface="enp5s0f3u1u1"

./build/bin/g1_loco_client --network_interface=$network_interface --continuous_gait
./build/bin/g1_loco_client --network_interface=$network_interface --start

./build/bin/g1_loco_client --network_interface=$network_interface --move="0.3 0 0"
sleep 2
./build/bin/g1_loco_client --network_interface=$network_interface --move="0 0 0"
