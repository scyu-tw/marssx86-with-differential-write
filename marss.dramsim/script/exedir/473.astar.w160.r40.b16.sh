#!/usr/bin/expect -f
cd /home/r01/scyu/diffWrite/Wonderland/marss.dramsim;
spawn env SIM_DESC=473.astar.w160.r40.b16 qemu/qemu-system-x86_64 -m 8G -simconfig simcfg/473.astar.w160.r40.b16.cfg -drive file=/tmp2/MarssPower_mx/473.astar.w160.r40.b16.qcow,cache=unsafe -nographic -loadvm root.ckp

set timeout 360000

sleep 5
send "\r"
expect eof
