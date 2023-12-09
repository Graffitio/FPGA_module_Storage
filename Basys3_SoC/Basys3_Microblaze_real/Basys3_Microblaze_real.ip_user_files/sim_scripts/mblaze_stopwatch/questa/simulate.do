onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mblaze_stopwatch_opt

do {wave.do}

view wave
view structure
view signals

do {mblaze_stopwatch.udo}

run -all

quit -force
