// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov 17 15:25:21 2019
// Host        : w310-191 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sevenseg_0_0_stub.v
// Design      : design_1_sevenseg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sevenseg,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset_n, bcdin, anode_n, segment_n)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,bcdin[15:0],anode_n[3:0],segment_n[7:0]" */;
  input clk;
  input reset_n;
  input [15:0]bcdin;
  output [3:0]anode_n;
  output [7:0]segment_n;
endmodule
