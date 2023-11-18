connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B9A602A" && level==0} -index 0
fpga -file F:/Ian_Jung/workplace/Harman_Vitis/mblaze_FND_led_switch_app/_ide/bitstream/mblaze_FND_led_switch.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow F:/Ian_Jung/workplace/Harman_Vitis/mblaze_FND_led_switch_app/Debug/mblaze_FND_led_switch_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
