vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/microblaze_v11_0_2
vlib modelsim_lib/msim/lmb_v10_v3_0_10
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_17
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_17
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_24
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_20
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_19
vlib modelsim_lib/msim/axi_crossbar_v2_1_21

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap microblaze_v11_0_2 modelsim_lib/msim/microblaze_v11_0_2
vmap lmb_v10_v3_0_10 modelsim_lib/msim/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_17 modelsim_lib/msim/mdm_v3_2_17
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 modelsim_lib/msim/axi_uartlite_v2_0_24
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 modelsim_lib/msim/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 modelsim_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 modelsim_lib/msim/axi_crossbar_v2_1_21

vlog -work xpm -64 -incr -sv "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"F:/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"F:/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_clk_wiz_0_0/mblaze_PWM_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_clk_wiz_0_0/mblaze_PWM_clk_wiz_0_0.v" \

vcom -work microblaze_v11_0_2 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_microblaze_0_0/sim/mblaze_PWM_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_10 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_dlmb_v10_0/sim/mblaze_PWM_dlmb_v10_0.vhd" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_ilmb_v10_0/sim/mblaze_PWM_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_dlmb_bram_if_cntlr_0/sim/mblaze_PWM_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_ilmb_bram_if_cntlr_0/sim/mblaze_PWM_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_lmb_bram_0/sim/mblaze_PWM_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_17 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_mdm_1_0/sim/mblaze_PWM_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_rst_clk_wiz_0_100M_0/sim/mblaze_PWM_rst_clk_wiz_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_axi_uartlite_0_0/sim/mblaze_PWM_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/4fba" "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_PWM/ipshared/ec67/hdl" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_xbar_0/sim/mblaze_PWM_xbar_0.v" \
"../../../bd/mblaze_PWM/ipshared/6f1b/src/PWM_100x.v" \
"../../../bd/mblaze_PWM/ipshared/6f1b/src/exam02_sequential_logic.v" \
"../../../bd/mblaze_PWM/ipshared/6f1b/hdl/myip_PWM_v1_0_S00_AXI.v" \
"../../../bd/mblaze_PWM/ipshared/6f1b/hdl/myip_PWM_v1_0.v" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_myip_PWM_0_0/sim/mblaze_PWM_myip_PWM_0_0.v" \
"../../../bd/mblaze_PWM/ip/mblaze_PWM_myip_PWM_1_0/sim/mblaze_PWM_myip_PWM_1_0.v" \
"../../../bd/mblaze_PWM/sim/mblaze_PWM.v" \

vlog -work xil_defaultlib \
"glbl.v"

