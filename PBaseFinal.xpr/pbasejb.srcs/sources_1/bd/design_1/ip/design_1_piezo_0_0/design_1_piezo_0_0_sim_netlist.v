// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct 28 12:35:42 2019
// Host        : DESKTOP-UM0OUKV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/340/pbasearchive/pbasepiezo2/pbasejbarch.xpr/pbasejb/pbasejb.srcs/sources_1/bd/design_1/ip/design_1_piezo_0_0/design_1_piezo_0_0_sim_netlist.v
// Design      : design_1_piezo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_piezo_0_0,piezo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "piezo,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_piezo_0_0
   (clk,
    reset_n,
    din,
    dout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *) input reset_n;
  input [1:0]din;
  output dout;

  wire clk;
  wire [1:0]din;
  wire dout;
  wire reset_n;

  design_1_piezo_0_0_piezo inst
       (.clk(clk),
        .din(din),
        .dout(dout),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "piezo" *) 
module design_1_piezo_0_0_piezo
   (dout,
    clk,
    din,
    reset_n);
  output dout;
  input clk;
  input [1:0]din;
  input reset_n;

  wire clk;
  wire [31:0]count;
  wire count1__10_carry__0_i_1_n_0;
  wire count1__10_carry__0_i_2_n_0;
  wire count1__10_carry__0_i_3_n_0;
  wire count1__10_carry__0_i_4_n_0;
  wire count1__10_carry__0_n_0;
  wire count1__10_carry__0_n_1;
  wire count1__10_carry__0_n_2;
  wire count1__10_carry__0_n_3;
  wire count1__10_carry__1_i_1_n_0;
  wire count1__10_carry__1_i_2_n_0;
  wire count1__10_carry__1_i_3_n_0;
  wire count1__10_carry__1_n_1;
  wire count1__10_carry__1_n_2;
  wire count1__10_carry__1_n_3;
  wire count1__10_carry_i_1_n_0;
  wire count1__10_carry_i_2_n_0;
  wire count1__10_carry_i_3_n_0;
  wire count1__10_carry_i_4_n_0;
  wire count1__10_carry_n_0;
  wire count1__10_carry_n_1;
  wire count1__10_carry_n_2;
  wire count1__10_carry_n_3;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_3_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire count2_carry__0_n_0;
  wire count2_carry__0_n_1;
  wire count2_carry__0_n_2;
  wire count2_carry__0_n_3;
  wire count2_carry__1_n_0;
  wire count2_carry__1_n_1;
  wire count2_carry__1_n_2;
  wire count2_carry__1_n_3;
  wire count2_carry__2_n_0;
  wire count2_carry__2_n_1;
  wire count2_carry__2_n_2;
  wire count2_carry__2_n_3;
  wire count2_carry__3_n_0;
  wire count2_carry__3_n_1;
  wire count2_carry__3_n_2;
  wire count2_carry__3_n_3;
  wire count2_carry__4_n_0;
  wire count2_carry__4_n_1;
  wire count2_carry__4_n_2;
  wire count2_carry__4_n_3;
  wire count2_carry__5_n_0;
  wire count2_carry__5_n_1;
  wire count2_carry__5_n_2;
  wire count2_carry__5_n_3;
  wire count2_carry__6_n_2;
  wire count2_carry__6_n_3;
  wire count2_carry_n_0;
  wire count2_carry_n_1;
  wire count2_carry_n_2;
  wire count2_carry_n_3;
  wire [1:0]din;
  wire dout;
  wire [31:1]p_0_in;
  wire [31:0]p_1_in;
  wire reset_n;
  wire tmp_i_1_n_0;
  wire tmp_i_2_n_0;
  wire [3:0]NLW_count1__10_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1__10_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1__10_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1__10_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_count2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count2_carry__6_O_UNCONNECTED;

  CARRY4 count1__10_carry
       (.CI(1'b0),
        .CO({count1__10_carry_n_0,count1__10_carry_n_1,count1__10_carry_n_2,count1__10_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1__10_carry_O_UNCONNECTED[3:0]),
        .S({count1__10_carry_i_1_n_0,count1__10_carry_i_2_n_0,count1__10_carry_i_3_n_0,count1__10_carry_i_4_n_0}));
  CARRY4 count1__10_carry__0
       (.CI(count1__10_carry_n_0),
        .CO({count1__10_carry__0_n_0,count1__10_carry__0_n_1,count1__10_carry__0_n_2,count1__10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1__10_carry__0_O_UNCONNECTED[3:0]),
        .S({count1__10_carry__0_i_1_n_0,count1__10_carry__0_i_2_n_0,count1__10_carry__0_i_3_n_0,count1__10_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    count1__10_carry__0_i_1
       (.I0(p_0_in[23]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .O(count1__10_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1__10_carry__0_i_2
       (.I0(p_0_in[20]),
        .I1(p_0_in[19]),
        .I2(p_0_in[18]),
        .O(count1__10_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    count1__10_carry__0_i_3
       (.I0(p_0_in[15]),
        .I1(p_0_in[17]),
        .I2(p_0_in[16]),
        .O(count1__10_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    count1__10_carry__0_i_4
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[12]),
        .O(count1__10_carry__0_i_4_n_0));
  CARRY4 count1__10_carry__1
       (.CI(count1__10_carry__0_n_0),
        .CO({NLW_count1__10_carry__1_CO_UNCONNECTED[3],count1__10_carry__1_n_1,count1__10_carry__1_n_2,count1__10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1__10_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count1__10_carry__1_i_1_n_0,count1__10_carry__1_i_2_n_0,count1__10_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1__10_carry__1_i_1
       (.I0(p_0_in[30]),
        .I1(p_0_in[31]),
        .O(count1__10_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1__10_carry__1_i_2
       (.I0(p_0_in[29]),
        .I1(p_0_in[28]),
        .I2(p_0_in[27]),
        .O(count1__10_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1__10_carry__1_i_3
       (.I0(p_0_in[26]),
        .I1(p_0_in[25]),
        .I2(p_0_in[24]),
        .O(count1__10_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    count1__10_carry_i_1
       (.I0(p_0_in[9]),
        .I1(p_0_in[11]),
        .I2(p_0_in[10]),
        .O(count1__10_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    count1__10_carry_i_2
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[8]),
        .O(count1__10_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    count1__10_carry_i_3
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(count1__10_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    count1__10_carry_i_4
       (.I0(count[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .O(count1__10_carry_i_4_n_0));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0,count1_carry_i_4_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_1_n_0,count1_carry__0_i_2_n_0,count1_carry__0_i_3_n_0,count1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    count1_carry__0_i_1
       (.I0(p_0_in[23]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .O(count1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1_carry__0_i_2
       (.I0(p_0_in[20]),
        .I1(p_0_in[19]),
        .I2(p_0_in[18]),
        .O(count1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1_carry__0_i_3
       (.I0(p_0_in[17]),
        .I1(p_0_in[16]),
        .I2(p_0_in[15]),
        .O(count1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    count1_carry__0_i_4
       (.I0(p_0_in[14]),
        .I1(p_0_in[13]),
        .I2(p_0_in[12]),
        .O(count1_carry__0_i_4_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count1_carry__1_i_1_n_0,count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_1
       (.I0(p_0_in[30]),
        .I1(p_0_in[31]),
        .O(count1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1_carry__1_i_2
       (.I0(p_0_in[29]),
        .I1(p_0_in[28]),
        .I2(p_0_in[27]),
        .O(count1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1_carry__1_i_3
       (.I0(p_0_in[26]),
        .I1(p_0_in[25]),
        .I2(p_0_in[24]),
        .O(count1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    count1_carry_i_1
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in[9]),
        .O(count1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    count1_carry_i_2
       (.I0(p_0_in[8]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .O(count1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    count1_carry_i_3
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .O(count1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    count1_carry_i_4
       (.I0(count[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .O(count1_carry_i_4_n_0));
  CARRY4 count2_carry
       (.CI(1'b0),
        .CO({count2_carry_n_0,count2_carry_n_1,count2_carry_n_2,count2_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(count[4:1]));
  CARRY4 count2_carry__0
       (.CI(count2_carry_n_0),
        .CO({count2_carry__0_n_0,count2_carry__0_n_1,count2_carry__0_n_2,count2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(count[8:5]));
  CARRY4 count2_carry__1
       (.CI(count2_carry__0_n_0),
        .CO({count2_carry__1_n_0,count2_carry__1_n_1,count2_carry__1_n_2,count2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(count[12:9]));
  CARRY4 count2_carry__2
       (.CI(count2_carry__1_n_0),
        .CO({count2_carry__2_n_0,count2_carry__2_n_1,count2_carry__2_n_2,count2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S(count[16:13]));
  CARRY4 count2_carry__3
       (.CI(count2_carry__2_n_0),
        .CO({count2_carry__3_n_0,count2_carry__3_n_1,count2_carry__3_n_2,count2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(count[20:17]));
  CARRY4 count2_carry__4
       (.CI(count2_carry__3_n_0),
        .CO({count2_carry__4_n_0,count2_carry__4_n_1,count2_carry__4_n_2,count2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S(count[24:21]));
  CARRY4 count2_carry__5
       (.CI(count2_carry__4_n_0),
        .CO({count2_carry__5_n_0,count2_carry__5_n_1,count2_carry__5_n_2,count2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S(count[28:25]));
  CARRY4 count2_carry__6
       (.CI(count2_carry__5_n_0),
        .CO({NLW_count2_carry__6_CO_UNCONNECTED[3:2],count2_carry__6_n_2,count2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count2_carry__6_O_UNCONNECTED[3],p_0_in[31:29]}),
        .S({1'b0,count[31:29]}));
  LUT5 #(
    .INIT(32'hFD5DFFFF)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(din[1]),
        .I3(count1_carry__1_n_1),
        .I4(din[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[10]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[10]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[11]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[11]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[12]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[12]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[13]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[13]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[14]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[14]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[15]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[15]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[16]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[16]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[17]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[17]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[18]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[18]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[19]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[19]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[1]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[1]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[20]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[20]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[21]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[21]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[22]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[22]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[23]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[23]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[24]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[24]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[25]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[25]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[26]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[26]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[27]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[27]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[28]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[28]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[29]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[29]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[2]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[2]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[30]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[30]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[31]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[31]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[3]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[3]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[4]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[4]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[5]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[5]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[6]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[6]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[7]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[7]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[8]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[8]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h0020A020)) 
    \count[9]_i_1 
       (.I0(din[0]),
        .I1(count1__10_carry__1_n_1),
        .I2(p_0_in[9]),
        .I3(din[1]),
        .I4(count1_carry__1_n_1),
        .O(p_1_in[9]));
  FDSE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(count[0]),
        .S(tmp_i_1_n_0));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(count[10]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(count[11]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(count[12]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(count[13]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(count[14]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(count[15]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(count[16]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(count[17]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(count[18]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(count[19]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(count[1]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(count[20]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(count[21]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(count[22]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(count[23]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(count[24]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(count[25]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(count[26]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(count[27]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(count[28]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(count[29]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(count[2]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(count[30]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(count[31]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(count[3]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(count[4]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(count[5]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(count[6]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(count[7]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(count[8]),
        .R(tmp_i_1_n_0));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(count[9]),
        .R(tmp_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_i_1
       (.I0(reset_n),
        .O(tmp_i_1_n_0));
  LUT5 #(
    .INIT(32'h1DFFE2FF)) 
    tmp_i_2
       (.I0(count1__10_carry__1_n_1),
        .I1(din[1]),
        .I2(count1_carry__1_n_1),
        .I3(din[0]),
        .I4(dout),
        .O(tmp_i_2_n_0));
  FDSE tmp_reg
       (.C(clk),
        .CE(1'b1),
        .D(tmp_i_2_n_0),
        .Q(dout),
        .S(tmp_i_1_n_0));
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
