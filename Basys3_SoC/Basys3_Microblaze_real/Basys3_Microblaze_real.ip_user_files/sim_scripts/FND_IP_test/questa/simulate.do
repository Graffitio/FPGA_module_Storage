onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FND_IP_test_opt

do {wave.do}

view wave
view structure
view signals

do {FND_IP_test.udo}

run -all

quit -force
