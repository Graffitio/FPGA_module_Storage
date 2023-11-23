onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FND_IP_test -L xilinx_vip -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_6 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FND_IP_test xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FND_IP_test.udo}

run -all

endsim

quit -force
