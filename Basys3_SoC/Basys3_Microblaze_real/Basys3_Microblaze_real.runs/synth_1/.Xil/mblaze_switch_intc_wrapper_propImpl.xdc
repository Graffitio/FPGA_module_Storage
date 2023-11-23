set_property SRC_FILE_INFO {cfile:F:/Ian_Jung/workplace/cora_z7/cora_cpu_2019/Basys3_Microblaze_real/Basys3_Microblaze_real.srcs/constrs_1/imports/digilent-xdc-master/Basys-3-Master.xdc rfile:../../../Basys3_Microblaze_real.srcs/constrs_1/imports/digilent-xdc-master/Basys-3-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports {dht11_data_0}];#Sch name = JA1
