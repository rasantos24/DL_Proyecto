////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Calculator_synthesis.v
// /___/   /\     Timestamp: Sat Dec 17 00:53:53 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Calculator.ngc Calculator_synthesis.v 
// Device	: xc3s500e-5-ft256
// Input file	: Calculator.ngc
// Output file	: C:\Users\KChin\Documents\Proyecto\Calculadora\netgen\synthesis\Calculator_synthesis.v
// # of Modules	: 1
// Design Name	: Calculator
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Calculator (
  clk, reset, result
);
  input clk;
  input reset;
  output result;
  wire \.u4/result_0 ;
  wire \.u4/result_cmp_eq0000_inv ;
  wire \.u4/result_cmp_eq0000_inv26_2 ;
  wire \.u4/result_cmp_eq0000_inv53_3 ;
  wire N0;
  wire N01;
  wire N1;
  wire N10;
  wire N11;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire clk_BUFGP_14;
  wire reset_IBUF_16;
  wire \u2/curr_state_FSM_FFd1_24 ;
  wire \u2/curr_state_FSM_FFd1-In_25 ;
  wire \u2/curr_state_FSM_FFd2_26 ;
  wire \u2/curr_state_FSM_FFd3_27 ;
  wire \u2/curr_state_FSM_FFd4_28 ;
  wire \u2/curr_state_FSM_FFd4-In_29 ;
  wire \u2/curr_state_FSM_FFd5_30 ;
  wire \u3/Mrom_data_frame_mux0000 ;
  wire \u3/Mrom_data_frame_mux00001 ;
  wire \u3/Mrom_data_frame_mux000011 ;
  wire \u3/Mrom_data_frame_mux000013 ;
  wire \u3/Mrom_data_frame_mux00002 ;
  wire \u3/Mrom_data_frame_mux00003 ;
  wire \u3/Mrom_data_frame_mux00004 ;
  wire \u3/Mrom_data_frame_mux00006 ;
  wire \u3/Mrom_data_frame_mux00008 ;
  wire \u3/data_frame[0] ;
  wire \u3/data_frame[1] ;
  wire \u3/data_frame[11] ;
  wire \u3/data_frame[13] ;
  wire \u3/data_frame[2] ;
  wire \u3/data_frame[3] ;
  wire \u3/data_frame[4] ;
  wire \u3/data_frame[6] ;
  wire \u3/data_frame[8] ;
  wire \uo/y_cmp_eq0008 ;
  wire \uo/y_mux0001<2>_mand1 ;
  wire \uo/y_mux0003 ;
  wire \uo/y_or0001 ;
  wire [2 : 0] \u2/addr ;
  wire [2 : 0] \u2/addr_i ;
  wire [2 : 0] \uo/Madd_y_addsub0000_cy ;
  wire [3 : 0] \uo/Madd_y_addsub0000_lut ;
  wire [2 : 2] \uo/Maddsub_y_addsub0001_lut ;
  wire [3 : 0] \uo/y ;
  wire [3 : 0] \uo/y_addsub0000 ;
  wire [3 : 0] \uo/y_mux0000 ;
  wire [0 : 0] \uo/y_mux0001 ;
  wire [2 : 2] \uo/y_mux0002 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDR   \.u4/result  (
    .C(clk_BUFGP_14),
    .D(N1),
    .R(\.u4/result_cmp_eq0000_inv ),
    .Q(\.u4/result_0 )
  );
  XORCY   \uo/Madd_y_addsub0000_xor<3>  (
    .CI(\uo/Madd_y_addsub0000_cy [2]),
    .LI(\uo/Madd_y_addsub0000_lut [3]),
    .O(\uo/y_addsub0000 [3])
  );
  XORCY   \uo/Madd_y_addsub0000_xor<2>  (
    .CI(\uo/Madd_y_addsub0000_cy [1]),
    .LI(\uo/Madd_y_addsub0000_lut [2]),
    .O(\uo/y_addsub0000 [2])
  );
  MUXCY   \uo/Madd_y_addsub0000_cy<2>  (
    .CI(\uo/Madd_y_addsub0000_cy [1]),
    .DI(\uo/y_mux0001<2>_mand1 ),
    .S(\uo/Madd_y_addsub0000_lut [2]),
    .O(\uo/Madd_y_addsub0000_cy [2])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \uo/Madd_y_addsub0000_lut<2>  (
    .I0(\u3/data_frame[11] ),
    .I1(\uo/y_cmp_eq0008 ),
    .I2(\uo/y_mux0002 [2]),
    .O(\uo/Madd_y_addsub0000_lut [2])
  );
  MULT_AND   \uo/y_mux0001<2>_mand  (
    .I0(\uo/y_cmp_eq0008 ),
    .I1(\u3/data_frame[11] ),
    .LO(\uo/y_mux0001<2>_mand1 )
  );
  XORCY   \uo/Madd_y_addsub0000_xor<1>  (
    .CI(\uo/Madd_y_addsub0000_cy [0]),
    .LI(\uo/Madd_y_addsub0000_lut [1]),
    .O(\uo/y_addsub0000 [1])
  );
  MUXCY   \uo/Madd_y_addsub0000_cy<1>  (
    .CI(\uo/Madd_y_addsub0000_cy [0]),
    .DI(N0),
    .S(\uo/Madd_y_addsub0000_lut [1]),
    .O(\uo/Madd_y_addsub0000_cy [1])
  );
  XORCY   \uo/Madd_y_addsub0000_xor<0>  (
    .CI(\uo/y_mux0003 ),
    .LI(\uo/Madd_y_addsub0000_lut [0]),
    .O(\uo/y_addsub0000 [0])
  );
  MUXCY   \uo/Madd_y_addsub0000_cy<0>  (
    .CI(\uo/y_mux0003 ),
    .DI(\uo/y_mux0001 [0]),
    .S(\uo/Madd_y_addsub0000_lut [0]),
    .O(\uo/Madd_y_addsub0000_cy [0])
  );
  FDE   \uo/y_3  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd3_27 ),
    .D(\uo/y_mux0000 [3]),
    .Q(\uo/y [3])
  );
  FDE   \uo/y_2  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd3_27 ),
    .D(\uo/y_mux0000 [2]),
    .Q(\uo/y [2])
  );
  FDE   \uo/y_1  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd3_27 ),
    .D(\uo/y_mux0000 [1]),
    .Q(\uo/y [1])
  );
  FDE   \uo/y_0  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd3_27 ),
    .D(\uo/y_mux0000 [0]),
    .Q(\uo/y [0])
  );
  FDC   \u2/curr_state_FSM_FFd2  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/curr_state_FSM_FFd3_27 ),
    .Q(\u2/curr_state_FSM_FFd2_26 )
  );
  FDC   \u2/curr_state_FSM_FFd3  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/curr_state_FSM_FFd4_28 ),
    .Q(\u2/curr_state_FSM_FFd3_27 )
  );
  FDP   \u2/curr_state_FSM_FFd5  (
    .C(clk_BUFGP_14),
    .D(N0),
    .PRE(reset_IBUF_16),
    .Q(\u2/curr_state_FSM_FFd5_30 )
  );
  FDC   \u2/curr_state_FSM_FFd4  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/curr_state_FSM_FFd4-In_29 ),
    .Q(\u2/curr_state_FSM_FFd4_28 )
  );
  FDC   \u2/curr_state_FSM_FFd1  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/curr_state_FSM_FFd1-In_25 ),
    .Q(\u2/curr_state_FSM_FFd1_24 )
  );
  FDC   \u2/addr_2  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/addr_i [2]),
    .Q(\u2/addr [2])
  );
  FDC   \u2/addr_1  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/addr_i [1]),
    .Q(\u2/addr [1])
  );
  FDC   \u2/addr_0  (
    .C(clk_BUFGP_14),
    .CLR(reset_IBUF_16),
    .D(\u2/addr_i [0]),
    .Q(\u2/addr [0])
  );
  FDE   \u3/data_frame_13  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux000013 ),
    .Q(\u3/data_frame[13] )
  );
  FDE   \u3/data_frame_11  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux000011 ),
    .Q(\u3/data_frame[11] )
  );
  FDE   \u3/data_frame_8  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux00008 ),
    .Q(\u3/data_frame[8] )
  );
  FDE   \u3/data_frame_6  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux00006 ),
    .Q(\u3/data_frame[6] )
  );
  FDE   \u3/data_frame_4  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux00004 ),
    .Q(\u3/data_frame[4] )
  );
  FDE   \u3/data_frame_3  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux00003 ),
    .Q(\u3/data_frame[3] )
  );
  FDE   \u3/data_frame_2  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux00002 ),
    .Q(\u3/data_frame[2] )
  );
  FDE   \u3/data_frame_1  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux00001 ),
    .Q(\u3/data_frame[1] )
  );
  FDE   \u3/data_frame_0  (
    .C(clk_BUFGP_14),
    .CE(\u2/curr_state_FSM_FFd4_28 ),
    .D(\u3/Mrom_data_frame_mux0000 ),
    .Q(\u3/data_frame[0] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/Mrom_data_frame_mux000081  (
    .I0(\u2/addr [0]),
    .I1(\u2/addr [2]),
    .O(\u3/Mrom_data_frame_mux00008 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \u3/Mrom_data_frame_mux00001111  (
    .I0(\u2/addr [1]),
    .I1(\u2/addr [2]),
    .O(\u3/Mrom_data_frame_mux000011 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/Mrom_data_frame_mux000012  (
    .I0(\u2/addr [0]),
    .I1(\u2/addr [1]),
    .O(\u3/Mrom_data_frame_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u3/Mrom_data_frame_mux000021  (
    .I0(\u2/addr [2]),
    .I1(\u2/addr [1]),
    .O(\u3/Mrom_data_frame_mux00002 )
  );
  LUT3 #(
    .INIT ( 8'h5D ))
  \u3/Mrom_data_frame_mux0000111  (
    .I0(\u2/addr [2]),
    .I1(\u2/addr [0]),
    .I2(\u2/addr [1]),
    .O(\u3/Mrom_data_frame_mux00001 )
  );
  LUT3 #(
    .INIT ( 8'h26 ))
  \u3/Mrom_data_frame_mux000042  (
    .I0(\u2/addr [2]),
    .I1(\u2/addr [1]),
    .I2(\u2/addr [0]),
    .O(\u3/Mrom_data_frame_mux00004 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \u2/addr_i<2>1  (
    .I0(\u2/addr [2]),
    .I1(\u2/curr_state_FSM_FFd1_24 ),
    .I2(\u2/addr [0]),
    .I3(\u2/addr [1]),
    .O(\u2/addr_i [2])
  );
  LUT4 #(
    .INIT ( 16'h9CBC ))
  \u2/addr_i<0>1  (
    .I0(\u2/addr [2]),
    .I1(\u2/addr [0]),
    .I2(\u2/curr_state_FSM_FFd1_24 ),
    .I3(\u2/addr [1]),
    .O(\u2/addr_i [0])
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \u2/addr_i<1>1  (
    .I0(\u2/addr [0]),
    .I1(\u2/addr [1]),
    .I2(\u2/curr_state_FSM_FFd1_24 ),
    .I3(\u2/addr [2]),
    .O(\u2/addr_i [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \u2/curr_state_FSM_FFd1-In_SW0  (
    .I0(\u2/addr [1]),
    .I1(\u2/addr [0]),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \u2/curr_state_FSM_FFd1-In  (
    .I0(\u2/curr_state_FSM_FFd2_26 ),
    .I1(\u2/addr [2]),
    .I2(\u2/curr_state_FSM_FFd1_24 ),
    .I3(N01),
    .O(\u2/curr_state_FSM_FFd1-In_25 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \u2/curr_state_FSM_FFd4-In_SW0  (
    .I0(\u2/addr [1]),
    .I1(\u2/addr [0]),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \u2/curr_state_FSM_FFd4-In  (
    .I0(\u2/curr_state_FSM_FFd1_24 ),
    .I1(N2),
    .I2(\u2/addr [2]),
    .I3(\u2/curr_state_FSM_FFd5_30 ),
    .O(\u2/curr_state_FSM_FFd4-In_29 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \.u4/result_cmp_eq0000_inv26  (
    .I0(\uo/y [1]),
    .I1(\u3/data_frame[1] ),
    .I2(\uo/y [0]),
    .I3(\u3/data_frame[0] ),
    .O(\.u4/result_cmp_eq0000_inv26_2 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \.u4/result_cmp_eq0000_inv54  (
    .I0(\.u4/result_cmp_eq0000_inv26_2 ),
    .I1(\.u4/result_cmp_eq0000_inv53_3 ),
    .O(\.u4/result_cmp_eq0000_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/Mrom_data_frame_mux0000411  (
    .I0(\u2/addr [2]),
    .I1(\u2/addr [1]),
    .O(\u3/Mrom_data_frame_mux00006 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \uo/y_or00011  (
    .I0(\u3/data_frame[6] ),
    .I1(\u3/data_frame[3] ),
    .O(\uo/y_or0001 )
  );
  LUT3 #(
    .INIT ( 8'hC1 ))
  \uo/y_mux0000<0>_SW0  (
    .I0(\u3/data_frame[4] ),
    .I1(\u3/data_frame[3] ),
    .I2(\u3/data_frame[13] ),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \uo/y_mux0000<0>  (
    .I0(\u3/data_frame[6] ),
    .I1(N4),
    .I2(\uo/y_addsub0000 [0]),
    .O(\uo/y_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \uo/y_cmp_eq00081  (
    .I0(\u3/data_frame[4] ),
    .I1(\u3/data_frame[6] ),
    .I2(\u3/data_frame[3] ),
    .O(\uo/y_cmp_eq0008 )
  );
  LUT3 #(
    .INIT ( 8'h97 ))
  \uo/y_mux0000<1>_SW0  (
    .I0(\u3/data_frame[4] ),
    .I1(\u3/data_frame[3] ),
    .I2(\u3/data_frame[11] ),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \uo/y_mux0000<1>  (
    .I0(\u3/data_frame[6] ),
    .I1(N6),
    .I2(\uo/y_addsub0000 [1]),
    .O(\uo/y_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \uo/y_mux0000<2>_SW0  (
    .I0(\u3/data_frame[4] ),
    .I1(\u3/data_frame[3] ),
    .I2(\u3/data_frame[11] ),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \uo/y_mux0000<2>  (
    .I0(\u3/data_frame[6] ),
    .I1(N8),
    .I2(\uo/y_addsub0000 [2]),
    .O(\uo/y_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hB380 ))
  \uo/y_mux0000<3>1  (
    .I0(\u3/data_frame[4] ),
    .I1(\u3/data_frame[6] ),
    .I2(\u3/data_frame[3] ),
    .I3(\uo/y_addsub0000 [3]),
    .O(\uo/y_mux0000 [3])
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_16)
  );
  OBUF   result_OBUF (
    .I(\.u4/result_0 ),
    .O(result)
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \uo/Maddsub_y_addsub0001_lut<2>1  (
    .I0(\u3/data_frame[11] ),
    .I1(\u3/data_frame[4] ),
    .I2(\u3/data_frame[6] ),
    .I3(\u3/data_frame[3] ),
    .O(\uo/Maddsub_y_addsub0001_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hAAA2 ))
  \uo/y_mux0001<0>1  (
    .I0(\u3/data_frame[8] ),
    .I1(\u3/data_frame[4] ),
    .I2(\u3/data_frame[6] ),
    .I3(\u3/data_frame[3] ),
    .O(\uo/y_mux0001 [0])
  );
  LUT4 #(
    .INIT ( 16'hA956 ))
  \uo/Madd_y_addsub0000_lut<0>  (
    .I0(\u3/data_frame[13] ),
    .I1(\u3/data_frame[6] ),
    .I2(\u3/data_frame[3] ),
    .I3(\uo/y_mux0001 [0]),
    .O(\uo/Madd_y_addsub0000_lut [0])
  );
  LUT4 #(
    .INIT ( 16'hA5A6 ))
  \uo/y_mux0002<1>1  (
    .I0(\u3/data_frame[11] ),
    .I1(\u3/data_frame[3] ),
    .I2(\u3/data_frame[13] ),
    .I3(\u3/data_frame[6] ),
    .O(\uo/Madd_y_addsub0000_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h001F ))
  \uo/y_mux0002<3>1  (
    .I0(\u3/data_frame[13] ),
    .I1(\u3/data_frame[11] ),
    .I2(\uo/Maddsub_y_addsub0001_lut [2]),
    .I3(\uo/y_or0001 ),
    .O(\uo/Madd_y_addsub0000_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \uo/y_mux00031  (
    .I0(\u3/data_frame[4] ),
    .I1(\u3/data_frame[3] ),
    .I2(\u3/data_frame[6] ),
    .I3(\u3/data_frame[8] ),
    .O(\uo/y_mux0003 )
  );
  LUT3 #(
    .INIT ( 8'h18 ))
  \u3/Mrom_data_frame_mux000031  (
    .I0(\u2/addr [0]),
    .I1(\u2/addr [1]),
    .I2(\u2/addr [2]),
    .O(\u3/Mrom_data_frame_mux00003 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \u3/Mrom_data_frame_mux0000311  (
    .I0(\u2/addr [2]),
    .I1(\u2/addr [1]),
    .I2(\u2/addr [0]),
    .O(\u3/Mrom_data_frame_mux000013 )
  );
  MUXF5   \uo/y_mux0002<2>1  (
    .I0(N10),
    .I1(N11),
    .S(\u3/data_frame[4] ),
    .O(\uo/y_mux0002 [2])
  );
  LUT4 #(
    .INIT ( 16'h038A ))
  \uo/y_mux0002<2>1_F  (
    .I0(\u3/data_frame[3] ),
    .I1(\u3/data_frame[11] ),
    .I2(\u3/data_frame[13] ),
    .I3(\u3/data_frame[6] ),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h0302 ))
  \uo/y_mux0002<2>1_G  (
    .I0(\u3/data_frame[3] ),
    .I1(\u3/data_frame[11] ),
    .I2(\u3/data_frame[13] ),
    .I3(\u3/data_frame[6] ),
    .O(N11)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_14)
  );
  LUT4_L #(
    .INIT ( 16'h6FF6 ))
  \.u4/result_cmp_eq0000_inv53  (
    .I0(\uo/y [3]),
    .I1(\u3/data_frame[3] ),
    .I2(\uo/y [2]),
    .I3(\u3/data_frame[2] ),
    .LO(\.u4/result_cmp_eq0000_inv53_3 )
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

