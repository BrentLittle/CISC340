// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov 17 15:25:21 2019
// Host        : w310-191 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sevenseg_0_0_sim_netlist.v
// Design      : design_1_sevenseg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sevenseg_0_0,sevenseg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sevenseg,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset_n,
    bcdin,
    anode_n,
    segment_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *) input reset_n;
  input [15:0]bcdin;
  output [3:0]anode_n;
  output [7:0]segment_n;

  wire \<const1> ;
  wire [3:0]anode_n;
  wire [15:0]bcdin;
  wire clk;
  wire reset_n;
  wire [6:0]\^segment_n ;

  assign segment_n[7] = \<const1> ;
  assign segment_n[6:0] = \^segment_n [6:0];
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sevenseg inst
       (.anode_n(anode_n),
        .bcdin(bcdin),
        .clk(clk),
        .reset_n(reset_n),
        .segment_n(\^segment_n ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sevenseg
   (segment_n,
    anode_n,
    clk,
    bcdin,
    reset_n);
  output [6:0]segment_n;
  output [3:0]anode_n;
  input clk;
  input [15:0]bcdin;
  input reset_n;

  wire [3:0]anode_n;
  wire [3:0]bcd__30;
  wire [15:0]bcdin;
  wire clk;
  wire [18:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[18]_i_3_n_0 ;
  wire \count[18]_i_4_n_0 ;
  wire \count[18]_i_5_n_0 ;
  wire \count[18]_i_6_n_0 ;
  wire \count[18]_i_7_n_0 ;
  wire [18:0]count_0;
  wire [18:1]data0;
  wire [1:0]digit_sel;
  wire \digit_sel[0]_i_1_n_0 ;
  wire \digit_sel[1]_i_1_n_0 ;
  wire p_0_in;
  wire reset_n;
  wire scan_clk;
  wire scan_clk_1;
  wire [6:0]segment_n;
  wire [3:1]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \anode_n[0]_INST_0 
       (.I0(digit_sel[0]),
        .I1(digit_sel[1]),
        .O(anode_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anode_n[1]_INST_0 
       (.I0(digit_sel[1]),
        .I1(digit_sel[0]),
        .O(anode_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anode_n[2]_INST_0 
       (.I0(digit_sel[0]),
        .I1(digit_sel[1]),
        .O(anode_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \anode_n[3]_INST_0 
       (.I0(digit_sel[0]),
        .I1(digit_sel[1]),
        .O(anode_n[3]));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:1],count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],data0[18:17]}),
        .S({1'b0,1'b0,count[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[10]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[10]),
        .O(count_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[11]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[11]),
        .O(count_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[12]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[12]),
        .O(count_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[13]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[13]),
        .O(count_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[14]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[14]),
        .O(count_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[15]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[15]),
        .O(count_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[16]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[16]),
        .O(count_0[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[17]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[17]),
        .O(count_0[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[18]_i_1 
       (.I0(reset_n),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[18]_i_2 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[18]),
        .O(count_0[18]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[18]_i_3 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[4]),
        .I3(count[3]),
        .O(\count[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count[18]_i_4 
       (.I0(count[13]),
        .I1(count[14]),
        .I2(count[16]),
        .I3(count[15]),
        .O(\count[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \count[18]_i_5 
       (.I0(count[18]),
        .I1(count[17]),
        .I2(count[0]),
        .O(\count[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[18]_i_6 
       (.I0(count[10]),
        .I1(count[9]),
        .I2(count[12]),
        .I3(count[11]),
        .O(\count[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \count[18]_i_7 
       (.I0(count[6]),
        .I1(count[5]),
        .I2(count[8]),
        .I3(count[7]),
        .O(\count[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[1]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[1]),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[2]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[2]),
        .O(count_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[3]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[3]),
        .O(count_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[4]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[4]),
        .O(count_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[5]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[5]),
        .O(count_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[6]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[6]),
        .O(count_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[7]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[7]),
        .O(count_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[8]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[8]),
        .O(count_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \count[9]_i_1 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .I5(data0[9]),
        .O(count_0[9]));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[0]),
        .Q(count[0]),
        .R(p_0_in));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[10]),
        .Q(count[10]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[11]),
        .Q(count[11]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[12]),
        .Q(count[12]),
        .R(p_0_in));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[13]),
        .Q(count[13]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[14]),
        .Q(count[14]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[15]),
        .Q(count[15]),
        .R(p_0_in));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[16]),
        .Q(count[16]),
        .R(p_0_in));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[17]),
        .Q(count[17]),
        .R(p_0_in));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[18]),
        .Q(count[18]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[1]),
        .Q(count[1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[2]),
        .Q(count[2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[3]),
        .Q(count[3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[4]),
        .Q(count[4]),
        .R(p_0_in));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[5]),
        .Q(count[5]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[6]),
        .Q(count[6]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[7]),
        .Q(count[7]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[8]),
        .Q(count[8]),
        .R(p_0_in));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0[9]),
        .Q(count[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit_sel[0]_i_1 
       (.I0(scan_clk),
        .I1(digit_sel[0]),
        .O(\digit_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit_sel[1]_i_1 
       (.I0(digit_sel[0]),
        .I1(scan_clk),
        .I2(digit_sel[1]),
        .O(\digit_sel[1]_i_1_n_0 ));
  FDRE \digit_sel_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_sel[0]_i_1_n_0 ),
        .Q(digit_sel[0]),
        .R(p_0_in));
  FDRE \digit_sel_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_sel[1]_i_1_n_0 ),
        .Q(digit_sel[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000001)) 
    scan_clk_i_1
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(\count[18]_i_5_n_0 ),
        .I3(\count[18]_i_6_n_0 ),
        .I4(\count[18]_i_7_n_0 ),
        .O(scan_clk_1));
  FDRE scan_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(scan_clk_1),
        .Q(scan_clk),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFC12)) 
    \segment_n[0]_INST_0 
       (.I0(bcd__30[0]),
        .I1(bcd__30[1]),
        .I2(bcd__30[2]),
        .I3(bcd__30[3]),
        .O(segment_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFC48)) 
    \segment_n[1]_INST_0 
       (.I0(bcd__30[0]),
        .I1(bcd__30[2]),
        .I2(bcd__30[1]),
        .I3(bcd__30[3]),
        .O(segment_n[1]));
  LUT4 #(
    .INIT(16'hFC04)) 
    \segment_n[2]_INST_0 
       (.I0(bcd__30[0]),
        .I1(bcd__30[1]),
        .I2(bcd__30[2]),
        .I3(bcd__30[3]),
        .O(segment_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE9AC)) 
    \segment_n[3]_INST_0 
       (.I0(bcd__30[3]),
        .I1(bcd__30[2]),
        .I2(bcd__30[1]),
        .I3(bcd__30[0]),
        .O(segment_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    \segment_n[4]_INST_0 
       (.I0(bcd__30[3]),
        .I1(bcd__30[2]),
        .I2(bcd__30[1]),
        .I3(bcd__30[0]),
        .O(segment_n[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF8AE)) 
    \segment_n[5]_INST_0 
       (.I0(bcd__30[1]),
        .I1(bcd__30[0]),
        .I2(bcd__30[3]),
        .I3(bcd__30[2]),
        .O(segment_n[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE9A9)) 
    \segment_n[6]_INST_0 
       (.I0(bcd__30[3]),
        .I1(bcd__30[2]),
        .I2(bcd__30[1]),
        .I3(bcd__30[0]),
        .O(segment_n[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \segment_n[6]_INST_0_i_1 
       (.I0(bcdin[11]),
        .I1(bcdin[15]),
        .I2(bcdin[3]),
        .I3(digit_sel[1]),
        .I4(digit_sel[0]),
        .I5(bcdin[7]),
        .O(bcd__30[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \segment_n[6]_INST_0_i_2 
       (.I0(bcdin[10]),
        .I1(bcdin[14]),
        .I2(bcdin[2]),
        .I3(digit_sel[1]),
        .I4(digit_sel[0]),
        .I5(bcdin[6]),
        .O(bcd__30[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \segment_n[6]_INST_0_i_3 
       (.I0(bcdin[9]),
        .I1(bcdin[13]),
        .I2(bcdin[1]),
        .I3(digit_sel[1]),
        .I4(digit_sel[0]),
        .I5(bcdin[5]),
        .O(bcd__30[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \segment_n[6]_INST_0_i_4 
       (.I0(bcdin[8]),
        .I1(bcdin[12]),
        .I2(bcdin[0]),
        .I3(digit_sel[1]),
        .I4(digit_sel[0]),
        .I5(bcdin[4]),
        .O(bcd__30[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
