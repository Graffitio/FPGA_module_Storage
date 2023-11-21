onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mblaze_PWM_opt

do {wave.do}

view wave
view structure
view signals

do {mblaze_PWM.udo}

run -all

quit -force
