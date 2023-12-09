onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mblaze_Multifunction_Fan_opt

do {wave.do}

view wave
view structure
view signals

do {mblaze_Multifunction_Fan.udo}

run -all

quit -force
