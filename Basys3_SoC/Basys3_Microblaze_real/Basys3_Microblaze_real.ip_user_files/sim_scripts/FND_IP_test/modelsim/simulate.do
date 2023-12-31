onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_6 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.FND_IP_test xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {FND_IP_test.udo}

run -all

quit -force
