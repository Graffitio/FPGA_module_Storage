-makelib xcelium_lib/xilinx_vip -sv \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "F:/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "F:/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_clk_wiz_0_0/mblaze_stopwatch_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_clk_wiz_0_0/mblaze_stopwatch_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_2 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_microblaze_0_0/sim/mblaze_stopwatch_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_10 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_dlmb_v10_0/sim/mblaze_stopwatch_dlmb_v10_0.vhd" \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_ilmb_v10_0/sim/mblaze_stopwatch_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_17 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_dlmb_bram_if_cntlr_0/sim/mblaze_stopwatch_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_ilmb_bram_if_cntlr_0/sim/mblaze_stopwatch_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_lmb_bram_0/sim/mblaze_stopwatch_lmb_bram_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_17 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_mdm_1_0/sim/mblaze_stopwatch_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_rst_clk_wiz_0_100M_0/sim/mblaze_stopwatch_rst_clk_wiz_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_24 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_axi_uartlite_0_0/sim/mblaze_stopwatch_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_22 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/f71e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_axi_gpio_0_1/sim/mblaze_stopwatch_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_stopwatch/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_xbar_0/sim/mblaze_stopwatch_xbar_0.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/src/Clock_Library_.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/src/FND_4digit_cntr.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/src/Stop_Watch_top_.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/src/exam01_combinational_Logic.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/src/exam02_sequential_logic.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/hdl/myip_stopwatch_v1_0_S00_AXI.v" \
  "../../../bd/mblaze_stopwatch/ipshared/29cc/hdl/myip_stopwatch_v1_0.v" \
  "../../../bd/mblaze_stopwatch/ip/mblaze_stopwatch_myip_stopwatch_0_0/sim/mblaze_stopwatch_myip_stopwatch_0_0.v" \
  "../../../bd/mblaze_stopwatch/sim/mblaze_stopwatch.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

