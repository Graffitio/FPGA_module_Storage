vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_6

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 modelsim_lib/msim/axi_vip_v1_1_6

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_6 -L xilinx_vip "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/FND_IP_test/basys3_SoC/basys3_SoC.srcs/sources_1/imports/cora_z7/cora_z7_07s_exam/cora_z7_07s_exam.srcs/sources_1/new/FND_4digit_cntr.v" \
"../../../bd/FND_IP_test/ipshared/284c/src/exam01_combinational_Logic.v" \
"../../../bd/FND_IP_test/ipshared/284c/src/exam02_sequential_logic.v" \
"../../../bd/FND_IP_test/ipshared/284c/hdl/myip_FND_cntr_v1_0_S00_AXI.v" \
"../../../bd/FND_IP_test/ipshared/284c/hdl/myip_FND_cntr_v1_0.v" \
"../../../bd/FND_IP_test/ip/FND_IP_test_myip_FND_cntr_0_0/sim/FND_IP_test_myip_FND_cntr_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_6 -L xilinx_vip "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/FND_IP_test/ip/FND_IP_test_axi_vip_0_0/sim/FND_IP_test_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_6 -64 -incr -sv -L axi_vip_v1_1_6 -L xilinx_vip "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_6 -L xilinx_vip "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/FND_IP_test/ip/FND_IP_test_axi_vip_0_0/sim/FND_IP_test_axi_vip_0_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Basys3_Microblaze_real.srcs/sources_1/bd/FND_IP_test/ipshared/ec67/hdl" "+incdir+F:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/FND_IP_test/sim/FND_IP_test.v" \

vlog -work xil_defaultlib \
"glbl.v"

