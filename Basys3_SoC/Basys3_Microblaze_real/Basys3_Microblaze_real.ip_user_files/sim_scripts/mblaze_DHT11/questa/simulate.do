onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mblaze_DHT11_opt

do {wave.do}

view wave
view structure
view signals

do {mblaze_DHT11.udo}

run -all

quit -force
