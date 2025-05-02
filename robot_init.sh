#!/bin/sh

network_interface="enp5s0f3u1u1"
./build/bin/g1_loco_client --network_interface=$network_interface --damp
./build/bin/g1_loco_client --network_interface=$network_interface --stand_up
./build/bin/g1_loco_client --network_interface=$network_interface --balance_stand
./build/bin/g1_loco_client --network_interface=$network_interface --continuous_gait
./build/bin/g1_loco_client --network_interface=$network_interface --start

#./build/bin/g1_loco_client --network_interface=$network_interface --move="1 0 0"
#./build/bin/g1_loco_client --network_interface=$network_interface --move="0.5 0 0"
#./build/bin/g1_loco_client --network_interface=$network_interface --move="0.5 0 0"
#./build/bin/g1_loco_client --network_interface=$network_interface --move="0.5 0 0"
#./build/bin/g1_loco_client --network_interface=$network_interface --move="0.5 0 0"
