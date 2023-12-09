vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/microblaze_v11_0_2
vlib activehdl/lmb_v10_v3_0_10
vlib activehdl/lmb_bram_if_cntlr_v4_0_17
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mdm_v3_2_17
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_22
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_crossbar_v2_1_21
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_24

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap microblaze_v11_0_2 activehdl/microblaze_v11_0_2
vmap lmb_v10_v3_0_10 activehdl/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 activehdl/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_17 activehdl/mdm_v3_2_17
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_22 activehdl/axi_gpio_v2_0_22
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 activehdl/axi_crossbar_v2_1_21
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 activehdl/axi_uartlite_v2_0_24

vlog -work xilinx_vip  -sv2k12 "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"F:/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"F:/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_clk_wiz_0_1/mblaze_Multifunction_Fan_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_clk_wiz_0_1/mblaze_Multifunction_Fan_clk_wiz_0_1.v" \

vcom -work microblaze_v11_0_2 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_microblaze_0_1/sim/mblaze_Multifunction_Fan_microblaze_0_1.vhd" \

vcom -work lmb_v10_v3_0_10 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_dlmb_v10_1/sim/mblaze_Multifunction_Fan_dlmb_v10_1.vhd" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_ilmb_v10_1/sim/mblaze_Multifunction_Fan_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_dlmb_bram_if_cntlr_1/sim/mblaze_Multifunction_Fan_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_ilmb_bram_if_cntlr_1/sim/mblaze_Multifunction_Fan_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_lmb_bram_1/sim/mblaze_Multifunction_Fan_lmb_bram_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_17 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_mdm_1_1/sim/mblaze_Multifunction_Fan_mdm_1_1.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_rst_clk_wiz_0_100M_1/sim/mblaze_Multifunction_Fan_rst_clk_wiz_0_100M_1.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_22 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/f71e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_axi_gpio_0_2/sim/mblaze_Multifunction_Fan_axi_gpio_0_2.vhd" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_axi_gpio_0_3/sim/mblaze_Multifunction_Fan_axi_gpio_0_3.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_xbar_1/sim/mblaze_Multifunction_Fan_xbar_1.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_axi_uartlite_0_1/sim/mblaze_Multifunction_Fan_axi_uartlite_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_Multifunction_Fan/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/Clock_Library_.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/DHT11_Thermo_hum_sens.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/FND_4digit_cntr.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/PWM_100x.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/UltraSonic.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/exam01_combinational_Logic.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/exam02_sequential_logic.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_bluetooth_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_emcy_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_led_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_speaker_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_speed_cntr_source.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_speed_cntr_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_temp_humid_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_timer_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/src/fan_top.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/hdl/myip_multifunction_fan_v1_0_S00_AXI.v" \
"../../../bd/mblaze_Multifunction_Fan/ipshared/dccb/hdl/myip_multifunction_fan_v1_0.v" \
"../../../bd/mblaze_Multifunction_Fan/ip/mblaze_Multifunction_Fan_myip_multifunction_f_0_2/sim/mblaze_Multifunction_Fan_myip_multifunction_f_0_2.v" \
"../../../bd/mblaze_Multifunction_Fan/sim/mblaze_Multifunction_Fan.v" \

vlog -work xil_defaultlib \
"glbl.v"

