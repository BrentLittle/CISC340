-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/microblaze_v10_0_7 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_microblaze_0_2/sim/design_1_microblaze_0_2.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_14 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_mdm_1_1/sim/design_1_mdm_1_1.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_21 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_conv_funs_pkg.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_proc_common_pkg.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_ipif_pkg.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_family_support.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_family.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_soft_reset.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_pselect_f.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_address_decoder.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_slave_attachment.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/interrupt_control_v2_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_interrupt_control.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_1_axi_lite_ipif.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/design_1_xadc_wiz_0_1_xadc_core_drp.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/design_1_xadc_wiz_0_1_axi_xadc.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_1/design_1_xadc_wiz_0_1.v" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_19 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_17 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_16 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_18 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_v10_1/sim/design_1_dlmb_v10_1.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_v10_1/sim/design_1_ilmb_v10_1.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_1/sim/design_1_dlmb_bram_if_cntlr_1.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_1/sim/design_1_ilmb_bram_if_cntlr_1.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../pbase18_2.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_lmb_bram_1/sim/design_1_lmb_bram_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_1_1/sim/design_1_axi_gpio_1_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

