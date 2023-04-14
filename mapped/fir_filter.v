/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Mar  9 14:24:52 2023
/////////////////////////////////////////////////////////////


module sync_low_1 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   q0;

  DFFSR q0_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(q0) );
  DFFSR q1_reg ( .D(q0), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out) );
endmodule


module sync_low_0 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   q0;

  DFFSR q0_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(q0) );
  DFFSR q1_reg ( .D(q0), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out) );
endmodule


module controller ( clk, n_rst, dr, lc, overflow, cnt_up, clear, modwait, op, 
        src1, src2, dest, err );
  output [2:0] op;
  output [3:0] src1;
  output [3:0] src2;
  output [3:0] dest;
  input clk, n_rst, dr, lc, overflow;
  output cnt_up, clear, modwait, err;
  wire   n65, n91, n94, n99, n100, n101, n102, n103, n104, n106, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n59, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n92, n93, n96;
  wire   [3:0] s;
  wire   [1:0] i;
  wire   [1:0] d;
  wire   [1:0] j;

  DFFSR \d_reg[0]  ( .D(n96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(d[0]) );
  DFFSR \s_reg[1]  ( .D(n104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(s[1]) );
  DFFSR \s_reg[0]  ( .D(n93), .CLK(clk), .R(n_rst), .S(1'b1), .Q(s[0]) );
  DFFSR \s_reg[2]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(s[2]) );
  DFFSR \i_reg[0]  ( .D(n100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  DFFSR \j_reg[0]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \d_reg[1]  ( .D(n106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(d[1]) );
  XOR2X1 U59 ( .A(n92), .B(n65), .Y(n101) );
  NAND2X1 U95 ( .A(j[1]), .B(j[0]), .Y(n91) );
  XOR2X1 U104 ( .A(n92), .B(j[0]), .Y(n94) );
  INVX8 U12 ( .A(n26), .Y(n27) );
  INVX4 U13 ( .A(n28), .Y(n29) );
  INVX2 U14 ( .A(n74), .Y(n59) );
  BUFX2 U15 ( .A(n82), .Y(n2) );
  INVX2 U16 ( .A(n82), .Y(n33) );
  XOR2X1 U17 ( .A(n79), .B(n1), .Y(n84) );
  XNOR2X1 U18 ( .A(n24), .B(n31), .Y(n1) );
  INVX2 U19 ( .A(d[0]), .Y(n3) );
  INVX4 U20 ( .A(n3), .Y(n4) );
  BUFX2 U21 ( .A(n11), .Y(n5) );
  INVX2 U22 ( .A(n80), .Y(n6) );
  INVX2 U23 ( .A(n31), .Y(n32) );
  INVX4 U24 ( .A(n27), .Y(n77) );
  AND2X2 U25 ( .A(n32), .B(n4), .Y(n7) );
  INVX1 U26 ( .A(n7), .Y(n75) );
  INVX2 U27 ( .A(n4), .Y(n8) );
  BUFX2 U28 ( .A(s[2]), .Y(n9) );
  INVX1 U29 ( .A(n59), .Y(n11) );
  INVX1 U30 ( .A(n29), .Y(n10) );
  AND2X1 U31 ( .A(n2), .B(n88), .Y(n13) );
  AND2X1 U32 ( .A(n29), .B(n48), .Y(err) );
  INVX2 U33 ( .A(n30), .Y(n12) );
  XNOR2X1 U34 ( .A(n27), .B(n61), .Y(n100) );
  BUFX4 U35 ( .A(i[1]), .Y(n24) );
  AND2X2 U36 ( .A(n59), .B(n8), .Y(n25) );
  INVX1 U37 ( .A(n25), .Y(n42) );
  INVX1 U38 ( .A(n24), .Y(n66) );
  INVX2 U39 ( .A(i[0]), .Y(n26) );
  INVX1 U40 ( .A(n9), .Y(n35) );
  INVX2 U41 ( .A(s[0]), .Y(n28) );
  BUFX2 U42 ( .A(n34), .Y(n30) );
  INVX2 U43 ( .A(d[1]), .Y(n31) );
  INVX1 U44 ( .A(n32), .Y(n80) );
  NAND3X1 U45 ( .A(n9), .B(n12), .C(n10), .Y(n89) );
  INVX2 U46 ( .A(s[1]), .Y(n34) );
  NAND3X1 U47 ( .A(s[2]), .B(n29), .C(n34), .Y(n74) );
  NAND2X1 U48 ( .A(n89), .B(n74), .Y(src1[3]) );
  NAND2X1 U49 ( .A(n30), .B(n35), .Y(modwait) );
  NAND3X1 U50 ( .A(n34), .B(n28), .C(s[2]), .Y(n82) );
  NAND2X1 U51 ( .A(n5), .B(n2), .Y(op[2]) );
  INVX2 U52 ( .A(op[2]), .Y(n70) );
  NAND3X1 U53 ( .A(n29), .B(n12), .C(n35), .Y(n37) );
  INVX2 U54 ( .A(src1[3]), .Y(n76) );
  NAND2X1 U55 ( .A(n37), .B(n76), .Y(n40) );
  INVX2 U56 ( .A(n40), .Y(n36) );
  NAND3X1 U57 ( .A(n12), .B(n35), .C(n10), .Y(n88) );
  NAND3X1 U58 ( .A(n36), .B(modwait), .C(n13), .Y(n51) );
  OAI21X1 U60 ( .A(overflow), .B(n70), .C(n51), .Y(n38) );
  INVX2 U61 ( .A(n37), .Y(n56) );
  NAND2X1 U62 ( .A(dr), .B(n56), .Y(n90) );
  INVX2 U63 ( .A(n90), .Y(cnt_up) );
  OR2X1 U64 ( .A(n38), .B(cnt_up), .Y(n103) );
  INVX2 U65 ( .A(dr), .Y(n39) );
  NAND2X1 U66 ( .A(n56), .B(n39), .Y(n55) );
  NAND2X1 U67 ( .A(n40), .B(n55), .Y(n43) );
  INVX2 U68 ( .A(n43), .Y(n41) );
  INVX2 U69 ( .A(n4), .Y(n78) );
  OAI21X1 U70 ( .A(n41), .B(n8), .C(n42), .Y(n96) );
  NAND2X1 U71 ( .A(n4), .B(n59), .Y(n87) );
  NOR2X1 U72 ( .A(n25), .B(n43), .Y(n44) );
  MUX2X1 U73 ( .B(n87), .A(n44), .S(n6), .Y(n106) );
  INVX2 U74 ( .A(modwait), .Y(n48) );
  OAI21X1 U75 ( .A(lc), .B(dr), .C(n48), .Y(n46) );
  INVX2 U76 ( .A(overflow), .Y(n50) );
  NAND3X1 U77 ( .A(n7), .B(n59), .C(n50), .Y(n45) );
  NAND3X1 U78 ( .A(n46), .B(n45), .C(n51), .Y(n104) );
  INVX2 U79 ( .A(lc), .Y(n47) );
  AOI22X1 U80 ( .A(dr), .B(n48), .C(err), .D(n47), .Y(n49) );
  OAI21X1 U81 ( .A(n76), .B(n50), .C(n49), .Y(n53) );
  NAND3X1 U82 ( .A(n55), .B(n2), .C(n51), .Y(n52) );
  OR2X1 U83 ( .A(n53), .B(n52), .Y(n93) );
  INVX2 U84 ( .A(n88), .Y(clear) );
  INVX2 U85 ( .A(j[0]), .Y(n54) );
  NAND2X1 U86 ( .A(clear), .B(n54), .Y(n57) );
  OAI21X1 U87 ( .A(clear), .B(n54), .C(n57), .Y(n102) );
  NAND2X1 U88 ( .A(n56), .B(n55), .Y(n61) );
  INVX2 U89 ( .A(n57), .Y(n67) );
  NOR2X1 U90 ( .A(n59), .B(n67), .Y(n60) );
  OAI21X1 U91 ( .A(n27), .B(n90), .C(n60), .Y(dest[0]) );
  NOR2X1 U92 ( .A(n27), .B(n61), .Y(n62) );
  XOR2X1 U93 ( .A(n24), .B(n62), .Y(n99) );
  XOR2X1 U94 ( .A(n24), .B(n27), .Y(n63) );
  AOI21X1 U96 ( .A(cnt_up), .B(n63), .C(n33), .Y(n64) );
  OAI21X1 U97 ( .A(n94), .B(n88), .C(n64), .Y(dest[1]) );
  NOR2X1 U98 ( .A(n77), .B(n66), .Y(n68) );
  AOI21X1 U99 ( .A(n68), .B(cnt_up), .C(n67), .Y(n69) );
  OAI21X1 U100 ( .A(j[1]), .B(n88), .C(n69), .Y(dest[2]) );
  OAI21X1 U101 ( .A(n91), .B(n88), .C(n70), .Y(dest[3]) );
  NAND2X1 U102 ( .A(n33), .B(n8), .Y(n73) );
  INVX2 U103 ( .A(n73), .Y(src2[0]) );
  NOR2X1 U105 ( .A(n7), .B(n82), .Y(n71) );
  OAI21X1 U106 ( .A(n6), .B(n4), .C(n71), .Y(n72) );
  NAND2X1 U107 ( .A(n72), .B(n11), .Y(src2[1]) );
  OAI21X1 U108 ( .A(n6), .B(n82), .C(n73), .Y(src2[2]) );
  OAI21X1 U109 ( .A(n2), .B(n75), .C(n5), .Y(src2[3]) );
  XOR2X1 U110 ( .A(n78), .B(n27), .Y(n83) );
  OAI21X1 U111 ( .A(n83), .B(n2), .C(n76), .Y(src1[0]) );
  NAND2X1 U112 ( .A(n78), .B(n77), .Y(n79) );
  XNOR2X1 U113 ( .A(n84), .B(n83), .Y(n81) );
  NAND2X1 U114 ( .A(n25), .B(n80), .Y(n86) );
  OAI21X1 U115 ( .A(n81), .B(n2), .C(n86), .Y(src1[1]) );
  NAND3X1 U116 ( .A(n33), .B(n83), .C(n84), .Y(n85) );
  NAND2X1 U117 ( .A(n86), .B(n85), .Y(src1[2]) );
  NAND3X1 U118 ( .A(n89), .B(n88), .C(n87), .Y(op[0]) );
  NAND2X1 U119 ( .A(n90), .B(n13), .Y(op[1]) );
  INVX2 U120 ( .A(j[1]), .Y(n92) );
  NAND2X1 U121 ( .A(j[0]), .B(clear), .Y(n65) );
endmodule


module datapath_decode ( op, w_en, w_data_sel, alu_op );
  input [2:0] op;
  output [1:0] w_data_sel;
  output [1:0] alu_op;
  output w_en;
  wire   n4, n5, n1, n2, n3;

  NAND3X1 U6 ( .A(n3), .B(n2), .C(n1), .Y(w_en) );
  NOR2X1 U7 ( .A(n1), .B(w_data_sel[1]), .Y(w_data_sel[0]) );
  NAND2X1 U8 ( .A(op[1]), .B(n2), .Y(w_data_sel[1]) );
  OAI21X1 U9 ( .A(n2), .B(n4), .C(n5), .Y(alu_op[1]) );
  NAND3X1 U10 ( .A(op[0]), .B(n3), .C(op[2]), .Y(n5) );
  NAND2X1 U11 ( .A(op[1]), .B(n1), .Y(n4) );
  NOR2X1 U12 ( .A(op[0]), .B(n2), .Y(alu_op[0]) );
  INVX2 U3 ( .A(op[0]), .Y(n1) );
  INVX2 U4 ( .A(op[2]), .Y(n2) );
  INVX2 U5 ( .A(op[1]), .Y(n3) );
endmodule


module alu_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n22, n24, n25, n26, n27, n28, n30, n32, n33, n34,
         n35, n36, n38, n40, n41, n42, n43, n44, n46, n48, n49, n50, n51, n52,
         n54, n56, n57, n58, n59, n60, n62, n64, n65, n66, n67, n68, n69, n71,
         n73, n75, n77, n79, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182;

  XOR2X1 U5 ( .A(n20), .B(n1), .Y(DIFF[13]) );
  OAI21X1 U6 ( .A(n20), .B(n18), .C(n19), .Y(n17) );
  NAND2X1 U7 ( .A(n19), .B(n69), .Y(n1) );
  NOR2X1 U9 ( .A(n84), .B(A[13]), .Y(n18) );
  NAND2X1 U10 ( .A(n84), .B(A[13]), .Y(n19) );
  XNOR2X1 U11 ( .A(n25), .B(n2), .Y(DIFF[12]) );
  AOI21X1 U12 ( .A(n181), .B(n25), .C(n22), .Y(n20) );
  NAND2X1 U15 ( .A(n24), .B(n181), .Y(n2) );
  NAND2X1 U18 ( .A(n85), .B(A[12]), .Y(n24) );
  XOR2X1 U19 ( .A(n28), .B(n3), .Y(DIFF[11]) );
  OAI21X1 U20 ( .A(n28), .B(n26), .C(n27), .Y(n25) );
  NAND2X1 U21 ( .A(n27), .B(n71), .Y(n3) );
  NOR2X1 U23 ( .A(n86), .B(A[11]), .Y(n26) );
  NAND2X1 U24 ( .A(n86), .B(A[11]), .Y(n27) );
  XNOR2X1 U25 ( .A(n33), .B(n4), .Y(DIFF[10]) );
  AOI21X1 U26 ( .A(n180), .B(n33), .C(n30), .Y(n28) );
  NAND2X1 U29 ( .A(n32), .B(n180), .Y(n4) );
  NAND2X1 U32 ( .A(n87), .B(A[10]), .Y(n32) );
  XOR2X1 U33 ( .A(n36), .B(n5), .Y(DIFF[9]) );
  OAI21X1 U34 ( .A(n36), .B(n34), .C(n35), .Y(n33) );
  NAND2X1 U35 ( .A(n35), .B(n73), .Y(n5) );
  NOR2X1 U37 ( .A(n88), .B(A[9]), .Y(n34) );
  NAND2X1 U38 ( .A(n88), .B(A[9]), .Y(n35) );
  XNOR2X1 U39 ( .A(n157), .B(n6), .Y(DIFF[8]) );
  AOI21X1 U40 ( .A(n179), .B(n41), .C(n38), .Y(n36) );
  NAND2X1 U43 ( .A(n40), .B(n179), .Y(n6) );
  NAND2X1 U46 ( .A(n89), .B(A[8]), .Y(n40) );
  XOR2X1 U47 ( .A(n44), .B(n7), .Y(DIFF[7]) );
  OAI21X1 U48 ( .A(n44), .B(n42), .C(n43), .Y(n41) );
  NAND2X1 U49 ( .A(n43), .B(n75), .Y(n7) );
  NOR2X1 U51 ( .A(n90), .B(A[7]), .Y(n42) );
  NAND2X1 U52 ( .A(n90), .B(A[7]), .Y(n43) );
  XNOR2X1 U53 ( .A(n49), .B(n8), .Y(DIFF[6]) );
  AOI21X1 U54 ( .A(n49), .B(n177), .C(n46), .Y(n44) );
  NAND2X1 U57 ( .A(n48), .B(n177), .Y(n8) );
  NAND2X1 U60 ( .A(n91), .B(A[6]), .Y(n48) );
  XOR2X1 U61 ( .A(n52), .B(n9), .Y(DIFF[5]) );
  OAI21X1 U62 ( .A(n52), .B(n50), .C(n51), .Y(n49) );
  NAND2X1 U63 ( .A(n51), .B(n77), .Y(n9) );
  NOR2X1 U65 ( .A(n92), .B(A[5]), .Y(n50) );
  NAND2X1 U66 ( .A(n92), .B(A[5]), .Y(n51) );
  XNOR2X1 U67 ( .A(n57), .B(n10), .Y(DIFF[4]) );
  AOI21X1 U68 ( .A(n178), .B(n57), .C(n54), .Y(n52) );
  NAND2X1 U71 ( .A(n56), .B(n178), .Y(n10) );
  NAND2X1 U74 ( .A(n93), .B(A[4]), .Y(n56) );
  XOR2X1 U75 ( .A(n60), .B(n11), .Y(DIFF[3]) );
  OAI21X1 U76 ( .A(n60), .B(n58), .C(n59), .Y(n57) );
  NAND2X1 U77 ( .A(n59), .B(n79), .Y(n11) );
  NOR2X1 U79 ( .A(n94), .B(A[3]), .Y(n58) );
  NAND2X1 U80 ( .A(n94), .B(A[3]), .Y(n59) );
  XNOR2X1 U81 ( .A(n65), .B(n12), .Y(DIFF[2]) );
  AOI21X1 U82 ( .A(n176), .B(n65), .C(n62), .Y(n60) );
  NAND2X1 U85 ( .A(n64), .B(n176), .Y(n12) );
  NAND2X1 U88 ( .A(n95), .B(A[2]), .Y(n64) );
  XOR2X1 U89 ( .A(n13), .B(n182), .Y(DIFF[1]) );
  OAI21X1 U90 ( .A(n66), .B(n182), .C(n67), .Y(n65) );
  NAND2X1 U91 ( .A(n67), .B(n81), .Y(n13) );
  NOR2X1 U93 ( .A(n96), .B(A[1]), .Y(n66) );
  NAND2X1 U94 ( .A(n96), .B(A[1]), .Y(n67) );
  XNOR2X1 U95 ( .A(A[0]), .B(n97), .Y(DIFF[0]) );
  NOR2X1 U96 ( .A(n97), .B(A[0]), .Y(n68) );
  BUFX2 U117 ( .A(n68), .Y(n182) );
  INVX1 U118 ( .A(B[12]), .Y(n85) );
  BUFX2 U119 ( .A(n41), .Y(n157) );
  NAND3X1 U120 ( .A(n169), .B(n170), .C(n171), .Y(n158) );
  BUFX2 U121 ( .A(n16), .Y(n159) );
  NAND2X1 U122 ( .A(n172), .B(n161), .Y(n162) );
  NAND2X1 U123 ( .A(n160), .B(n15), .Y(n163) );
  NAND2X1 U124 ( .A(n162), .B(n163), .Y(DIFF[16]) );
  INVX1 U125 ( .A(n172), .Y(n160) );
  INVX2 U126 ( .A(n15), .Y(n161) );
  XOR2X1 U127 ( .A(A[14]), .B(n83), .Y(n164) );
  XOR2X1 U128 ( .A(n17), .B(n164), .Y(DIFF[14]) );
  NAND2X1 U129 ( .A(n17), .B(A[14]), .Y(n165) );
  NAND2X1 U130 ( .A(n17), .B(n83), .Y(n166) );
  NAND2X1 U131 ( .A(A[14]), .B(n83), .Y(n167) );
  NAND3X1 U132 ( .A(n166), .B(n165), .C(n167), .Y(n16) );
  INVX1 U133 ( .A(B[4]), .Y(n93) );
  XOR2X1 U134 ( .A(n82), .B(A[15]), .Y(n168) );
  XOR2X1 U135 ( .A(n168), .B(n159), .Y(DIFF[15]) );
  NAND2X1 U136 ( .A(n82), .B(A[15]), .Y(n169) );
  NAND2X1 U137 ( .A(n82), .B(n16), .Y(n170) );
  NAND2X1 U138 ( .A(A[15]), .B(n16), .Y(n171) );
  NAND3X1 U139 ( .A(n169), .B(n170), .C(n171), .Y(n15) );
  XOR2X1 U140 ( .A(B[16]), .B(n98), .Y(n172) );
  NAND2X1 U141 ( .A(B[16]), .B(n98), .Y(n173) );
  NAND2X1 U142 ( .A(B[16]), .B(n158), .Y(n174) );
  NAND2X1 U143 ( .A(n98), .B(n158), .Y(n175) );
  NAND3X1 U144 ( .A(n173), .B(n174), .C(n175), .Y(n14) );
  OR2X1 U145 ( .A(n95), .B(A[2]), .Y(n176) );
  OR2X1 U146 ( .A(n91), .B(A[6]), .Y(n177) );
  OR2X1 U147 ( .A(n93), .B(A[4]), .Y(n178) );
  OR2X1 U148 ( .A(n89), .B(A[8]), .Y(n179) );
  OR2X1 U149 ( .A(n87), .B(A[10]), .Y(n180) );
  OR2X1 U150 ( .A(n85), .B(A[12]), .Y(n181) );
  INVX1 U151 ( .A(B[10]), .Y(n87) );
  INVX1 U152 ( .A(B[6]), .Y(n91) );
  INVX1 U153 ( .A(B[8]), .Y(n89) );
  INVX1 U154 ( .A(n66), .Y(n81) );
  INVX1 U155 ( .A(B[15]), .Y(n82) );
  INVX1 U156 ( .A(B[13]), .Y(n84) );
  INVX1 U157 ( .A(B[9]), .Y(n88) );
  INVX1 U158 ( .A(B[11]), .Y(n86) );
  INVX1 U159 ( .A(B[3]), .Y(n94) );
  INVX1 U160 ( .A(B[7]), .Y(n90) );
  INVX1 U161 ( .A(B[1]), .Y(n96) );
  INVX1 U162 ( .A(B[5]), .Y(n92) );
  INVX2 U163 ( .A(A[17]), .Y(n98) );
  INVX2 U164 ( .A(B[0]), .Y(n97) );
  INVX2 U165 ( .A(B[2]), .Y(n95) );
  INVX2 U166 ( .A(B[14]), .Y(n83) );
  INVX2 U167 ( .A(n58), .Y(n79) );
  INVX2 U168 ( .A(n50), .Y(n77) );
  INVX2 U169 ( .A(n42), .Y(n75) );
  INVX2 U170 ( .A(n34), .Y(n73) );
  INVX2 U171 ( .A(n26), .Y(n71) );
  INVX2 U172 ( .A(n18), .Y(n69) );
  INVX2 U173 ( .A(n64), .Y(n62) );
  INVX2 U174 ( .A(n56), .Y(n54) );
  INVX2 U175 ( .A(n48), .Y(n46) );
  INVX2 U176 ( .A(n40), .Y(n38) );
  INVX2 U177 ( .A(n32), .Y(n30) );
  INVX2 U178 ( .A(n24), .Y(n22) );
  INVX2 U179 ( .A(n14), .Y(DIFF[17]) );
endmodule


module alu_DW01_add_1 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n20, n21, n23, n25, n26, n27, n28, n29, n31, n33, n34, n35,
         n36, n37, n39, n41, n42, n43, n44, n45, n47, n49, n50, n51, n52, n53,
         n55, n57, n58, n59, n60, n61, n63, n65, n66, n67, n68, n70, n71, n73,
         n75, n77, n79, n81, n83, n85, n86, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n159, n160, n161, n162,
         n163, n164;

  XOR2X1 U5 ( .A(n21), .B(n1), .Y(SUM[13]) );
  OAI21X1 U6 ( .A(n21), .B(n19), .C(n20), .Y(n18) );
  NAND2X1 U7 ( .A(n20), .B(n71), .Y(n1) );
  NOR2X1 U9 ( .A(B[13]), .B(A[13]), .Y(n19) );
  NAND2X1 U10 ( .A(B[13]), .B(A[13]), .Y(n20) );
  XNOR2X1 U11 ( .A(n26), .B(n2), .Y(SUM[12]) );
  AOI21X1 U12 ( .A(n163), .B(n26), .C(n23), .Y(n21) );
  NAND2X1 U15 ( .A(n25), .B(n163), .Y(n2) );
  NAND2X1 U18 ( .A(B[12]), .B(A[12]), .Y(n25) );
  XOR2X1 U19 ( .A(n29), .B(n3), .Y(SUM[11]) );
  OAI21X1 U20 ( .A(n29), .B(n27), .C(n28), .Y(n26) );
  NAND2X1 U21 ( .A(n28), .B(n73), .Y(n3) );
  NOR2X1 U23 ( .A(B[11]), .B(A[11]), .Y(n27) );
  NAND2X1 U24 ( .A(B[11]), .B(A[11]), .Y(n28) );
  XNOR2X1 U25 ( .A(n34), .B(n4), .Y(SUM[10]) );
  AOI21X1 U26 ( .A(n161), .B(n34), .C(n31), .Y(n29) );
  NAND2X1 U29 ( .A(n33), .B(n161), .Y(n4) );
  NAND2X1 U32 ( .A(B[10]), .B(A[10]), .Y(n33) );
  XOR2X1 U33 ( .A(n37), .B(n5), .Y(SUM[9]) );
  OAI21X1 U34 ( .A(n37), .B(n35), .C(n36), .Y(n34) );
  NAND2X1 U35 ( .A(n36), .B(n75), .Y(n5) );
  NOR2X1 U37 ( .A(B[9]), .B(A[9]), .Y(n35) );
  NAND2X1 U38 ( .A(B[9]), .B(A[9]), .Y(n36) );
  XNOR2X1 U39 ( .A(n42), .B(n6), .Y(SUM[8]) );
  AOI21X1 U40 ( .A(n162), .B(n42), .C(n39), .Y(n37) );
  NAND2X1 U43 ( .A(n41), .B(n162), .Y(n6) );
  NAND2X1 U46 ( .A(B[8]), .B(A[8]), .Y(n41) );
  XOR2X1 U47 ( .A(n45), .B(n7), .Y(SUM[7]) );
  OAI21X1 U48 ( .A(n45), .B(n43), .C(n44), .Y(n42) );
  NAND2X1 U49 ( .A(n44), .B(n77), .Y(n7) );
  NOR2X1 U51 ( .A(B[7]), .B(A[7]), .Y(n43) );
  NAND2X1 U52 ( .A(B[7]), .B(A[7]), .Y(n44) );
  XNOR2X1 U53 ( .A(n50), .B(n8), .Y(SUM[6]) );
  AOI21X1 U54 ( .A(n160), .B(n50), .C(n47), .Y(n45) );
  NAND2X1 U57 ( .A(n49), .B(n160), .Y(n8) );
  NAND2X1 U60 ( .A(B[6]), .B(A[6]), .Y(n49) );
  XOR2X1 U61 ( .A(n53), .B(n9), .Y(SUM[5]) );
  OAI21X1 U62 ( .A(n53), .B(n51), .C(n52), .Y(n50) );
  NAND2X1 U63 ( .A(n52), .B(n79), .Y(n9) );
  NOR2X1 U65 ( .A(B[5]), .B(A[5]), .Y(n51) );
  NAND2X1 U66 ( .A(B[5]), .B(A[5]), .Y(n52) );
  XNOR2X1 U67 ( .A(n58), .B(n10), .Y(SUM[4]) );
  AOI21X1 U68 ( .A(n159), .B(n58), .C(n55), .Y(n53) );
  NAND2X1 U71 ( .A(n57), .B(n159), .Y(n10) );
  NAND2X1 U74 ( .A(B[4]), .B(A[4]), .Y(n57) );
  XOR2X1 U75 ( .A(n61), .B(n11), .Y(SUM[3]) );
  OAI21X1 U76 ( .A(n61), .B(n59), .C(n60), .Y(n58) );
  NAND2X1 U77 ( .A(n60), .B(n81), .Y(n11) );
  NOR2X1 U79 ( .A(B[3]), .B(A[3]), .Y(n59) );
  NAND2X1 U80 ( .A(B[3]), .B(A[3]), .Y(n60) );
  XNOR2X1 U81 ( .A(n66), .B(n12), .Y(SUM[2]) );
  AOI21X1 U82 ( .A(n157), .B(n66), .C(n63), .Y(n61) );
  NAND2X1 U85 ( .A(n65), .B(n157), .Y(n12) );
  NAND2X1 U88 ( .A(B[2]), .B(A[2]), .Y(n65) );
  XOR2X1 U89 ( .A(n13), .B(n70), .Y(SUM[1]) );
  OAI21X1 U90 ( .A(n67), .B(n70), .C(n68), .Y(n66) );
  NAND2X1 U91 ( .A(n68), .B(n83), .Y(n13) );
  NOR2X1 U93 ( .A(B[1]), .B(A[1]), .Y(n67) );
  NAND2X1 U94 ( .A(B[1]), .B(A[1]), .Y(n68) );
  NAND2X1 U99 ( .A(A[0]), .B(B[0]), .Y(n70) );
  INVX1 U105 ( .A(n67), .Y(n83) );
  AND2X1 U106 ( .A(n70), .B(n164), .Y(SUM[0]) );
  XOR2X1 U107 ( .A(A[14]), .B(B[14]), .Y(n145) );
  XOR2X1 U108 ( .A(n18), .B(n145), .Y(SUM[14]) );
  NAND2X1 U109 ( .A(n18), .B(A[14]), .Y(n146) );
  NAND2X1 U110 ( .A(n18), .B(B[14]), .Y(n147) );
  NAND2X1 U111 ( .A(A[14]), .B(B[14]), .Y(n148) );
  NAND3X1 U112 ( .A(n147), .B(n146), .C(n148), .Y(n17) );
  XOR2X1 U113 ( .A(B[15]), .B(A[15]), .Y(n149) );
  XOR2X1 U114 ( .A(n17), .B(n149), .Y(SUM[15]) );
  NAND2X1 U115 ( .A(B[15]), .B(A[15]), .Y(n150) );
  NAND2X1 U116 ( .A(B[15]), .B(n17), .Y(n151) );
  NAND2X1 U117 ( .A(A[15]), .B(n17), .Y(n152) );
  NAND3X1 U118 ( .A(n150), .B(n151), .C(n152), .Y(n16) );
  XOR2X1 U119 ( .A(n85), .B(n86), .Y(n153) );
  XOR2X1 U120 ( .A(n153), .B(n16), .Y(SUM[16]) );
  NAND2X1 U121 ( .A(n85), .B(n86), .Y(n154) );
  NAND2X1 U122 ( .A(n85), .B(n16), .Y(n155) );
  NAND2X1 U123 ( .A(n86), .B(n16), .Y(n156) );
  NAND3X1 U124 ( .A(n154), .B(n155), .C(n156), .Y(n15) );
  OR2X1 U125 ( .A(B[2]), .B(A[2]), .Y(n157) );
  OR2X2 U126 ( .A(B[0]), .B(A[0]), .Y(n164) );
  OR2X2 U127 ( .A(B[4]), .B(A[4]), .Y(n159) );
  OR2X2 U128 ( .A(B[6]), .B(A[6]), .Y(n160) );
  OR2X2 U129 ( .A(B[12]), .B(A[12]), .Y(n163) );
  OR2X2 U130 ( .A(B[10]), .B(A[10]), .Y(n161) );
  OR2X1 U131 ( .A(B[8]), .B(A[8]), .Y(n162) );
  INVX2 U132 ( .A(A[17]), .Y(n86) );
  INVX2 U133 ( .A(B[17]), .Y(n85) );
  INVX2 U134 ( .A(n59), .Y(n81) );
  INVX2 U135 ( .A(n51), .Y(n79) );
  INVX2 U136 ( .A(n43), .Y(n77) );
  INVX2 U137 ( .A(n35), .Y(n75) );
  INVX2 U138 ( .A(n27), .Y(n73) );
  INVX2 U139 ( .A(n19), .Y(n71) );
  INVX2 U140 ( .A(n65), .Y(n63) );
  INVX2 U141 ( .A(n57), .Y(n55) );
  INVX2 U142 ( .A(n49), .Y(n47) );
  INVX2 U143 ( .A(n41), .Y(n39) );
  INVX2 U144 ( .A(n33), .Y(n31) );
  INVX2 U145 ( .A(n25), .Y(n23) );
  INVX2 U146 ( .A(n15), .Y(SUM[17]) );
endmodule


module alu_DW_mult_uns_2 ( a, b, product );
  input [30:0] a;
  input [15:0] b;
  output [46:0] product;
  wire   n1, n6, n7, n12, n13, n19, n24, n25, n31, n34, n36, n37, n46, n48,
         n49, n51, n52, n53, n54, n56, n58, n59, n60, n61, n62, n65, n66, n67,
         n68, n69, n70, n72, n73, n74, n75, n77, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n109, n111, n112,
         n113, n114, n115, n116, n120, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n133, n134, n135, n136, n140, n142, n144, n145,
         n146, n147, n148, n149, n151, n154, n155, n156, n159, n160, n161,
         n162, n163, n164, n165, n166, n169, n170, n171, n172, n173, n174,
         n177, n178, n179, n181, n182, n183, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n197, n198, n199, n200, n201, n202,
         n205, n206, n207, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n248, n249, n250,
         n251, n256, n257, n258, n259, n264, n265, n266, n267, n275, n279,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n545, n548,
         n549, n551, n554, n555, n557, n560, n561, n563, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n893, n895, n896, n898, n899, n900, n917, n918, n920, n921, n922,
         n923, n925, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255;
  assign n1 = b[1];
  assign n7 = b[3];
  assign n13 = b[5];
  assign n19 = b[7];
  assign n25 = b[9];
  assign n31 = b[11];
  assign n37 = b[13];
  assign n49 = a[15];
  assign n541 = b[15];
  assign n877 = a[30];
  assign n878 = a[29];
  assign n879 = a[28];
  assign n880 = a[27];
  assign n881 = a[26];
  assign n882 = a[25];
  assign n883 = a[24];
  assign n884 = a[23];
  assign n885 = a[22];
  assign n886 = a[21];
  assign n887 = a[20];
  assign n888 = a[19];
  assign n889 = a[18];
  assign n890 = a[17];
  assign n891 = a[16];

  XOR2X1 U54 ( .A(n73), .B(n54), .Y(product[46]) );
  NAND2X1 U55 ( .A(n72), .B(n1033), .Y(n54) );
  NAND2X1 U58 ( .A(n292), .B(n293), .Y(n72) );
  AOI21X1 U60 ( .A(n1145), .B(n74), .C(n75), .Y(n73) );
  NOR2X1 U61 ( .A(n1074), .B(n1106), .Y(n74) );
  OAI21X1 U62 ( .A(n1107), .B(n1074), .C(n77), .Y(n75) );
  OAI21X1 U66 ( .A(n80), .B(n140), .C(n81), .Y(n79) );
  NAND2X1 U67 ( .A(n82), .B(n104), .Y(n80) );
  AOI21X1 U68 ( .A(n82), .B(n105), .C(n83), .Y(n81) );
  NOR2X1 U69 ( .A(n84), .B(n93), .Y(n82) );
  OAI21X1 U70 ( .A(n94), .B(n84), .C(n85), .Y(n83) );
  NOR2X1 U73 ( .A(n294), .B(n297), .Y(n84) );
  NAND2X1 U74 ( .A(n294), .B(n297), .Y(n85) );
  XOR2X1 U75 ( .A(n95), .B(n56), .Y(product[44]) );
  AOI21X1 U76 ( .A(n1208), .B(n87), .C(n88), .Y(n86) );
  NOR2X1 U77 ( .A(n1106), .B(n89), .Y(n87) );
  OAI21X1 U78 ( .A(n89), .B(n1108), .C(n90), .Y(n88) );
  NAND2X1 U79 ( .A(n91), .B(n100), .Y(n89) );
  AOI21X1 U80 ( .A(n91), .B(n101), .C(n92), .Y(n90) );
  NAND2X1 U83 ( .A(n94), .B(n91), .Y(n56) );
  NOR2X1 U85 ( .A(n298), .B(n301), .Y(n93) );
  NAND2X1 U86 ( .A(n298), .B(n301), .Y(n94) );
  AOI21X1 U88 ( .A(n1208), .B(n96), .C(n97), .Y(n95) );
  NOR2X1 U89 ( .A(n98), .B(n1106), .Y(n96) );
  OAI21X1 U90 ( .A(n1108), .B(n98), .C(n99), .Y(n97) );
  NOR2X1 U93 ( .A(n102), .B(n1046), .Y(n100) );
  OAI21X1 U94 ( .A(n140), .B(n102), .C(n103), .Y(n101) );
  NOR2X1 U97 ( .A(n130), .B(n106), .Y(n104) );
  OAI21X1 U98 ( .A(n106), .B(n133), .C(n107), .Y(n105) );
  NAND2X1 U99 ( .A(n1085), .B(n1030), .Y(n106) );
  AOI21X1 U100 ( .A(n120), .B(n1085), .C(n109), .Y(n107) );
  NAND2X1 U106 ( .A(n302), .B(n307), .Y(n111) );
  XOR2X1 U107 ( .A(n123), .B(n58), .Y(product[42]) );
  AOI21X1 U108 ( .A(n1208), .B(n113), .C(n114), .Y(n112) );
  NOR2X1 U109 ( .A(n1106), .B(n115), .Y(n113) );
  OAI21X1 U110 ( .A(n115), .B(n1108), .C(n116), .Y(n114) );
  NAND2X1 U111 ( .A(n1030), .B(n128), .Y(n115) );
  AOI21X1 U112 ( .A(n1030), .B(n129), .C(n120), .Y(n116) );
  NAND2X1 U117 ( .A(n122), .B(n1030), .Y(n58) );
  NAND2X1 U120 ( .A(n308), .B(n313), .Y(n122) );
  XOR2X1 U121 ( .A(n134), .B(n59), .Y(product[41]) );
  AOI21X1 U122 ( .A(n1208), .B(n124), .C(n125), .Y(n123) );
  NOR2X1 U123 ( .A(n126), .B(n1106), .Y(n124) );
  OAI21X1 U124 ( .A(n1107), .B(n126), .C(n127), .Y(n125) );
  NOR2X1 U127 ( .A(n130), .B(n1046), .Y(n128) );
  OAI21X1 U128 ( .A(n140), .B(n130), .C(n133), .Y(n129) );
  NAND2X1 U131 ( .A(n133), .B(n279), .Y(n59) );
  NOR2X1 U133 ( .A(n314), .B(n321), .Y(n130) );
  NAND2X1 U134 ( .A(n314), .B(n321), .Y(n133) );
  XOR2X1 U135 ( .A(n145), .B(n60), .Y(product[40]) );
  AOI21X1 U136 ( .A(n1208), .B(n135), .C(n136), .Y(n134) );
  NOR2X1 U137 ( .A(n1047), .B(n1106), .Y(n135) );
  OAI21X1 U138 ( .A(n1108), .B(n1047), .C(n140), .Y(n136) );
  AOI21X1 U142 ( .A(n151), .B(n1084), .C(n142), .Y(n140) );
  NAND2X1 U145 ( .A(n144), .B(n1084), .Y(n60) );
  NAND2X1 U148 ( .A(n322), .B(n329), .Y(n144) );
  XOR2X1 U149 ( .A(n154), .B(n61), .Y(product[39]) );
  AOI21X1 U150 ( .A(n1208), .B(n146), .C(n147), .Y(n145) );
  NOR2X1 U151 ( .A(n148), .B(n1106), .Y(n146) );
  OAI21X1 U152 ( .A(n1108), .B(n148), .C(n149), .Y(n147) );
  NAND2X1 U157 ( .A(n149), .B(n281), .Y(n61) );
  NOR2X1 U159 ( .A(n330), .B(n339), .Y(n148) );
  NAND2X1 U160 ( .A(n330), .B(n339), .Y(n149) );
  XOR2X1 U161 ( .A(n163), .B(n62), .Y(product[38]) );
  AOI21X1 U162 ( .A(n155), .B(n1208), .C(n156), .Y(n154) );
  NAND2X1 U165 ( .A(n159), .B(n171), .Y(n53) );
  AOI21X1 U166 ( .A(n172), .B(n159), .C(n160), .Y(n52) );
  NOR2X1 U167 ( .A(n161), .B(n166), .Y(n159) );
  OAI21X1 U168 ( .A(n161), .B(n169), .C(n162), .Y(n160) );
  NAND2X1 U169 ( .A(n162), .B(n282), .Y(n62) );
  NOR2X1 U171 ( .A(n349), .B(n340), .Y(n161) );
  NAND2X1 U172 ( .A(n349), .B(n340), .Y(n162) );
  AOI21X1 U174 ( .A(n164), .B(n1208), .C(n165), .Y(n163) );
  NOR2X1 U175 ( .A(n1069), .B(n173), .Y(n164) );
  OAI21X1 U176 ( .A(n174), .B(n1069), .C(n169), .Y(n165) );
  NOR2X1 U181 ( .A(n361), .B(n350), .Y(n166) );
  NAND2X1 U182 ( .A(n361), .B(n350), .Y(n169) );
  AOI21X1 U184 ( .A(n1038), .B(n1208), .C(n1004), .Y(n170) );
  NOR2X1 U189 ( .A(n1039), .B(n182), .Y(n171) );
  OAI21X1 U190 ( .A(n177), .B(n183), .C(n178), .Y(n172) );
  NOR2X1 U193 ( .A(n373), .B(n362), .Y(n177) );
  NAND2X1 U194 ( .A(n373), .B(n362), .Y(n178) );
  XNOR2X1 U195 ( .A(n1145), .B(n65), .Y(product[35]) );
  AOI21X1 U196 ( .A(n285), .B(n1208), .C(n181), .Y(n179) );
  NAND2X1 U199 ( .A(n183), .B(n285), .Y(n65) );
  NOR2X1 U201 ( .A(n387), .B(n374), .Y(n182) );
  NAND2X1 U202 ( .A(n387), .B(n374), .Y(n183) );
  XOR2X1 U203 ( .A(n191), .B(n66), .Y(product[34]) );
  OAI21X1 U204 ( .A(n213), .B(n185), .C(n186), .Y(n51) );
  NAND2X1 U205 ( .A(n187), .B(n199), .Y(n185) );
  AOI21X1 U206 ( .A(n200), .B(n187), .C(n188), .Y(n186) );
  NOR2X1 U207 ( .A(n189), .B(n194), .Y(n187) );
  OAI21X1 U208 ( .A(n189), .B(n197), .C(n190), .Y(n188) );
  NAND2X1 U209 ( .A(n190), .B(n286), .Y(n66) );
  NOR2X1 U211 ( .A(n401), .B(n388), .Y(n189) );
  NAND2X1 U212 ( .A(n401), .B(n388), .Y(n190) );
  XOR2X1 U213 ( .A(n198), .B(n67), .Y(product[33]) );
  AOI21X1 U214 ( .A(n212), .B(n192), .C(n193), .Y(n191) );
  NOR2X1 U215 ( .A(n194), .B(n201), .Y(n192) );
  OAI21X1 U216 ( .A(n202), .B(n194), .C(n197), .Y(n193) );
  NAND2X1 U219 ( .A(n197), .B(n287), .Y(n67) );
  NOR2X1 U221 ( .A(n415), .B(n402), .Y(n194) );
  NAND2X1 U222 ( .A(n415), .B(n402), .Y(n197) );
  XOR2X1 U223 ( .A(n207), .B(n68), .Y(product[32]) );
  AOI21X1 U224 ( .A(n1005), .B(n212), .C(n200), .Y(n198) );
  NOR2X1 U229 ( .A(n210), .B(n1002), .Y(n199) );
  OAI21X1 U230 ( .A(n205), .B(n211), .C(n206), .Y(n200) );
  NAND2X1 U231 ( .A(n206), .B(n288), .Y(n68) );
  NOR2X1 U233 ( .A(n429), .B(n416), .Y(n205) );
  NAND2X1 U234 ( .A(n429), .B(n416), .Y(n206) );
  XNOR2X1 U235 ( .A(n212), .B(n69), .Y(product[31]) );
  AOI21X1 U236 ( .A(n289), .B(n212), .C(n209), .Y(n207) );
  NAND2X1 U239 ( .A(n211), .B(n289), .Y(n69) );
  NOR2X1 U241 ( .A(n443), .B(n430), .Y(n210) );
  NAND2X1 U242 ( .A(n443), .B(n430), .Y(n211) );
  XNOR2X1 U243 ( .A(n218), .B(n70), .Y(product[30]) );
  AOI21X1 U245 ( .A(n222), .B(n214), .C(n215), .Y(n213) );
  NOR2X1 U246 ( .A(n219), .B(n216), .Y(n214) );
  OAI21X1 U247 ( .A(n216), .B(n220), .C(n217), .Y(n215) );
  NAND2X1 U248 ( .A(n217), .B(n290), .Y(n70) );
  NOR2X1 U250 ( .A(n457), .B(n444), .Y(n216) );
  NAND2X1 U251 ( .A(n457), .B(n444), .Y(n217) );
  OAI21X1 U252 ( .A(n221), .B(n219), .C(n220), .Y(n218) );
  NOR2X1 U253 ( .A(n469), .B(n458), .Y(n219) );
  NAND2X1 U254 ( .A(n469), .B(n458), .Y(n220) );
  OAI21X1 U256 ( .A(n223), .B(n233), .C(n224), .Y(n222) );
  NAND2X1 U257 ( .A(n1077), .B(n1032), .Y(n223) );
  AOI21X1 U258 ( .A(n1076), .B(n1032), .C(n1078), .Y(n224) );
  AOI21X1 U267 ( .A(n240), .B(n234), .C(n235), .Y(n233) );
  NOR2X1 U268 ( .A(n238), .B(n236), .Y(n234) );
  OAI21X1 U269 ( .A(n236), .B(n239), .C(n237), .Y(n235) );
  NOR2X1 U270 ( .A(n501), .B(n492), .Y(n236) );
  NAND2X1 U271 ( .A(n501), .B(n492), .Y(n237) );
  NOR2X1 U272 ( .A(n509), .B(n502), .Y(n238) );
  NAND2X1 U273 ( .A(n509), .B(n502), .Y(n239) );
  OAI21X1 U274 ( .A(n243), .B(n241), .C(n242), .Y(n240) );
  NOR2X1 U275 ( .A(n517), .B(n510), .Y(n241) );
  NAND2X1 U276 ( .A(n517), .B(n510), .Y(n242) );
  AOI21X1 U277 ( .A(n1075), .B(n248), .C(n1079), .Y(n243) );
  OAI21X1 U282 ( .A(n251), .B(n249), .C(n250), .Y(n248) );
  NOR2X1 U283 ( .A(n529), .B(n524), .Y(n249) );
  NAND2X1 U284 ( .A(n529), .B(n524), .Y(n250) );
  AOI21X1 U285 ( .A(n256), .B(n1086), .C(n1088), .Y(n251) );
  OAI21X1 U290 ( .A(n257), .B(n259), .C(n258), .Y(n256) );
  NOR2X1 U291 ( .A(n537), .B(n534), .Y(n257) );
  NAND2X1 U292 ( .A(n537), .B(n534), .Y(n258) );
  AOI21X1 U293 ( .A(n264), .B(n1087), .C(n1089), .Y(n259) );
  OAI21X1 U298 ( .A(n265), .B(n267), .C(n266), .Y(n264) );
  NOR2X1 U299 ( .A(n707), .B(n540), .Y(n265) );
  NAND2X1 U300 ( .A(n707), .B(n540), .Y(n266) );
  AOI21X1 U301 ( .A(n1091), .B(n1071), .C(n1072), .Y(n267) );
  XOR2X1 U308 ( .A(n295), .B(n291), .Y(n292) );
  FAX1 U310 ( .A(n296), .B(n584), .C(n299), .YC(n293), .YS(n294) );
  FAX1 U312 ( .A(n585), .B(n300), .C(n303), .YC(n297), .YS(n298) );
  FAX1 U313 ( .A(n305), .B(n574), .C(n601), .YC(n299), .YS(n300) );
  FAX1 U314 ( .A(n311), .B(n304), .C(n309), .YC(n301), .YS(n302) );
  FAX1 U315 ( .A(n306), .B(n602), .C(n586), .YC(n303), .YS(n304) );
  FAX1 U317 ( .A(n317), .B(n310), .C(n315), .YC(n307), .YS(n308) );
  FAX1 U318 ( .A(n587), .B(n603), .C(n312), .YC(n309), .YS(n310) );
  FAX1 U319 ( .A(n319), .B(n575), .C(n619), .YC(n311), .YS(n312) );
  FAX1 U320 ( .A(n318), .B(n316), .C(n323), .YC(n313), .YS(n314) );
  FAX1 U321 ( .A(n620), .B(n327), .C(n325), .YC(n315), .YS(n316) );
  FAX1 U322 ( .A(n320), .B(n588), .C(n604), .YC(n317), .YS(n318) );
  FAX1 U324 ( .A(n333), .B(n324), .C(n331), .YC(n321), .YS(n322) );
  FAX1 U325 ( .A(n328), .B(n335), .C(n326), .YC(n323), .YS(n324) );
  FAX1 U326 ( .A(n589), .B(n605), .C(n621), .YC(n325), .YS(n326) );
  FAX1 U327 ( .A(n337), .B(n576), .C(n637), .YC(n327), .YS(n328) );
  FAX1 U328 ( .A(n343), .B(n332), .C(n341), .YC(n329), .YS(n330) );
  FAX1 U329 ( .A(n345), .B(n336), .C(n334), .YC(n331), .YS(n332) );
  FAX1 U330 ( .A(n590), .B(n638), .C(n347), .YC(n333), .YS(n334) );
  FAX1 U331 ( .A(n338), .B(n606), .C(n622), .YC(n335), .YS(n336) );
  FAX1 U336 ( .A(n607), .B(n623), .C(n639), .YC(n345), .YS(n346) );
  FAX1 U337 ( .A(n359), .B(n577), .C(n655), .YC(n347), .YS(n348) );
  FAX1 U338 ( .A(n354), .B(n363), .C(n352), .YC(n349), .YS(n350) );
  FAX1 U339 ( .A(n356), .B(n367), .C(n365), .YC(n351), .YS(n352) );
  FAX1 U340 ( .A(n371), .B(n369), .C(n358), .YC(n353), .YS(n354) );
  FAX1 U341 ( .A(n592), .B(n608), .C(n656), .YC(n355), .YS(n356) );
  FAX1 U342 ( .A(n360), .B(n624), .C(n640), .YC(n357), .YS(n358) );
  FAX1 U344 ( .A(n366), .B(n375), .C(n364), .YC(n361), .YS(n362) );
  FAX1 U345 ( .A(n379), .B(n368), .C(n377), .YC(n363), .YS(n364) );
  FAX1 U346 ( .A(n383), .B(n381), .C(n370), .YC(n365), .YS(n366) );
  FAX1 U347 ( .A(n641), .B(n625), .C(n372), .YC(n367), .YS(n368) );
  FAX1 U348 ( .A(n609), .B(n593), .C(n657), .YC(n369), .YS(n370) );
  FAX1 U349 ( .A(n385), .B(n578), .C(n673), .YC(n371), .YS(n372) );
  FAX1 U350 ( .A(n378), .B(n389), .C(n376), .YC(n373), .YS(n374) );
  FAX1 U352 ( .A(n395), .B(n999), .C(n382), .YC(n377), .YS(n378) );
  FAX1 U353 ( .A(n626), .B(n399), .C(n397), .YC(n379), .YS(n380) );
  FAX1 U354 ( .A(n610), .B(n594), .C(n658), .YC(n381), .YS(n382) );
  FAX1 U355 ( .A(n386), .B(n642), .C(n674), .YC(n383), .YS(n384) );
  FAX1 U360 ( .A(n413), .B(n400), .C(n411), .YC(n393), .YS(n394) );
  FAX1 U361 ( .A(n659), .B(n611), .C(n643), .YC(n395), .YS(n396) );
  FAX1 U362 ( .A(n627), .B(n595), .C(n675), .YC(n397), .YS(n398) );
  FAX1 U363 ( .A(n579), .B(n709), .C(n691), .YC(n399), .YS(n400) );
  FAX1 U366 ( .A(n423), .B(n410), .C(n412), .YC(n405), .YS(n406) );
  FAX1 U368 ( .A(n612), .B(n596), .C(n692), .YC(n409), .YS(n410) );
  FAX1 U369 ( .A(n628), .B(n660), .C(n676), .YC(n411), .YS(n412) );
  FAX1 U370 ( .A(n1109), .B(n580), .C(n644), .YC(n413), .YS(n414) );
  FAX1 U371 ( .A(n420), .B(n431), .C(n418), .YC(n415), .YS(n416) );
  FAX1 U372 ( .A(n997), .B(n422), .C(n433), .YC(n417), .YS(n418) );
  FAX1 U373 ( .A(n439), .B(n424), .C(n426), .YC(n419), .YS(n420) );
  FAX1 U375 ( .A(n677), .B(n613), .C(n661), .YC(n423), .YS(n424) );
  FAX1 U376 ( .A(n629), .B(n597), .C(n693), .YC(n425), .YS(n426) );
  FAX1 U377 ( .A(n1109), .B(n581), .C(n645), .YC(n427), .YS(n428) );
  FAX1 U378 ( .A(n434), .B(n445), .C(n432), .YC(n429), .YS(n430) );
  FAX1 U379 ( .A(n449), .B(n447), .C(n436), .YC(n431), .YS(n432) );
  FAX1 U380 ( .A(n442), .B(n1100), .C(n440), .YC(n433), .YS(n434) );
  FAX1 U381 ( .A(n455), .B(n453), .C(n451), .YC(n435), .YS(n436) );
  FAX1 U382 ( .A(n678), .B(n630), .C(n710), .YC(n437), .YS(n438) );
  FAX1 U384 ( .A(n582), .B(n598), .C(n662), .YC(n441), .YS(n442) );
  FAX1 U388 ( .A(n565), .B(n456), .C(n467), .YC(n449), .YS(n450) );
  FAX1 U389 ( .A(n695), .B(n647), .C(n711), .YC(n451), .YS(n452) );
  HAX1 U391 ( .A(n615), .B(n631), .YC(n455), .YS(n456) );
  FAX1 U392 ( .A(n462), .B(n471), .C(n460), .YC(n457), .YS(n458) );
  FAX1 U394 ( .A(n477), .B(n475), .C(n466), .YC(n461), .YS(n462) );
  FAX1 U395 ( .A(n696), .B(n648), .C(n479), .YC(n463), .YS(n464) );
  FAX1 U397 ( .A(n600), .B(n632), .C(n680), .YC(n467), .YS(n468) );
  FAX1 U398 ( .A(n474), .B(n483), .C(n472), .YC(n469), .YS(n470) );
  FAX1 U401 ( .A(n665), .B(n649), .C(n566), .YC(n475), .YS(n476) );
  FAX1 U402 ( .A(n633), .B(n681), .C(n617), .YC(n477), .YS(n478) );
  HAX1 U403 ( .A(n713), .B(n697), .YC(n479), .YS(n480) );
  FAX1 U404 ( .A(n486), .B(n493), .C(n484), .YC(n481), .YS(n482) );
  FAX1 U405 ( .A(n490), .B(n488), .C(n495), .YC(n483), .YS(n484) );
  FAX1 U406 ( .A(n682), .B(n499), .C(n497), .YC(n485), .YS(n486) );
  FAX1 U407 ( .A(n698), .B(n634), .C(n666), .YC(n487), .YS(n488) );
  FAX1 U408 ( .A(n618), .B(n650), .C(n714), .YC(n489), .YS(n490) );
  FAX1 U409 ( .A(n496), .B(n503), .C(n494), .YC(n491), .YS(n492) );
  FAX1 U410 ( .A(n507), .B(n505), .C(n498), .YC(n493), .YS(n494) );
  FAX1 U411 ( .A(n699), .B(n567), .C(n500), .YC(n495), .YS(n496) );
  FAX1 U412 ( .A(n667), .B(n683), .C(n635), .YC(n497), .YS(n498) );
  HAX1 U413 ( .A(n715), .B(n651), .YC(n499), .YS(n500) );
  FAX1 U414 ( .A(n506), .B(n511), .C(n504), .YC(n501), .YS(n502) );
  FAX1 U415 ( .A(n515), .B(n513), .C(n508), .YC(n503), .YS(n504) );
  FAX1 U416 ( .A(n700), .B(n652), .C(n684), .YC(n505), .YS(n506) );
  FAX1 U417 ( .A(n636), .B(n668), .C(n716), .YC(n507), .YS(n508) );
  FAX1 U418 ( .A(n514), .B(n519), .C(n512), .YC(n509), .YS(n510) );
  FAX1 U419 ( .A(n568), .B(n516), .C(n521), .YC(n511), .YS(n512) );
  FAX1 U420 ( .A(n685), .B(n669), .C(n653), .YC(n513), .YS(n514) );
  HAX1 U421 ( .A(n717), .B(n701), .YC(n515), .YS(n516) );
  FAX1 U422 ( .A(n525), .B(n522), .C(n520), .YC(n517), .YS(n518) );
  FAX1 U423 ( .A(n702), .B(n670), .C(n527), .YC(n519), .YS(n520) );
  FAX1 U424 ( .A(n654), .B(n686), .C(n718), .YC(n521), .YS(n522) );
  FAX1 U425 ( .A(n528), .B(n531), .C(n526), .YC(n523), .YS(n524) );
  FAX1 U426 ( .A(n719), .B(n569), .C(n671), .YC(n525), .YS(n526) );
  HAX1 U427 ( .A(n703), .B(n687), .YC(n527), .YS(n528) );
  FAX1 U428 ( .A(n688), .B(n535), .C(n532), .YC(n529), .YS(n530) );
  FAX1 U429 ( .A(n672), .B(n720), .C(n704), .YC(n531), .YS(n532) );
  FAX1 U430 ( .A(n570), .B(n689), .C(n536), .YC(n533), .YS(n534) );
  HAX1 U431 ( .A(n705), .B(n721), .YC(n535), .YS(n536) );
  FAX1 U432 ( .A(n690), .B(n722), .C(n706), .YC(n537), .YS(n538) );
  HAX1 U433 ( .A(n723), .B(n571), .YC(n539), .YS(n540) );
  NOR2X1 U434 ( .A(n918), .B(n1252), .Y(n573) );
  NOR2X1 U435 ( .A(n918), .B(n1250), .Y(n295) );
  NOR2X1 U436 ( .A(n918), .B(n1248), .Y(n574) );
  NOR2X1 U437 ( .A(n918), .B(n1247), .Y(n305) );
  NOR2X1 U438 ( .A(n918), .B(n1246), .Y(n575) );
  NOR2X1 U439 ( .A(n918), .B(n1007), .Y(n319) );
  NOR2X1 U440 ( .A(n918), .B(n1242), .Y(n576) );
  NOR2X1 U441 ( .A(n918), .B(n1241), .Y(n337) );
  NOR2X1 U442 ( .A(n918), .B(n1239), .Y(n577) );
  NOR2X1 U444 ( .A(n918), .B(n1235), .Y(n578) );
  NOR2X1 U446 ( .A(n918), .B(n1231), .Y(n579) );
  NOR2X1 U447 ( .A(n918), .B(n1229), .Y(n580) );
  NOR2X1 U448 ( .A(n918), .B(n1227), .Y(n581) );
  OAI22X1 U466 ( .A(n918), .B(n1206), .C(n1129), .D(n757), .Y(n565) );
  OAI22X1 U469 ( .A(n918), .B(n1129), .C(n1206), .D(n741), .Y(n584) );
  OAI22X1 U470 ( .A(n1206), .B(n742), .C(n1129), .D(n741), .Y(n585) );
  OAI22X1 U471 ( .A(n1206), .B(n743), .C(n1129), .D(n742), .Y(n586) );
  OAI22X1 U472 ( .A(n1206), .B(n744), .C(n1129), .D(n743), .Y(n587) );
  OAI22X1 U473 ( .A(n1206), .B(n745), .C(n1129), .D(n744), .Y(n588) );
  OAI22X1 U474 ( .A(n1206), .B(n746), .C(n1129), .D(n745), .Y(n589) );
  OAI22X1 U475 ( .A(n1206), .B(n747), .C(n1129), .D(n746), .Y(n590) );
  OAI22X1 U476 ( .A(n1206), .B(n748), .C(n1129), .D(n747), .Y(n591) );
  OAI22X1 U477 ( .A(n1206), .B(n749), .C(n1129), .D(n748), .Y(n592) );
  OAI22X1 U478 ( .A(n750), .B(n1144), .C(n1129), .D(n749), .Y(n593) );
  OAI22X1 U479 ( .A(n751), .B(n1144), .C(n1129), .D(n750), .Y(n594) );
  OAI22X1 U480 ( .A(n1144), .B(n752), .C(n1129), .D(n751), .Y(n595) );
  OAI22X1 U481 ( .A(n1206), .B(n753), .C(n1129), .D(n752), .Y(n596) );
  OAI22X1 U482 ( .A(n1206), .B(n754), .C(n1129), .D(n753), .Y(n597) );
  OAI22X1 U483 ( .A(n755), .B(n1141), .C(n1129), .D(n754), .Y(n598) );
  OAI22X1 U484 ( .A(n1129), .B(n755), .C(n1206), .D(n756), .Y(n599) );
  XNOR2X1 U487 ( .A(n877), .B(n1226), .Y(n741) );
  XNOR2X1 U488 ( .A(n1251), .B(n1226), .Y(n742) );
  XNOR2X1 U489 ( .A(n1249), .B(n1226), .Y(n743) );
  XNOR2X1 U490 ( .A(n880), .B(n1226), .Y(n744) );
  XNOR2X1 U491 ( .A(n881), .B(n1226), .Y(n745) );
  XNOR2X1 U492 ( .A(n1245), .B(n1226), .Y(n746) );
  XNOR2X1 U493 ( .A(n1243), .B(n1226), .Y(n747) );
  XNOR2X1 U494 ( .A(n884), .B(n1225), .Y(n748) );
  XNOR2X1 U495 ( .A(n1240), .B(n1225), .Y(n749) );
  XNOR2X1 U496 ( .A(n1238), .B(n1225), .Y(n750) );
  XNOR2X1 U497 ( .A(n1236), .B(n1225), .Y(n751) );
  XNOR2X1 U498 ( .A(n1234), .B(n1225), .Y(n752) );
  XNOR2X1 U499 ( .A(n1232), .B(n1225), .Y(n753) );
  XNOR2X1 U500 ( .A(n1230), .B(n1225), .Y(n754) );
  XNOR2X1 U501 ( .A(n1228), .B(n1225), .Y(n755) );
  XNOR2X1 U502 ( .A(n1253), .B(n1225), .Y(n756) );
  OR2X1 U503 ( .A(n1253), .B(n918), .Y(n757) );
  OAI22X1 U505 ( .A(n1222), .B(n1203), .C(n1201), .D(n774), .Y(n566) );
  OAI22X1 U508 ( .A(n1222), .B(n1138), .C(n1142), .D(n758), .Y(n602) );
  OAI22X1 U509 ( .A(n1140), .B(n759), .C(n1138), .D(n758), .Y(n603) );
  OAI22X1 U510 ( .A(n1142), .B(n760), .C(n1201), .D(n759), .Y(n604) );
  OAI22X1 U511 ( .A(n1140), .B(n761), .C(n1138), .D(n760), .Y(n605) );
  OAI22X1 U512 ( .A(n1203), .B(n762), .C(n1201), .D(n761), .Y(n606) );
  OAI22X1 U513 ( .A(n1140), .B(n763), .C(n1138), .D(n762), .Y(n607) );
  OAI22X1 U514 ( .A(n1140), .B(n764), .C(n1201), .D(n763), .Y(n608) );
  OAI22X1 U515 ( .A(n1203), .B(n765), .C(n1137), .D(n764), .Y(n609) );
  OAI22X1 U516 ( .A(n1203), .B(n766), .C(n1201), .D(n765), .Y(n610) );
  OAI22X1 U517 ( .A(n1203), .B(n767), .C(n1137), .D(n766), .Y(n611) );
  OAI22X1 U518 ( .A(n1203), .B(n768), .C(n1201), .D(n767), .Y(n612) );
  OAI22X1 U519 ( .A(n1203), .B(n769), .C(n1138), .D(n768), .Y(n613) );
  OAI22X1 U520 ( .A(n1140), .B(n770), .C(n1201), .D(n769), .Y(n614) );
  OAI22X1 U521 ( .A(n1203), .B(n771), .C(n1138), .D(n770), .Y(n615) );
  OAI22X1 U522 ( .A(n1203), .B(n772), .C(n1201), .D(n771), .Y(n616) );
  OAI22X1 U523 ( .A(n1138), .B(n772), .C(n1140), .D(n773), .Y(n617) );
  AND2X1 U524 ( .A(n1254), .B(n1132), .Y(n618) );
  XNOR2X1 U526 ( .A(n877), .B(n1223), .Y(n758) );
  XNOR2X1 U527 ( .A(n1251), .B(n1223), .Y(n759) );
  XNOR2X1 U528 ( .A(n1249), .B(n1223), .Y(n760) );
  XNOR2X1 U529 ( .A(n880), .B(n1223), .Y(n761) );
  XNOR2X1 U530 ( .A(n881), .B(n1223), .Y(n762) );
  XNOR2X1 U531 ( .A(n1245), .B(n1223), .Y(n763) );
  XNOR2X1 U532 ( .A(n1243), .B(n1223), .Y(n764) );
  XNOR2X1 U533 ( .A(n884), .B(n1223), .Y(n765) );
  XNOR2X1 U534 ( .A(n1240), .B(n1223), .Y(n766) );
  XNOR2X1 U535 ( .A(n1238), .B(n1223), .Y(n767) );
  XNOR2X1 U536 ( .A(n1236), .B(n1223), .Y(n768) );
  XNOR2X1 U537 ( .A(n1234), .B(n1223), .Y(n769) );
  XNOR2X1 U538 ( .A(n1232), .B(n1223), .Y(n770) );
  XNOR2X1 U539 ( .A(n1230), .B(n1223), .Y(n771) );
  XNOR2X1 U540 ( .A(n1228), .B(n1223), .Y(n772) );
  XNOR2X1 U541 ( .A(n1253), .B(n1223), .Y(n773) );
  OR2X1 U542 ( .A(n1253), .B(n1222), .Y(n774) );
  OAI22X1 U544 ( .A(n920), .B(n1199), .C(n1197), .D(n791), .Y(n567) );
  OAI22X1 U547 ( .A(n920), .B(n1197), .C(n1199), .D(n775), .Y(n620) );
  OAI22X1 U548 ( .A(n1199), .B(n776), .C(n1197), .D(n775), .Y(n621) );
  OAI22X1 U549 ( .A(n1199), .B(n777), .C(n1197), .D(n776), .Y(n622) );
  OAI22X1 U550 ( .A(n1199), .B(n778), .C(n1197), .D(n777), .Y(n623) );
  OAI22X1 U551 ( .A(n1199), .B(n779), .C(n1197), .D(n778), .Y(n624) );
  OAI22X1 U552 ( .A(n1199), .B(n780), .C(n1197), .D(n779), .Y(n625) );
  OAI22X1 U553 ( .A(n1199), .B(n781), .C(n1197), .D(n780), .Y(n626) );
  OAI22X1 U555 ( .A(n1200), .B(n783), .C(n1197), .D(n782), .Y(n628) );
  OAI22X1 U556 ( .A(n1199), .B(n784), .C(n1197), .D(n783), .Y(n629) );
  OAI22X1 U557 ( .A(n785), .B(n1200), .C(n1197), .D(n784), .Y(n630) );
  OAI22X1 U558 ( .A(n1200), .B(n786), .C(n1197), .D(n785), .Y(n631) );
  OAI22X1 U559 ( .A(n1200), .B(n787), .C(n1197), .D(n786), .Y(n632) );
  OAI22X1 U560 ( .A(n1199), .B(n788), .C(n1197), .D(n787), .Y(n633) );
  OAI22X1 U561 ( .A(n1199), .B(n789), .C(n1197), .D(n788), .Y(n634) );
  OAI22X1 U562 ( .A(n1197), .B(n789), .C(n1199), .D(n790), .Y(n635) );
  AND2X1 U563 ( .A(n1254), .B(n549), .Y(n636) );
  XNOR2X1 U565 ( .A(n877), .B(n1127), .Y(n775) );
  XNOR2X1 U566 ( .A(n1251), .B(n1128), .Y(n776) );
  XNOR2X1 U567 ( .A(n1249), .B(n1127), .Y(n777) );
  XNOR2X1 U568 ( .A(n880), .B(n1128), .Y(n778) );
  XNOR2X1 U569 ( .A(n881), .B(n1127), .Y(n779) );
  XNOR2X1 U570 ( .A(n1245), .B(n1128), .Y(n780) );
  XNOR2X1 U571 ( .A(n1243), .B(n1126), .Y(n781) );
  XNOR2X1 U572 ( .A(n884), .B(n1126), .Y(n782) );
  XNOR2X1 U573 ( .A(n1240), .B(n1127), .Y(n783) );
  XNOR2X1 U574 ( .A(n1238), .B(n1221), .Y(n784) );
  XNOR2X1 U575 ( .A(n1236), .B(n1221), .Y(n785) );
  XNOR2X1 U576 ( .A(n1234), .B(n1221), .Y(n786) );
  XNOR2X1 U577 ( .A(n1232), .B(n1221), .Y(n787) );
  XNOR2X1 U578 ( .A(n1230), .B(n1221), .Y(n788) );
  XNOR2X1 U579 ( .A(n1228), .B(n1221), .Y(n789) );
  XNOR2X1 U580 ( .A(n1253), .B(n1221), .Y(n790) );
  OAI22X1 U583 ( .A(n921), .B(n1195), .C(n1194), .D(n808), .Y(n568) );
  OAI22X1 U586 ( .A(n921), .B(n1066), .C(n1073), .D(n792), .Y(n638) );
  OAI22X1 U587 ( .A(n1073), .B(n793), .C(n1066), .D(n792), .Y(n639) );
  OAI22X1 U588 ( .A(n1195), .B(n794), .C(n1194), .D(n793), .Y(n640) );
  OAI22X1 U589 ( .A(n1073), .B(n795), .C(n1066), .D(n794), .Y(n641) );
  OAI22X1 U590 ( .A(n1195), .B(n796), .C(n1194), .D(n795), .Y(n642) );
  OAI22X1 U591 ( .A(n1094), .B(n797), .C(n1194), .D(n796), .Y(n643) );
  OAI22X1 U592 ( .A(n1195), .B(n798), .C(n1194), .D(n797), .Y(n644) );
  OAI22X1 U593 ( .A(n1195), .B(n799), .C(n1066), .D(n798), .Y(n645) );
  OAI22X1 U594 ( .A(n1094), .B(n800), .C(n1194), .D(n799), .Y(n646) );
  OAI22X1 U595 ( .A(n1195), .B(n801), .C(n1194), .D(n800), .Y(n647) );
  OAI22X1 U596 ( .A(n1073), .B(n802), .C(n1194), .D(n801), .Y(n648) );
  OAI22X1 U597 ( .A(n1195), .B(n803), .C(n1194), .D(n802), .Y(n649) );
  OAI22X1 U598 ( .A(n1094), .B(n804), .C(n1194), .D(n803), .Y(n650) );
  OAI22X1 U599 ( .A(n1195), .B(n805), .C(n1194), .D(n804), .Y(n651) );
  OAI22X1 U600 ( .A(n1073), .B(n806), .C(n1194), .D(n805), .Y(n652) );
  OAI22X1 U601 ( .A(n1066), .B(n806), .C(n1073), .D(n807), .Y(n653) );
  AND2X1 U602 ( .A(n1254), .B(n1095), .Y(n654) );
  XNOR2X1 U604 ( .A(n877), .B(n1219), .Y(n792) );
  XNOR2X1 U605 ( .A(n1251), .B(n1219), .Y(n793) );
  XNOR2X1 U606 ( .A(n1249), .B(n1219), .Y(n794) );
  XNOR2X1 U607 ( .A(n880), .B(n1219), .Y(n795) );
  XNOR2X1 U608 ( .A(n881), .B(n1219), .Y(n796) );
  XNOR2X1 U609 ( .A(n1245), .B(n1219), .Y(n797) );
  XNOR2X1 U610 ( .A(n1243), .B(n1219), .Y(n798) );
  XNOR2X1 U612 ( .A(n1240), .B(n1219), .Y(n800) );
  XNOR2X1 U613 ( .A(n1238), .B(n1219), .Y(n801) );
  XNOR2X1 U614 ( .A(n1236), .B(n1146), .Y(n802) );
  XNOR2X1 U615 ( .A(n1234), .B(n1219), .Y(n803) );
  XNOR2X1 U616 ( .A(n1232), .B(n1219), .Y(n804) );
  XNOR2X1 U617 ( .A(n1230), .B(n1146), .Y(n805) );
  XNOR2X1 U618 ( .A(n1228), .B(n1146), .Y(n806) );
  XNOR2X1 U619 ( .A(n1253), .B(n1146), .Y(n807) );
  OR2X1 U620 ( .A(n1070), .B(n921), .Y(n808) );
  OAI22X1 U622 ( .A(n922), .B(n1058), .C(n1189), .D(n825), .Y(n569) );
  OAI22X1 U625 ( .A(n922), .B(n1190), .C(n1193), .D(n809), .Y(n656) );
  OAI22X1 U626 ( .A(n1193), .B(n810), .C(n1190), .D(n809), .Y(n657) );
  OAI22X1 U627 ( .A(n1193), .B(n811), .C(n1189), .D(n810), .Y(n658) );
  OAI22X1 U628 ( .A(n1192), .B(n812), .C(n1190), .D(n811), .Y(n659) );
  OAI22X1 U629 ( .A(n1193), .B(n813), .C(n1189), .D(n812), .Y(n660) );
  OAI22X1 U630 ( .A(n1193), .B(n814), .C(n1190), .D(n813), .Y(n661) );
  OAI22X1 U631 ( .A(n1192), .B(n815), .C(n1189), .D(n814), .Y(n662) );
  OAI22X1 U632 ( .A(n1192), .B(n816), .C(n1190), .D(n815), .Y(n663) );
  OAI22X1 U633 ( .A(n1193), .B(n817), .C(n1189), .D(n816), .Y(n664) );
  OAI22X1 U634 ( .A(n1058), .B(n818), .C(n1190), .D(n817), .Y(n665) );
  OAI22X1 U635 ( .A(n1193), .B(n819), .C(n1189), .D(n818), .Y(n666) );
  OAI22X1 U636 ( .A(n1058), .B(n820), .C(n1190), .D(n819), .Y(n667) );
  OAI22X1 U637 ( .A(n1193), .B(n821), .C(n1189), .D(n820), .Y(n668) );
  OAI22X1 U638 ( .A(n1058), .B(n822), .C(n1190), .D(n821), .Y(n669) );
  OAI22X1 U639 ( .A(n1193), .B(n823), .C(n1189), .D(n822), .Y(n670) );
  OAI22X1 U640 ( .A(n1190), .B(n823), .C(n1193), .D(n824), .Y(n671) );
  AND2X1 U641 ( .A(n1254), .B(n555), .Y(n672) );
  XNOR2X1 U643 ( .A(n877), .B(n1216), .Y(n809) );
  XNOR2X1 U644 ( .A(n1251), .B(n1217), .Y(n810) );
  XNOR2X1 U645 ( .A(n1249), .B(n1216), .Y(n811) );
  XNOR2X1 U646 ( .A(n880), .B(n1217), .Y(n812) );
  XNOR2X1 U647 ( .A(n881), .B(n1216), .Y(n813) );
  XNOR2X1 U648 ( .A(n1245), .B(n1217), .Y(n814) );
  XNOR2X1 U649 ( .A(n1243), .B(n1216), .Y(n815) );
  XNOR2X1 U650 ( .A(n884), .B(n1216), .Y(n816) );
  XNOR2X1 U651 ( .A(n1240), .B(n1216), .Y(n817) );
  XNOR2X1 U652 ( .A(n1238), .B(n1217), .Y(n818) );
  XNOR2X1 U653 ( .A(n1236), .B(n1216), .Y(n819) );
  XNOR2X1 U654 ( .A(n1234), .B(n1216), .Y(n820) );
  XNOR2X1 U655 ( .A(n1232), .B(n1216), .Y(n821) );
  XNOR2X1 U656 ( .A(n1230), .B(n1217), .Y(n822) );
  XNOR2X1 U657 ( .A(n1228), .B(n1216), .Y(n823) );
  XNOR2X1 U658 ( .A(n1253), .B(n1216), .Y(n824) );
  OR2X1 U659 ( .A(n1253), .B(n922), .Y(n825) );
  OAI22X1 U661 ( .A(n923), .B(n1188), .C(n1164), .D(n842), .Y(n570) );
  OAI22X1 U664 ( .A(n923), .B(n1164), .C(n826), .D(n1143), .Y(n674) );
  OAI22X1 U665 ( .A(n827), .B(n1029), .C(n1164), .D(n826), .Y(n675) );
  OAI22X1 U666 ( .A(n1188), .B(n828), .C(n1164), .D(n827), .Y(n676) );
  OAI22X1 U667 ( .A(n1029), .B(n829), .C(n1164), .D(n828), .Y(n677) );
  OAI22X1 U669 ( .A(n1029), .B(n831), .C(n1164), .D(n830), .Y(n679) );
  OAI22X1 U670 ( .A(n1188), .B(n832), .C(n1164), .D(n831), .Y(n680) );
  OAI22X1 U671 ( .A(n1188), .B(n833), .C(n1164), .D(n832), .Y(n681) );
  OAI22X1 U672 ( .A(n1188), .B(n834), .C(n1164), .D(n833), .Y(n682) );
  OAI22X1 U673 ( .A(n1188), .B(n835), .C(n1164), .D(n834), .Y(n683) );
  OAI22X1 U674 ( .A(n1188), .B(n836), .C(n1164), .D(n835), .Y(n684) );
  OAI22X1 U675 ( .A(n1188), .B(n837), .C(n1164), .D(n836), .Y(n685) );
  OAI22X1 U676 ( .A(n1188), .B(n838), .C(n1164), .D(n837), .Y(n686) );
  OAI22X1 U677 ( .A(n1188), .B(n839), .C(n1164), .D(n838), .Y(n687) );
  OAI22X1 U678 ( .A(n1188), .B(n840), .C(n1164), .D(n839), .Y(n688) );
  OAI22X1 U679 ( .A(n1164), .B(n840), .C(n1188), .D(n841), .Y(n689) );
  AND2X1 U680 ( .A(n1254), .B(n1124), .Y(n690) );
  XNOR2X1 U682 ( .A(n877), .B(n1099), .Y(n826) );
  XNOR2X1 U683 ( .A(n1251), .B(n1099), .Y(n827) );
  XNOR2X1 U684 ( .A(n1249), .B(n1099), .Y(n828) );
  XNOR2X1 U685 ( .A(n880), .B(n1099), .Y(n829) );
  XNOR2X1 U687 ( .A(n1245), .B(n1099), .Y(n831) );
  XNOR2X1 U688 ( .A(n1243), .B(n1099), .Y(n832) );
  XNOR2X1 U689 ( .A(n884), .B(n1099), .Y(n833) );
  XNOR2X1 U690 ( .A(n1240), .B(n1099), .Y(n834) );
  XNOR2X1 U691 ( .A(n1238), .B(n1099), .Y(n835) );
  XNOR2X1 U692 ( .A(n1236), .B(n1099), .Y(n836) );
  XNOR2X1 U693 ( .A(n1234), .B(n1099), .Y(n837) );
  XNOR2X1 U694 ( .A(n1232), .B(n1099), .Y(n838) );
  XNOR2X1 U695 ( .A(n1068), .B(n1099), .Y(n839) );
  XNOR2X1 U696 ( .A(n1228), .B(n1099), .Y(n840) );
  XNOR2X1 U697 ( .A(n1070), .B(n1099), .Y(n841) );
  OR2X1 U698 ( .A(n1070), .B(n923), .Y(n842) );
  OAI22X1 U700 ( .A(n1102), .B(n1185), .C(n1165), .D(n859), .Y(n571) );
  OAI22X1 U703 ( .A(n1102), .B(n1165), .C(n1186), .D(n843), .Y(n692) );
  OAI22X1 U704 ( .A(n1185), .B(n844), .C(n1165), .D(n843), .Y(n693) );
  OAI22X1 U705 ( .A(n1186), .B(n845), .C(n1165), .D(n844), .Y(n694) );
  OAI22X1 U707 ( .A(n1185), .B(n847), .C(n1165), .D(n846), .Y(n696) );
  OAI22X1 U708 ( .A(n1185), .B(n848), .C(n1165), .D(n847), .Y(n697) );
  OAI22X1 U709 ( .A(n1185), .B(n849), .C(n1165), .D(n848), .Y(n698) );
  OAI22X1 U710 ( .A(n1185), .B(n850), .C(n1165), .D(n849), .Y(n699) );
  OAI22X1 U711 ( .A(n1185), .B(n851), .C(n1165), .D(n850), .Y(n700) );
  OAI22X1 U712 ( .A(n1185), .B(n852), .C(n1165), .D(n851), .Y(n701) );
  OAI22X1 U713 ( .A(n1130), .B(n853), .C(n1165), .D(n852), .Y(n702) );
  OAI22X1 U714 ( .A(n1185), .B(n854), .C(n1165), .D(n853), .Y(n703) );
  OAI22X1 U715 ( .A(n1185), .B(n855), .C(n1165), .D(n854), .Y(n704) );
  OAI22X1 U716 ( .A(n1185), .B(n856), .C(n1165), .D(n855), .Y(n705) );
  OAI22X1 U717 ( .A(n1130), .B(n857), .C(n1165), .D(n856), .Y(n706) );
  OAI22X1 U718 ( .A(n1165), .B(n857), .C(n1130), .D(n858), .Y(n707) );
  AND2X1 U719 ( .A(n1254), .B(n561), .Y(n708) );
  XNOR2X1 U721 ( .A(n877), .B(n1213), .Y(n843) );
  XNOR2X1 U722 ( .A(n1251), .B(n1213), .Y(n844) );
  XNOR2X1 U723 ( .A(n1249), .B(n1213), .Y(n845) );
  XNOR2X1 U724 ( .A(n880), .B(n1213), .Y(n846) );
  XNOR2X1 U725 ( .A(n881), .B(n1213), .Y(n847) );
  XNOR2X1 U726 ( .A(n1245), .B(n1213), .Y(n848) );
  XNOR2X1 U727 ( .A(n1243), .B(n1213), .Y(n849) );
  XNOR2X1 U728 ( .A(n884), .B(n1213), .Y(n850) );
  XNOR2X1 U729 ( .A(n1240), .B(n1213), .Y(n851) );
  XNOR2X1 U730 ( .A(n1238), .B(n1105), .Y(n852) );
  XNOR2X1 U731 ( .A(n1236), .B(n1104), .Y(n853) );
  XNOR2X1 U732 ( .A(n1234), .B(n1213), .Y(n854) );
  XNOR2X1 U733 ( .A(n1232), .B(n1104), .Y(n855) );
  XNOR2X1 U734 ( .A(n1068), .B(n1104), .Y(n856) );
  XNOR2X1 U735 ( .A(n1228), .B(n1213), .Y(n857) );
  XNOR2X1 U736 ( .A(n1070), .B(n1104), .Y(n858) );
  OR2X1 U737 ( .A(n1070), .B(n1102), .Y(n859) );
  OAI22X1 U739 ( .A(n925), .B(n1167), .C(n917), .D(n876), .Y(n572) );
  OAI22X1 U742 ( .A(n917), .B(n925), .C(n1065), .D(n860), .Y(n710) );
  OAI22X1 U743 ( .A(n1167), .B(n861), .C(n917), .D(n860), .Y(n711) );
  OAI22X1 U744 ( .A(n1167), .B(n862), .C(n917), .D(n861), .Y(n712) );
  OAI22X1 U745 ( .A(n1167), .B(n863), .C(n917), .D(n862), .Y(n713) );
  OAI22X1 U746 ( .A(n1065), .B(n864), .C(n917), .D(n863), .Y(n714) );
  OAI22X1 U747 ( .A(n1167), .B(n865), .C(n917), .D(n864), .Y(n715) );
  OAI22X1 U748 ( .A(n1065), .B(n866), .C(n917), .D(n865), .Y(n716) );
  OAI22X1 U749 ( .A(n1065), .B(n867), .C(n917), .D(n866), .Y(n717) );
  OAI22X1 U750 ( .A(n1167), .B(n868), .C(n917), .D(n867), .Y(n718) );
  OAI22X1 U751 ( .A(n1167), .B(n869), .C(n917), .D(n868), .Y(n719) );
  OAI22X1 U752 ( .A(n1167), .B(n870), .C(n917), .D(n869), .Y(n720) );
  OAI22X1 U753 ( .A(n1065), .B(n871), .C(n917), .D(n870), .Y(n721) );
  OAI22X1 U754 ( .A(n1065), .B(n872), .C(n917), .D(n871), .Y(n722) );
  OAI22X1 U755 ( .A(n1167), .B(n873), .C(n917), .D(n872), .Y(n723) );
  OAI22X1 U756 ( .A(n1065), .B(n874), .C(n917), .D(n873), .Y(n724) );
  OAI22X1 U757 ( .A(n917), .B(n874), .C(n1065), .D(n875), .Y(n725) );
  XNOR2X1 U758 ( .A(n877), .B(n1211), .Y(n860) );
  XNOR2X1 U759 ( .A(n1251), .B(n1211), .Y(n861) );
  XNOR2X1 U760 ( .A(n1249), .B(n995), .Y(n862) );
  XNOR2X1 U761 ( .A(n880), .B(n995), .Y(n863) );
  XNOR2X1 U762 ( .A(n881), .B(n1211), .Y(n864) );
  XNOR2X1 U763 ( .A(n1245), .B(n1211), .Y(n865) );
  XNOR2X1 U764 ( .A(n1243), .B(n995), .Y(n866) );
  XNOR2X1 U765 ( .A(n884), .B(n995), .Y(n867) );
  XNOR2X1 U766 ( .A(n1240), .B(n995), .Y(n868) );
  XNOR2X1 U767 ( .A(n1238), .B(n995), .Y(n869) );
  XNOR2X1 U768 ( .A(n1236), .B(n995), .Y(n870) );
  XNOR2X1 U769 ( .A(n1234), .B(n995), .Y(n871) );
  XNOR2X1 U770 ( .A(n1232), .B(n995), .Y(n872) );
  XNOR2X1 U771 ( .A(n1068), .B(n995), .Y(n873) );
  XNOR2X1 U772 ( .A(n1228), .B(n995), .Y(n874) );
  XNOR2X1 U773 ( .A(n1070), .B(n995), .Y(n875) );
  OR2X1 U774 ( .A(n1070), .B(n925), .Y(n876) );
  NAND2X1 U801 ( .A(n46), .B(n893), .Y(n48) );
  XOR2X1 U802 ( .A(n1226), .B(b[14]), .Y(n893) );
  XNOR2X1 U803 ( .A(n1048), .B(b[14]), .Y(n46) );
  NAND2X1 U807 ( .A(n34), .B(n895), .Y(n36) );
  XOR2X1 U808 ( .A(n1221), .B(b[10]), .Y(n895) );
  XNOR2X1 U809 ( .A(n25), .B(b[10]), .Y(n34) );
  XOR2X1 U811 ( .A(n25), .B(b[8]), .Y(n896) );
  NAND2X1 U819 ( .A(n899), .B(n1183), .Y(n12) );
  XOR2X1 U820 ( .A(n1105), .B(b[2]), .Y(n899) );
  NAND2X1 U822 ( .A(n917), .B(n900), .Y(n6) );
  XOR2X1 U823 ( .A(n1211), .B(b[0]), .Y(n900) );
  BUFX4 U828 ( .A(n52), .Y(n1108) );
  BUFX4 U829 ( .A(n1210), .Y(n995) );
  INVX1 U830 ( .A(n1209), .Y(n1210) );
  BUFX4 U831 ( .A(n428), .Y(n1098) );
  INVX8 U832 ( .A(n1184), .Y(n1185) );
  INVX4 U833 ( .A(n12), .Y(n1184) );
  INVX8 U834 ( .A(n1242), .Y(n1243) );
  INVX8 U835 ( .A(n884), .Y(n1241) );
  BUFX4 U836 ( .A(n438), .Y(n1100) );
  BUFX4 U837 ( .A(n563), .Y(n1109) );
  BUFX4 U838 ( .A(n441), .Y(n996) );
  INVX8 U839 ( .A(n1227), .Y(n1228) );
  INVX2 U840 ( .A(n891), .Y(n1227) );
  INVX4 U841 ( .A(n1255), .Y(n1253) );
  OR2X2 U842 ( .A(n1253), .B(n920), .Y(n791) );
  INVX8 U843 ( .A(n1204), .Y(n1129) );
  BUFX4 U844 ( .A(n435), .Y(n997) );
  INVX4 U845 ( .A(n1250), .Y(n1251) );
  BUFX4 U846 ( .A(n1067), .Y(n1066) );
  BUFX4 U847 ( .A(n419), .Y(n998) );
  INVX4 U848 ( .A(n13), .Y(n1214) );
  BUFX4 U849 ( .A(n384), .Y(n999) );
  INVX2 U850 ( .A(n36), .Y(n1198) );
  INVX4 U851 ( .A(n1207), .Y(n1208) );
  INVX2 U852 ( .A(n1), .Y(n1209) );
  INVX4 U853 ( .A(n1215), .Y(n1216) );
  INVX4 U854 ( .A(n1231), .Y(n1232) );
  INVX4 U855 ( .A(n1229), .Y(n1230) );
  INVX2 U856 ( .A(n1198), .Y(n1200) );
  INVX2 U857 ( .A(n885), .Y(n1239) );
  INVX2 U858 ( .A(n31), .Y(n1220) );
  INVX2 U859 ( .A(n1133), .Y(n695) );
  INVX4 U860 ( .A(n1147), .Y(n1188) );
  INVX2 U861 ( .A(n1168), .Y(n627) );
  INVX2 U862 ( .A(n385), .Y(n386) );
  INVX2 U863 ( .A(n881), .Y(n1246) );
  BUFX2 U864 ( .A(n1202), .Y(n1138) );
  INVX2 U865 ( .A(n407), .Y(n1044) );
  BUFX2 U866 ( .A(n37), .Y(n1048) );
  INVX2 U867 ( .A(n473), .Y(n1000) );
  INVX2 U868 ( .A(n541), .Y(n1224) );
  INVX2 U869 ( .A(n342), .Y(n1012) );
  INVX2 U870 ( .A(n48), .Y(n1205) );
  INVX2 U871 ( .A(n51), .Y(n1207) );
  XOR2X1 U872 ( .A(n1001), .B(n1000), .Y(n460) );
  XNOR2X1 U873 ( .A(n468), .B(n464), .Y(n1001) );
  NOR2X1 U874 ( .A(n429), .B(n416), .Y(n1002) );
  BUFX2 U875 ( .A(n1036), .Y(n1003) );
  INVX2 U876 ( .A(n174), .Y(n1004) );
  INVX4 U877 ( .A(n890), .Y(n1229) );
  INVX2 U878 ( .A(n201), .Y(n1005) );
  BUFX2 U879 ( .A(n454), .Y(n1006) );
  INVX1 U880 ( .A(n1245), .Y(n1007) );
  XNOR2X1 U881 ( .A(n1220), .B(b[12]), .Y(n1131) );
  XOR2X1 U882 ( .A(n694), .B(n646), .Y(n1008) );
  XOR2X1 U883 ( .A(n614), .B(n1008), .Y(n440) );
  NAND2X1 U884 ( .A(n614), .B(n694), .Y(n1009) );
  NAND2X1 U885 ( .A(n614), .B(n646), .Y(n1010) );
  NAND2X1 U886 ( .A(n694), .B(n646), .Y(n1011) );
  NAND3X1 U887 ( .A(n1010), .B(n1009), .C(n1011), .Y(n439) );
  XOR2X1 U888 ( .A(n1013), .B(n1012), .Y(n340) );
  XNOR2X1 U889 ( .A(n353), .B(n351), .Y(n1013) );
  INVX4 U890 ( .A(n1205), .Y(n1206) );
  BUFX2 U891 ( .A(n1221), .Y(n1127) );
  INVX8 U892 ( .A(n1235), .Y(n1236) );
  INVX4 U893 ( .A(n1095), .Y(n1194) );
  XOR2X1 U894 ( .A(n1098), .B(n996), .Y(n1014) );
  XOR2X1 U895 ( .A(n437), .B(n1014), .Y(n422) );
  NAND2X1 U896 ( .A(n437), .B(n1098), .Y(n1015) );
  NAND2X1 U897 ( .A(n437), .B(n996), .Y(n1016) );
  NAND2X1 U898 ( .A(n1098), .B(n996), .Y(n1017) );
  NAND3X1 U899 ( .A(n1016), .B(n1015), .C(n1017), .Y(n421) );
  XOR2X1 U900 ( .A(n480), .B(n489), .Y(n1018) );
  XOR2X1 U901 ( .A(n1018), .B(n487), .Y(n474) );
  NAND2X1 U902 ( .A(n480), .B(n489), .Y(n1019) );
  NAND2X1 U903 ( .A(n480), .B(n487), .Y(n1020) );
  NAND2X1 U904 ( .A(n489), .B(n487), .Y(n1021) );
  NAND3X1 U905 ( .A(n1019), .B(n1020), .C(n1021), .Y(n473) );
  NAND2X1 U906 ( .A(n468), .B(n464), .Y(n1022) );
  NAND2X1 U907 ( .A(n468), .B(n473), .Y(n1023) );
  NAND2X1 U908 ( .A(n464), .B(n473), .Y(n1024) );
  NAND3X1 U909 ( .A(n1022), .B(n1023), .C(n1024), .Y(n459) );
  XOR2X1 U910 ( .A(n663), .B(n599), .Y(n1025) );
  XOR2X1 U911 ( .A(n679), .B(n1025), .Y(n454) );
  NAND2X1 U912 ( .A(n679), .B(n663), .Y(n1026) );
  NAND2X1 U913 ( .A(n679), .B(n599), .Y(n1027) );
  NAND2X1 U914 ( .A(n663), .B(n599), .Y(n1028) );
  NAND3X1 U915 ( .A(n1027), .B(n1026), .C(n1028), .Y(n453) );
  INVX8 U916 ( .A(n1220), .Y(n1221) );
  INVX1 U917 ( .A(n49), .Y(n1255) );
  INVX4 U918 ( .A(n1212), .Y(n1213) );
  INVX2 U919 ( .A(n880), .Y(n1247) );
  NAND2X1 U920 ( .A(n898), .B(n1187), .Y(n1029) );
  INVX2 U921 ( .A(n1105), .Y(n1102) );
  OR2X2 U922 ( .A(n308), .B(n313), .Y(n1030) );
  AND2X2 U923 ( .A(n169), .B(n283), .Y(n1031) );
  INVX2 U924 ( .A(n883), .Y(n1242) );
  OR2X2 U925 ( .A(n481), .B(n470), .Y(n1032) );
  INVX2 U926 ( .A(n1132), .Y(n1201) );
  INVX2 U927 ( .A(n34), .Y(n1196) );
  INVX2 U928 ( .A(n889), .Y(n1231) );
  INVX2 U929 ( .A(n887), .Y(n1235) );
  OR2X2 U930 ( .A(n292), .B(n293), .Y(n1033) );
  XOR2X1 U931 ( .A(n1246), .B(n1214), .Y(n1034) );
  INVX1 U932 ( .A(n1034), .Y(n830) );
  XNOR2X1 U933 ( .A(n179), .B(n1035), .Y(product[36]) );
  AND2X2 U934 ( .A(n178), .B(n284), .Y(n1035) );
  XOR2X1 U935 ( .A(n13), .B(b[6]), .Y(n1036) );
  XNOR2X1 U936 ( .A(n86), .B(n1037), .Y(product[45]) );
  AND2X2 U937 ( .A(n85), .B(n275), .Y(n1037) );
  INVX2 U938 ( .A(n173), .Y(n1038) );
  NOR2X1 U939 ( .A(n373), .B(n362), .Y(n1039) );
  INVX4 U940 ( .A(n1215), .Y(n1217) );
  XOR2X1 U941 ( .A(n403), .B(n392), .Y(n1040) );
  XOR2X1 U942 ( .A(n390), .B(n1040), .Y(n388) );
  NAND2X1 U943 ( .A(n390), .B(n403), .Y(n1041) );
  NAND2X1 U944 ( .A(n390), .B(n392), .Y(n1042) );
  NAND2X1 U945 ( .A(n403), .B(n392), .Y(n1043) );
  NAND3X1 U946 ( .A(n1042), .B(n1041), .C(n1043), .Y(n387) );
  XOR2X1 U947 ( .A(n1045), .B(n1044), .Y(n390) );
  XNOR2X1 U948 ( .A(n1139), .B(n394), .Y(n1045) );
  INVX1 U949 ( .A(n100), .Y(n98) );
  NAND2X1 U950 ( .A(n281), .B(n1084), .Y(n1046) );
  NAND2X1 U951 ( .A(n281), .B(n1084), .Y(n1047) );
  INVX2 U952 ( .A(n37), .Y(n1222) );
  BUFX4 U953 ( .A(n1192), .Y(n1058) );
  BUFX2 U954 ( .A(n19), .Y(n1049) );
  INVX2 U955 ( .A(n19), .Y(n1215) );
  INVX2 U956 ( .A(n1103), .Y(n1105) );
  INVX4 U957 ( .A(n1191), .Y(n1192) );
  INVX1 U958 ( .A(n1189), .Y(n555) );
  BUFX2 U959 ( .A(n417), .Y(n1101) );
  INVX4 U960 ( .A(n1196), .Y(n1197) );
  INVX2 U961 ( .A(n7), .Y(n1103) );
  INVX1 U962 ( .A(n7), .Y(n1212) );
  XOR2X1 U963 ( .A(n664), .B(n616), .Y(n1050) );
  XOR2X1 U964 ( .A(n1050), .B(n712), .Y(n466) );
  NAND2X1 U965 ( .A(n664), .B(n616), .Y(n1051) );
  NAND2X1 U966 ( .A(n664), .B(n712), .Y(n1052) );
  NAND2X1 U967 ( .A(n616), .B(n712), .Y(n1053) );
  NAND3X1 U968 ( .A(n1051), .B(n1052), .C(n1053), .Y(n465) );
  XOR2X1 U969 ( .A(n452), .B(n1006), .Y(n1054) );
  XOR2X1 U970 ( .A(n1054), .B(n465), .Y(n448) );
  NAND2X1 U971 ( .A(n452), .B(n454), .Y(n1055) );
  NAND2X1 U972 ( .A(n452), .B(n465), .Y(n1056) );
  NAND2X1 U973 ( .A(n454), .B(n465), .Y(n1057) );
  NAND3X1 U974 ( .A(n1055), .B(n1056), .C(n1057), .Y(n447) );
  XOR2X1 U975 ( .A(n1241), .B(n25), .Y(n799) );
  INVX2 U976 ( .A(n1165), .Y(n561) );
  INVX2 U977 ( .A(n1184), .Y(n1186) );
  XOR2X1 U978 ( .A(n478), .B(n476), .Y(n1059) );
  XOR2X1 U979 ( .A(n485), .B(n1059), .Y(n472) );
  NAND2X1 U980 ( .A(n485), .B(n478), .Y(n1060) );
  NAND2X1 U981 ( .A(n485), .B(n476), .Y(n1061) );
  NAND2X1 U982 ( .A(n478), .B(n476), .Y(n1062) );
  NAND3X1 U983 ( .A(n1061), .B(n1060), .C(n1062), .Y(n471) );
  XNOR2X1 U984 ( .A(n112), .B(n1063), .Y(product[43]) );
  AND2X2 U985 ( .A(n111), .B(n1085), .Y(n1063) );
  AND2X2 U986 ( .A(n1254), .B(n1226), .Y(n582) );
  BUFX4 U987 ( .A(n405), .Y(n1139) );
  INVX1 U988 ( .A(n1197), .Y(n549) );
  XNOR2X1 U989 ( .A(n170), .B(n1031), .Y(product[37]) );
  AND2X2 U990 ( .A(n1254), .B(n1204), .Y(n600) );
  BUFX2 U991 ( .A(n459), .Y(n1064) );
  INVX2 U992 ( .A(n1182), .Y(n1065) );
  XNOR2X1 U993 ( .A(n19), .B(b[8]), .Y(n1067) );
  INVX2 U994 ( .A(n1067), .Y(n1095) );
  BUFX2 U995 ( .A(n1230), .Y(n1068) );
  INVX2 U996 ( .A(n283), .Y(n1069) );
  INVX1 U997 ( .A(n1255), .Y(n1070) );
  INVX2 U998 ( .A(n1096), .Y(n1187) );
  INVX2 U999 ( .A(n918), .Y(n1093) );
  OR2X2 U1000 ( .A(n1047), .B(n80), .Y(n1074) );
  OR2X2 U1001 ( .A(n322), .B(n329), .Y(n1084) );
  OR2X2 U1002 ( .A(n302), .B(n307), .Y(n1085) );
  OR2X1 U1003 ( .A(n708), .B(n724), .Y(n1071) );
  AND2X1 U1004 ( .A(n708), .B(n724), .Y(n1072) );
  INVX4 U1005 ( .A(n1097), .Y(n1165) );
  INVX4 U1006 ( .A(n1224), .Y(n1225) );
  INVX4 U1007 ( .A(n1096), .Y(n1164) );
  INVX1 U1008 ( .A(n918), .Y(n1092) );
  NAND2X1 U1009 ( .A(n896), .B(n1066), .Y(n1073) );
  OR2X1 U1010 ( .A(n523), .B(n518), .Y(n1075) );
  AND2X2 U1011 ( .A(n491), .B(n482), .Y(n1076) );
  OR2X1 U1012 ( .A(n491), .B(n482), .Y(n1077) );
  AND2X2 U1013 ( .A(n481), .B(n470), .Y(n1078) );
  AND2X2 U1014 ( .A(n523), .B(n518), .Y(n1079) );
  XNOR2X1 U1015 ( .A(n1080), .B(n461), .Y(n446) );
  XNOR2X1 U1016 ( .A(n463), .B(n450), .Y(n1080) );
  XNOR2X1 U1017 ( .A(n1081), .B(n998), .Y(n404) );
  XNOR2X1 U1018 ( .A(n421), .B(n408), .Y(n1081) );
  XNOR2X1 U1019 ( .A(n1082), .B(n446), .Y(n444) );
  XNOR2X1 U1020 ( .A(n448), .B(n459), .Y(n1082) );
  XOR2X1 U1021 ( .A(n1083), .B(n404), .Y(n402) );
  XOR2X1 U1022 ( .A(n406), .B(n417), .Y(n1083) );
  OR2X1 U1023 ( .A(n533), .B(n530), .Y(n1086) );
  OR2X1 U1024 ( .A(n539), .B(n538), .Y(n1087) );
  AND2X2 U1025 ( .A(n533), .B(n530), .Y(n1088) );
  AND2X2 U1026 ( .A(n539), .B(n538), .Y(n1089) );
  INVX1 U1027 ( .A(n563), .Y(n709) );
  XNOR2X1 U1028 ( .A(n1090), .B(n425), .Y(n408) );
  XNOR2X1 U1029 ( .A(n427), .B(n414), .Y(n1090) );
  INVX2 U1030 ( .A(n846), .Y(n1134) );
  INVX1 U1031 ( .A(n845), .Y(n1135) );
  INVX4 U1032 ( .A(n1226), .Y(n918) );
  INVX2 U1033 ( .A(n829), .Y(n1125) );
  INVX2 U1034 ( .A(n1164), .Y(n1124) );
  BUFX2 U1035 ( .A(n1221), .Y(n1128) );
  AND2X2 U1036 ( .A(n572), .B(n725), .Y(n1091) );
  XNOR2X1 U1037 ( .A(n542), .B(n573), .Y(n291) );
  AND2X2 U1038 ( .A(n1092), .B(n1238), .Y(n359) );
  AND2X2 U1039 ( .A(n1093), .B(n1234), .Y(n385) );
  INVX2 U1040 ( .A(n551), .Y(n637) );
  INVX2 U1041 ( .A(n545), .Y(n601) );
  INVX2 U1042 ( .A(n548), .Y(n619) );
  NAND2X1 U1043 ( .A(n896), .B(n1066), .Y(n1094) );
  INVX2 U1044 ( .A(n1036), .Y(n1189) );
  BUFX2 U1045 ( .A(n48), .Y(n1144) );
  INVX2 U1046 ( .A(n1255), .Y(n1254) );
  XNOR2X1 U1047 ( .A(n1214), .B(b[4]), .Y(n898) );
  INVX2 U1048 ( .A(n877), .Y(n1252) );
  INVX4 U1049 ( .A(n886), .Y(n1237) );
  INVX4 U1050 ( .A(n882), .Y(n1244) );
  INVX4 U1051 ( .A(n879), .Y(n1248) );
  INVX2 U1052 ( .A(n878), .Y(n1250) );
  XNOR2X1 U1053 ( .A(n1103), .B(b[4]), .Y(n1096) );
  XOR2X1 U1054 ( .A(n1211), .B(b[2]), .Y(n1097) );
  INVX8 U1055 ( .A(n1218), .Y(n1219) );
  INVX4 U1056 ( .A(n1191), .Y(n1193) );
  INVX8 U1057 ( .A(n1214), .Y(n1099) );
  INVX2 U1058 ( .A(n1205), .Y(n1141) );
  INVX2 U1059 ( .A(n25), .Y(n1218) );
  INVX2 U1060 ( .A(n1123), .Y(n678) );
  INVX2 U1061 ( .A(n554), .Y(n655) );
  INVX2 U1062 ( .A(n1097), .Y(n1183) );
  INVX1 U1063 ( .A(n1212), .Y(n1104) );
  BUFX4 U1064 ( .A(n53), .Y(n1106) );
  BUFX2 U1065 ( .A(n52), .Y(n1107) );
  INVX4 U1066 ( .A(n1136), .Y(n1195) );
  INVX1 U1067 ( .A(n210), .Y(n289) );
  INVX1 U1068 ( .A(n222), .Y(n221) );
  AOI21X1 U1069 ( .A(n222), .B(n214), .C(n215), .Y(n1110) );
  NAND2X1 U1070 ( .A(n463), .B(n450), .Y(n1111) );
  NAND2X1 U1071 ( .A(n463), .B(n461), .Y(n1112) );
  NAND2X1 U1072 ( .A(n450), .B(n461), .Y(n1113) );
  NAND3X1 U1073 ( .A(n1111), .B(n1112), .C(n1113), .Y(n445) );
  NAND2X1 U1074 ( .A(n448), .B(n1064), .Y(n1114) );
  NAND2X1 U1075 ( .A(n448), .B(n446), .Y(n1115) );
  NAND2X1 U1076 ( .A(n1064), .B(n446), .Y(n1116) );
  NAND3X1 U1077 ( .A(n1114), .B(n1115), .C(n1116), .Y(n443) );
  NAND2X1 U1078 ( .A(n421), .B(n408), .Y(n1117) );
  NAND2X1 U1079 ( .A(n421), .B(n998), .Y(n1118) );
  NAND2X1 U1080 ( .A(n408), .B(n998), .Y(n1119) );
  NAND3X1 U1081 ( .A(n1117), .B(n1118), .C(n1119), .Y(n403) );
  NAND2X1 U1082 ( .A(n406), .B(n1101), .Y(n1120) );
  NAND2X1 U1083 ( .A(n406), .B(n404), .Y(n1121) );
  NAND2X1 U1084 ( .A(n1101), .B(n404), .Y(n1122) );
  NAND3X1 U1085 ( .A(n1120), .B(n1121), .C(n1122), .Y(n401) );
  AOI22X1 U1086 ( .A(n1147), .B(n1034), .C(n1124), .D(n1125), .Y(n1123) );
  BUFX2 U1087 ( .A(n1221), .Y(n1126) );
  BUFX2 U1088 ( .A(n1185), .Y(n1130) );
  XOR2X1 U1089 ( .A(n1221), .B(b[12]), .Y(n1132) );
  AOI22X1 U1090 ( .A(n1184), .B(n1134), .C(n561), .D(n1135), .Y(n1133) );
  INVX1 U1091 ( .A(n189), .Y(n286) );
  AND2X2 U1092 ( .A(n896), .B(n1067), .Y(n1136) );
  BUFX2 U1093 ( .A(n1202), .Y(n1137) );
  INVX1 U1094 ( .A(n1131), .Y(n1202) );
  INVX1 U1095 ( .A(n183), .Y(n181) );
  INVX1 U1096 ( .A(n182), .Y(n285) );
  INVX2 U1097 ( .A(n46), .Y(n1204) );
  INVX4 U1098 ( .A(n888), .Y(n1233) );
  INVX1 U1099 ( .A(n1155), .Y(n1140) );
  INVX2 U1100 ( .A(n1155), .Y(n1203) );
  INVX2 U1101 ( .A(n1182), .Y(n1167) );
  BUFX2 U1102 ( .A(n1140), .Y(n1142) );
  NAND2X1 U1103 ( .A(n898), .B(n1187), .Y(n1143) );
  INVX1 U1104 ( .A(n1207), .Y(n1145) );
  BUFX2 U1105 ( .A(n25), .Y(n1146) );
  AND2X2 U1106 ( .A(n898), .B(n1187), .Y(n1147) );
  NAND2X1 U1107 ( .A(n427), .B(n414), .Y(n1148) );
  NAND2X1 U1108 ( .A(n427), .B(n425), .Y(n1149) );
  NAND2X1 U1109 ( .A(n414), .B(n425), .Y(n1150) );
  NAND3X1 U1110 ( .A(n1148), .B(n1149), .C(n1150), .Y(n407) );
  NAND2X1 U1111 ( .A(n394), .B(n1139), .Y(n1151) );
  NAND2X1 U1112 ( .A(n394), .B(n407), .Y(n1152) );
  NAND2X1 U1113 ( .A(n1139), .B(n407), .Y(n1153) );
  NAND3X1 U1114 ( .A(n1152), .B(n1151), .C(n1153), .Y(n389) );
  OR2X2 U1115 ( .A(n1154), .B(n1036), .Y(n24) );
  XNOR2X1 U1116 ( .A(n1049), .B(b[6]), .Y(n1154) );
  INVX2 U1117 ( .A(n1003), .Y(n1190) );
  NOR2X1 U1118 ( .A(n1166), .B(n1131), .Y(n1155) );
  INVX1 U1119 ( .A(n199), .Y(n201) );
  XOR2X1 U1120 ( .A(n409), .B(n396), .Y(n1156) );
  XOR2X1 U1121 ( .A(n1156), .B(n398), .Y(n392) );
  NAND2X1 U1122 ( .A(n409), .B(n396), .Y(n1157) );
  NAND2X1 U1123 ( .A(n409), .B(n398), .Y(n1158) );
  NAND2X1 U1124 ( .A(n396), .B(n398), .Y(n1159) );
  NAND3X1 U1125 ( .A(n1157), .B(n1158), .C(n1159), .Y(n391) );
  XOR2X1 U1126 ( .A(n393), .B(n380), .Y(n1160) );
  XOR2X1 U1127 ( .A(n1160), .B(n391), .Y(n376) );
  NAND2X1 U1128 ( .A(n393), .B(n380), .Y(n1161) );
  NAND2X1 U1129 ( .A(n393), .B(n391), .Y(n1162) );
  NAND2X1 U1130 ( .A(n380), .B(n391), .Y(n1163) );
  NAND3X1 U1131 ( .A(n1161), .B(n1162), .C(n1163), .Y(n375) );
  INVX1 U1132 ( .A(n1221), .Y(n920) );
  INVX1 U1133 ( .A(n781), .Y(n1170) );
  INVX1 U1134 ( .A(n216), .Y(n290) );
  XNOR2X1 U1135 ( .A(n1048), .B(b[12]), .Y(n1166) );
  INVX2 U1136 ( .A(n6), .Y(n1182) );
  INVX2 U1137 ( .A(n782), .Y(n1169) );
  INVX1 U1138 ( .A(n1002), .Y(n288) );
  INVX1 U1139 ( .A(n200), .Y(n202) );
  AOI22X1 U1140 ( .A(n1198), .B(n1169), .C(n1196), .D(n1170), .Y(n1168) );
  INVX4 U1141 ( .A(n1198), .Y(n1199) );
  XOR2X1 U1142 ( .A(n355), .B(n346), .Y(n1171) );
  XOR2X1 U1143 ( .A(n1171), .B(n344), .Y(n342) );
  NAND2X1 U1144 ( .A(n355), .B(n346), .Y(n1172) );
  NAND2X1 U1145 ( .A(n355), .B(n344), .Y(n1173) );
  NAND2X1 U1146 ( .A(n346), .B(n344), .Y(n1174) );
  NAND3X1 U1147 ( .A(n1172), .B(n1173), .C(n1174), .Y(n341) );
  NAND2X1 U1148 ( .A(n353), .B(n351), .Y(n1175) );
  NAND2X1 U1149 ( .A(n353), .B(n342), .Y(n1176) );
  NAND2X1 U1150 ( .A(n351), .B(n342), .Y(n1177) );
  NAND3X1 U1151 ( .A(n1175), .B(n1176), .C(n1177), .Y(n339) );
  XOR2X1 U1152 ( .A(n348), .B(n591), .Y(n1178) );
  XOR2X1 U1153 ( .A(n357), .B(n1178), .Y(n344) );
  NAND2X1 U1154 ( .A(n357), .B(n348), .Y(n1179) );
  NAND2X1 U1155 ( .A(n357), .B(n591), .Y(n1180) );
  NAND2X1 U1156 ( .A(n348), .B(n591), .Y(n1181) );
  NAND3X1 U1157 ( .A(n1180), .B(n1179), .C(n1181), .Y(n343) );
  INVX2 U1158 ( .A(n557), .Y(n673) );
  INVX1 U1159 ( .A(n161), .Y(n282) );
  INVX1 U1160 ( .A(n172), .Y(n174) );
  INVX2 U1161 ( .A(n560), .Y(n691) );
  INVX1 U1162 ( .A(n1039), .Y(n284) );
  INVX1 U1163 ( .A(n171), .Y(n173) );
  INVX1 U1164 ( .A(n166), .Y(n283) );
  INVX1 U1165 ( .A(n194), .Y(n287) );
  INVX1 U1166 ( .A(n1106), .Y(n155) );
  INVX1 U1167 ( .A(n1107), .Y(n156) );
  INVX4 U1168 ( .A(n24), .Y(n1191) );
  INVX8 U1169 ( .A(b[0]), .Y(n917) );
  INVX8 U1170 ( .A(n1209), .Y(n1211) );
  INVX8 U1171 ( .A(n1222), .Y(n1223) );
  INVX8 U1172 ( .A(n1224), .Y(n1226) );
  INVX8 U1173 ( .A(n1233), .Y(n1234) );
  INVX8 U1174 ( .A(n1237), .Y(n1238) );
  INVX8 U1175 ( .A(n1239), .Y(n1240) );
  INVX8 U1176 ( .A(n1244), .Y(n1245) );
  INVX8 U1177 ( .A(n1248), .Y(n1249) );
  INVX2 U1178 ( .A(n101), .Y(n99) );
  INVX2 U1179 ( .A(n94), .Y(n92) );
  INVX2 U1180 ( .A(n79), .Y(n77) );
  OAI22X1 U1181 ( .A(n917), .B(n925), .C(n6), .D(n925), .Y(n563) );
  INVX2 U1182 ( .A(n1211), .Y(n925) );
  OAI22X1 U1183 ( .A(n1165), .B(n1102), .C(n12), .D(n1102), .Y(n560) );
  OAI22X1 U1184 ( .A(n1164), .B(n923), .C(n1143), .D(n923), .Y(n557) );
  INVX2 U1185 ( .A(n1099), .Y(n923) );
  OAI22X1 U1186 ( .A(n1189), .B(n922), .C(n1192), .D(n922), .Y(n554) );
  INVX2 U1187 ( .A(n1217), .Y(n922) );
  OAI22X1 U1188 ( .A(n1194), .B(n921), .C(n1195), .D(n921), .Y(n551) );
  INVX2 U1189 ( .A(n1146), .Y(n921) );
  OAI22X1 U1190 ( .A(n1197), .B(n920), .C(n1199), .D(n920), .Y(n548) );
  OAI22X1 U1191 ( .A(n1201), .B(n1222), .C(n1142), .D(n1222), .Y(n545) );
  OAI22X1 U1192 ( .A(n1129), .B(n918), .C(n1206), .D(n918), .Y(n542) );
  INVX2 U1193 ( .A(n359), .Y(n360) );
  INVX2 U1194 ( .A(n337), .Y(n338) );
  INVX2 U1195 ( .A(n319), .Y(n320) );
  INVX2 U1196 ( .A(n305), .Y(n306) );
  INVX2 U1197 ( .A(n295), .Y(n296) );
  INVX2 U1198 ( .A(n130), .Y(n279) );
  INVX2 U1199 ( .A(n93), .Y(n91) );
  INVX2 U1200 ( .A(n84), .Y(n275) );
  INVX2 U1201 ( .A(n1110), .Y(n212) );
  INVX2 U1202 ( .A(n211), .Y(n209) );
  INVX2 U1203 ( .A(n149), .Y(n151) );
  INVX2 U1204 ( .A(n148), .Y(n281) );
  INVX2 U1205 ( .A(n144), .Y(n142) );
  INVX2 U1206 ( .A(n129), .Y(n127) );
  INVX2 U1207 ( .A(n128), .Y(n126) );
  INVX2 U1208 ( .A(n122), .Y(n120) );
  INVX2 U1209 ( .A(n111), .Y(n109) );
  INVX2 U1210 ( .A(n105), .Y(n103) );
  INVX2 U1211 ( .A(n104), .Y(n102) );
endmodule


module alu ( src1_data, src2_data, alu_op, result, overflow );
  input [16:0] src1_data;
  input [16:0] src2_data;
  input [1:0] alu_op;
  output [16:0] result;
  output overflow;
  wire   N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67;
  wire   [46:30] full_mult;
  wire   [17:0] large_sum;
  wire   [17:0] large_dif;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29;

  alu_DW01_sub_1 sub_44 ( .A({src1_data[16], src1_data[16:15], n19, 
        src1_data[13], n18, src1_data[11:10], n12, n3, n4, src1_data[6], n9, 
        src1_data[4:1], n23}), .B({src2_data[16], src2_data[16], n22, 
        src2_data[14:12], n10, src2_data[10:8], n1, src2_data[6], n5, 
        src2_data[4:2], n13, src2_data[0]}), .CI(1'b0), .DIFF(large_dif) );
  alu_DW01_add_1 add_41 ( .A({src1_data[16], src1_data[16:15], n19, 
        src1_data[13], n18, src1_data[11:10], n12, n3, src1_data[7:1], n23}), 
        .B({src2_data[16], src2_data[16], n22, n11, src2_data[13:12], n10, 
        src2_data[10:8], n1, src2_data[6], n5, src2_data[4:2], n13, n20}), 
        .CI(1'b0), .SUM(large_sum) );
  alu_DW_mult_uns_2 mult_35 ( .a({src1_data[15:13], n18, src1_data[11:1], n23, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .b({src2_data[15:8], n1, src2_data[6:1], n20}), 
        .product({N26, full_mult[45:30], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29}) );
  BUFX4 U3 ( .A(src2_data[7]), .Y(n1) );
  BUFX4 U4 ( .A(src2_data[0]), .Y(n20) );
  INVX4 U6 ( .A(n17), .Y(n18) );
  INVX2 U7 ( .A(src1_data[12]), .Y(n17) );
  INVX1 U9 ( .A(src1_data[8]), .Y(n2) );
  INVX2 U10 ( .A(n2), .Y(n3) );
  BUFX2 U11 ( .A(src1_data[7]), .Y(n4) );
  BUFX2 U12 ( .A(src2_data[5]), .Y(n5) );
  NAND2X1 U13 ( .A(n6), .B(large_sum[16]), .Y(n7) );
  NAND2X1 U14 ( .A(n7), .B(n65), .Y(result[16]) );
  INVX2 U15 ( .A(n67), .Y(n6) );
  OR2X1 U16 ( .A(n29), .B(n67), .Y(n8) );
  NAND2X1 U17 ( .A(n8), .B(n26), .Y(overflow) );
  BUFX2 U18 ( .A(src1_data[5]), .Y(n9) );
  BUFX2 U19 ( .A(src2_data[11]), .Y(n10) );
  BUFX2 U20 ( .A(src2_data[14]), .Y(n11) );
  BUFX2 U21 ( .A(src1_data[9]), .Y(n12) );
  INVX2 U22 ( .A(src1_data[0]), .Y(n24) );
  INVX4 U23 ( .A(n24), .Y(n23) );
  BUFX2 U24 ( .A(src2_data[1]), .Y(n13) );
  INVX2 U25 ( .A(n67), .Y(n62) );
  AND2X2 U26 ( .A(n31), .B(n30), .Y(n14) );
  AND2X2 U27 ( .A(alu_op[1]), .B(n30), .Y(n15) );
  AND2X2 U28 ( .A(alu_op[0]), .B(alu_op[1]), .Y(n16) );
  BUFX2 U29 ( .A(src1_data[14]), .Y(n19) );
  INVX1 U30 ( .A(src2_data[15]), .Y(n21) );
  INVX2 U31 ( .A(n21), .Y(n22) );
  INVX2 U32 ( .A(large_sum[16]), .Y(n66) );
  XOR2X1 U33 ( .A(n66), .B(large_sum[17]), .Y(n29) );
  INVX2 U34 ( .A(alu_op[1]), .Y(n31) );
  NAND2X1 U35 ( .A(alu_op[0]), .B(n31), .Y(n67) );
  INVX2 U36 ( .A(alu_op[0]), .Y(n30) );
  XOR2X1 U37 ( .A(large_dif[16]), .B(large_dif[17]), .Y(n25) );
  AOI22X1 U38 ( .A(N26), .B(n16), .C(n15), .D(n25), .Y(n26) );
  AOI22X1 U39 ( .A(n23), .B(n14), .C(full_mult[30]), .D(n16), .Y(n33) );
  AOI22X1 U40 ( .A(large_dif[0]), .B(n15), .C(large_sum[0]), .D(n62), .Y(n32)
         );
  NAND2X1 U41 ( .A(n33), .B(n32), .Y(result[0]) );
  AOI22X1 U42 ( .A(src1_data[1]), .B(n14), .C(full_mult[31]), .D(n16), .Y(n35)
         );
  AOI22X1 U43 ( .A(large_dif[1]), .B(n15), .C(large_sum[1]), .D(n62), .Y(n34)
         );
  NAND2X1 U44 ( .A(n35), .B(n34), .Y(result[1]) );
  AOI22X1 U45 ( .A(src1_data[2]), .B(n14), .C(full_mult[32]), .D(n16), .Y(n37)
         );
  AOI22X1 U46 ( .A(large_dif[2]), .B(n15), .C(large_sum[2]), .D(n62), .Y(n36)
         );
  NAND2X1 U47 ( .A(n37), .B(n36), .Y(result[2]) );
  AOI22X1 U48 ( .A(src1_data[3]), .B(n14), .C(full_mult[33]), .D(n16), .Y(n39)
         );
  AOI22X1 U49 ( .A(large_dif[3]), .B(n15), .C(large_sum[3]), .D(n62), .Y(n38)
         );
  NAND2X1 U50 ( .A(n39), .B(n38), .Y(result[3]) );
  AOI22X1 U51 ( .A(src1_data[4]), .B(n14), .C(full_mult[34]), .D(n16), .Y(n41)
         );
  AOI22X1 U52 ( .A(large_dif[4]), .B(n15), .C(large_sum[4]), .D(n62), .Y(n40)
         );
  NAND2X1 U53 ( .A(n41), .B(n40), .Y(result[4]) );
  AOI22X1 U54 ( .A(n9), .B(n14), .C(full_mult[35]), .D(n16), .Y(n43) );
  AOI22X1 U55 ( .A(large_dif[5]), .B(n15), .C(large_sum[5]), .D(n62), .Y(n42)
         );
  NAND2X1 U56 ( .A(n43), .B(n42), .Y(result[5]) );
  AOI22X1 U57 ( .A(src1_data[6]), .B(n14), .C(full_mult[36]), .D(n16), .Y(n45)
         );
  AOI22X1 U58 ( .A(large_dif[6]), .B(n15), .C(large_sum[6]), .D(n62), .Y(n44)
         );
  NAND2X1 U59 ( .A(n44), .B(n45), .Y(result[6]) );
  AOI22X1 U60 ( .A(n4), .B(n14), .C(full_mult[37]), .D(n16), .Y(n47) );
  AOI22X1 U61 ( .A(large_dif[7]), .B(n15), .C(large_sum[7]), .D(n62), .Y(n46)
         );
  NAND2X1 U62 ( .A(n46), .B(n47), .Y(result[7]) );
  AOI22X1 U63 ( .A(n3), .B(n14), .C(full_mult[38]), .D(n16), .Y(n49) );
  AOI22X1 U64 ( .A(large_dif[8]), .B(n15), .C(large_sum[8]), .D(n62), .Y(n48)
         );
  NAND2X1 U65 ( .A(n48), .B(n49), .Y(result[8]) );
  AOI22X1 U66 ( .A(n12), .B(n14), .C(full_mult[39]), .D(n16), .Y(n51) );
  AOI22X1 U67 ( .A(large_dif[9]), .B(n15), .C(large_sum[9]), .D(n62), .Y(n50)
         );
  NAND2X1 U68 ( .A(n50), .B(n51), .Y(result[9]) );
  AOI22X1 U69 ( .A(src1_data[10]), .B(n14), .C(full_mult[40]), .D(n16), .Y(n53) );
  AOI22X1 U70 ( .A(large_dif[10]), .B(n15), .C(large_sum[10]), .D(n62), .Y(n52) );
  NAND2X1 U71 ( .A(n53), .B(n52), .Y(result[10]) );
  AOI22X1 U72 ( .A(src1_data[11]), .B(n14), .C(full_mult[41]), .D(n16), .Y(n55) );
  AOI22X1 U73 ( .A(large_dif[11]), .B(n15), .C(large_sum[11]), .D(n62), .Y(n54) );
  NAND2X1 U74 ( .A(n54), .B(n55), .Y(result[11]) );
  AOI22X1 U75 ( .A(n18), .B(n14), .C(full_mult[42]), .D(n16), .Y(n57) );
  AOI22X1 U76 ( .A(large_dif[12]), .B(n15), .C(large_sum[12]), .D(n62), .Y(n56) );
  NAND2X1 U77 ( .A(n57), .B(n56), .Y(result[12]) );
  AOI22X1 U78 ( .A(src1_data[13]), .B(n14), .C(full_mult[43]), .D(n16), .Y(n59) );
  AOI22X1 U79 ( .A(large_dif[13]), .B(n15), .C(large_sum[13]), .D(n62), .Y(n58) );
  NAND2X1 U80 ( .A(n59), .B(n58), .Y(result[13]) );
  AOI22X1 U81 ( .A(n19), .B(n14), .C(full_mult[44]), .D(n16), .Y(n61) );
  AOI22X1 U82 ( .A(large_dif[14]), .B(n15), .C(large_sum[14]), .D(n62), .Y(n60) );
  NAND2X1 U83 ( .A(n60), .B(n61), .Y(result[14]) );
  AOI22X1 U84 ( .A(src1_data[15]), .B(n14), .C(full_mult[45]), .D(n16), .Y(n64) );
  AOI22X1 U85 ( .A(large_dif[15]), .B(n15), .C(large_sum[15]), .D(n62), .Y(n63) );
  NAND2X1 U86 ( .A(n64), .B(n63), .Y(result[15]) );
  AOI22X1 U87 ( .A(src1_data[16]), .B(n14), .C(large_dif[16]), .D(n15), .Y(n65) );
endmodule


module flex_sreg_NUM_BITS17_15 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n11), .Y(n46) );
  INVX1 U3 ( .A(n10), .Y(n48) );
  INVX2 U4 ( .A(n1), .Y(n2) );
  INVX2 U5 ( .A(write_enable), .Y(n1) );
  INVX2 U6 ( .A(n4), .Y(n3) );
  INVX2 U7 ( .A(n_reset), .Y(n4) );
  INVX1 U8 ( .A(n17), .Y(n34) );
  INVX1 U9 ( .A(n15), .Y(n38) );
  INVX1 U10 ( .A(n13), .Y(n42) );
  INVX1 U11 ( .A(n16), .Y(n36) );
  INVX1 U12 ( .A(n14), .Y(n40) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n18), .Y(n32) );
  INVX1 U16 ( .A(n22), .Y(n28) );
  MUX2X1 U17 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U18 ( .A(n5), .Y(n55) );
  MUX2X1 U19 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U20 ( .A(n6), .Y(n54) );
  MUX2X1 U21 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U22 ( .A(n7), .Y(n53) );
  MUX2X1 U23 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U24 ( .A(n8), .Y(n52) );
  MUX2X1 U25 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U26 ( .A(n9), .Y(n50) );
  MUX2X1 U27 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_14 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n24), .Y(n26) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX2 U5 ( .A(n1), .Y(n2) );
  INVX2 U6 ( .A(write_enable), .Y(n1) );
  INVX2 U7 ( .A(n4), .Y(n3) );
  INVX2 U8 ( .A(n_reset), .Y(n4) );
  INVX1 U9 ( .A(n12), .Y(n44) );
  INVX1 U10 ( .A(n13), .Y(n42) );
  INVX1 U11 ( .A(n15), .Y(n38) );
  INVX1 U12 ( .A(n16), .Y(n36) );
  INVX1 U13 ( .A(n14), .Y(n40) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  INVX1 U15 ( .A(n18), .Y(n32) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_13 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n15), .Y(n38) );
  INVX2 U5 ( .A(n1), .Y(n2) );
  INVX2 U6 ( .A(write_enable), .Y(n1) );
  INVX2 U7 ( .A(n4), .Y(n3) );
  INVX2 U8 ( .A(n_reset), .Y(n4) );
  INVX1 U9 ( .A(n18), .Y(n32) );
  INVX1 U10 ( .A(n14), .Y(n40) );
  INVX1 U11 ( .A(n13), .Y(n42) );
  INVX1 U12 ( .A(n12), .Y(n44) );
  INVX1 U13 ( .A(n22), .Y(n28) );
  MUX2X1 U14 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U15 ( .A(n5), .Y(n55) );
  MUX2X1 U16 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U17 ( .A(n6), .Y(n54) );
  MUX2X1 U18 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U19 ( .A(n7), .Y(n53) );
  MUX2X1 U20 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U21 ( .A(n8), .Y(n52) );
  MUX2X1 U22 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U23 ( .A(n9), .Y(n50) );
  MUX2X1 U24 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U25 ( .A(n10), .Y(n48) );
  MUX2X1 U26 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U27 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U28 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U29 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U30 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U31 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U32 ( .A(n16), .Y(n36) );
  MUX2X1 U33 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U34 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U35 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U36 ( .A(n20), .Y(n30) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_12 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n24), .Y(n26) );
  INVX1 U5 ( .A(n11), .Y(n46) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_11 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX2 U5 ( .A(n1), .Y(n2) );
  INVX2 U6 ( .A(write_enable), .Y(n1) );
  INVX2 U7 ( .A(n4), .Y(n3) );
  INVX2 U8 ( .A(n_reset), .Y(n4) );
  INVX1 U9 ( .A(n18), .Y(n32) );
  INVX1 U10 ( .A(n14), .Y(n40) );
  INVX1 U11 ( .A(n13), .Y(n42) );
  INVX1 U12 ( .A(n12), .Y(n44) );
  INVX1 U13 ( .A(n22), .Y(n28) );
  MUX2X1 U14 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U15 ( .A(n5), .Y(n55) );
  MUX2X1 U16 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U17 ( .A(n6), .Y(n54) );
  MUX2X1 U18 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U19 ( .A(n7), .Y(n53) );
  MUX2X1 U20 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U21 ( .A(n8), .Y(n52) );
  MUX2X1 U22 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U23 ( .A(n9), .Y(n50) );
  MUX2X1 U24 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U25 ( .A(n10), .Y(n48) );
  MUX2X1 U26 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U27 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U28 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U29 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U30 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U31 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U32 ( .A(n16), .Y(n36) );
  MUX2X1 U33 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U34 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U35 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U36 ( .A(n20), .Y(n30) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_10 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n24), .Y(n26) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_9 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n15), .Y(n38) );
  INVX2 U5 ( .A(n1), .Y(n2) );
  INVX2 U6 ( .A(write_enable), .Y(n1) );
  INVX2 U7 ( .A(n4), .Y(n3) );
  INVX2 U8 ( .A(n_reset), .Y(n4) );
  INVX1 U9 ( .A(n18), .Y(n32) );
  INVX1 U10 ( .A(n14), .Y(n40) );
  INVX1 U11 ( .A(n13), .Y(n42) );
  INVX1 U12 ( .A(n12), .Y(n44) );
  INVX1 U13 ( .A(n22), .Y(n28) );
  MUX2X1 U14 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U15 ( .A(n5), .Y(n55) );
  MUX2X1 U16 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U17 ( .A(n6), .Y(n54) );
  MUX2X1 U18 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U19 ( .A(n7), .Y(n53) );
  MUX2X1 U20 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U21 ( .A(n8), .Y(n52) );
  MUX2X1 U22 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U23 ( .A(n9), .Y(n50) );
  MUX2X1 U24 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U25 ( .A(n10), .Y(n48) );
  MUX2X1 U26 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U27 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U28 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U29 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U30 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U31 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U32 ( .A(n16), .Y(n36) );
  MUX2X1 U33 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U34 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U35 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U36 ( .A(n20), .Y(n30) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_8 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n24), .Y(n26) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n15), .Y(n38) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_7 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n24), .Y(n26) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  MUX2X1 U14 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U15 ( .A(n5), .Y(n55) );
  MUX2X1 U16 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U17 ( .A(n6), .Y(n54) );
  MUX2X1 U18 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U19 ( .A(n7), .Y(n53) );
  MUX2X1 U20 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U21 ( .A(n8), .Y(n52) );
  MUX2X1 U22 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U23 ( .A(n9), .Y(n50) );
  MUX2X1 U24 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U25 ( .A(n10), .Y(n48) );
  MUX2X1 U26 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U27 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U28 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U29 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U30 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U31 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U32 ( .A(n16), .Y(n36) );
  MUX2X1 U33 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U34 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U35 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U36 ( .A(n20), .Y(n30) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  INVX2 U55 ( .A(n22), .Y(n28) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_6 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n24), .Y(n26) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n15), .Y(n38) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_5 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n24), .Y(n26) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n15), .Y(n38) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_4 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n24), .Y(n26) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_3 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n24), .Y(n26) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_2 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n11), .Y(n46) );
  INVX1 U5 ( .A(n24), .Y(n26) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_1 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n24), .Y(n26) );
  INVX1 U5 ( .A(n11), .Y(n46) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module flex_sreg_NUM_BITS17_0 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n17), .Y(n34) );
  INVX1 U3 ( .A(n15), .Y(n38) );
  INVX1 U4 ( .A(n24), .Y(n26) );
  INVX1 U5 ( .A(n11), .Y(n46) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n14), .Y(n40) );
  INVX1 U12 ( .A(n13), .Y(n42) );
  INVX1 U13 ( .A(n12), .Y(n44) );
  INVX1 U14 ( .A(n22), .Y(n28) );
  MUX2X1 U15 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U16 ( .A(n5), .Y(n55) );
  MUX2X1 U17 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U18 ( .A(n6), .Y(n54) );
  MUX2X1 U19 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U20 ( .A(n7), .Y(n53) );
  MUX2X1 U21 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U22 ( .A(n8), .Y(n52) );
  MUX2X1 U23 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U24 ( .A(n9), .Y(n50) );
  MUX2X1 U25 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U26 ( .A(n10), .Y(n48) );
  MUX2X1 U27 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U28 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U29 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U30 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U31 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U32 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  INVX2 U33 ( .A(n16), .Y(n36) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  INVX2 U54 ( .A(n20), .Y(n30) );
  MUX2X1 U55 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U56 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
endmodule


module register_file ( clk, n_reset, w_en, r1_sel, r2_sel, w_sel, w_data, 
        r1_data, r2_data, outreg_data );
  input [3:0] r1_sel;
  input [3:0] r2_sel;
  input [3:0] w_sel;
  input [16:0] w_data;
  output [16:0] r1_data;
  output [16:0] r2_data;
  output [16:0] outreg_data;
  input clk, n_reset, w_en;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, n709, n710, n711,
         \regs_matrix[15][16] , \regs_matrix[15][15] , \regs_matrix[15][14] ,
         \regs_matrix[15][13] , \regs_matrix[15][12] , \regs_matrix[15][11] ,
         \regs_matrix[15][10] , \regs_matrix[15][9] , \regs_matrix[15][8] ,
         \regs_matrix[15][7] , \regs_matrix[15][6] , \regs_matrix[15][5] ,
         \regs_matrix[15][4] , \regs_matrix[15][3] , \regs_matrix[15][2] ,
         \regs_matrix[15][1] , \regs_matrix[15][0] , \regs_matrix[14][16] ,
         \regs_matrix[14][15] , \regs_matrix[14][14] , \regs_matrix[14][13] ,
         \regs_matrix[14][12] , \regs_matrix[14][11] , \regs_matrix[14][10] ,
         \regs_matrix[14][9] , \regs_matrix[14][8] , \regs_matrix[14][7] ,
         \regs_matrix[14][6] , \regs_matrix[14][5] , \regs_matrix[14][4] ,
         \regs_matrix[14][3] , \regs_matrix[14][2] , \regs_matrix[14][1] ,
         \regs_matrix[14][0] , \regs_matrix[13][16] , \regs_matrix[13][15] ,
         \regs_matrix[13][14] , \regs_matrix[13][13] , \regs_matrix[13][12] ,
         \regs_matrix[13][11] , \regs_matrix[13][10] , \regs_matrix[13][9] ,
         \regs_matrix[13][8] , \regs_matrix[13][7] , \regs_matrix[13][6] ,
         \regs_matrix[13][5] , \regs_matrix[13][4] , \regs_matrix[13][3] ,
         \regs_matrix[13][2] , \regs_matrix[13][1] , \regs_matrix[13][0] ,
         \regs_matrix[12][16] , \regs_matrix[12][15] , \regs_matrix[12][14] ,
         \regs_matrix[12][13] , \regs_matrix[12][12] , \regs_matrix[12][11] ,
         \regs_matrix[12][10] , \regs_matrix[12][9] , \regs_matrix[12][8] ,
         \regs_matrix[12][7] , \regs_matrix[12][6] , \regs_matrix[12][5] ,
         \regs_matrix[12][4] , \regs_matrix[12][3] , \regs_matrix[12][2] ,
         \regs_matrix[12][1] , \regs_matrix[12][0] , \regs_matrix[11][16] ,
         \regs_matrix[11][15] , \regs_matrix[11][14] , \regs_matrix[11][13] ,
         \regs_matrix[11][12] , \regs_matrix[11][11] , \regs_matrix[11][10] ,
         \regs_matrix[11][9] , \regs_matrix[11][8] , \regs_matrix[11][7] ,
         \regs_matrix[11][6] , \regs_matrix[11][5] , \regs_matrix[11][4] ,
         \regs_matrix[11][3] , \regs_matrix[11][2] , \regs_matrix[11][1] ,
         \regs_matrix[11][0] , \regs_matrix[10][16] , \regs_matrix[10][15] ,
         \regs_matrix[10][14] , \regs_matrix[10][13] , \regs_matrix[10][12] ,
         \regs_matrix[10][11] , \regs_matrix[10][10] , \regs_matrix[10][9] ,
         \regs_matrix[10][8] , \regs_matrix[10][7] , \regs_matrix[10][6] ,
         \regs_matrix[10][5] , \regs_matrix[10][4] , \regs_matrix[10][3] ,
         \regs_matrix[10][2] , \regs_matrix[10][1] , \regs_matrix[10][0] ,
         \regs_matrix[9][16] , \regs_matrix[9][15] , \regs_matrix[9][14] ,
         \regs_matrix[9][13] , \regs_matrix[9][12] , \regs_matrix[9][11] ,
         \regs_matrix[9][10] , \regs_matrix[9][9] , \regs_matrix[9][8] ,
         \regs_matrix[9][7] , \regs_matrix[9][6] , \regs_matrix[9][5] ,
         \regs_matrix[9][4] , \regs_matrix[9][3] , \regs_matrix[9][2] ,
         \regs_matrix[9][1] , \regs_matrix[9][0] , \regs_matrix[8][16] ,
         \regs_matrix[8][15] , \regs_matrix[8][14] , \regs_matrix[8][13] ,
         \regs_matrix[8][12] , \regs_matrix[8][11] , \regs_matrix[8][10] ,
         \regs_matrix[8][9] , \regs_matrix[8][8] , \regs_matrix[8][7] ,
         \regs_matrix[8][6] , \regs_matrix[8][5] , \regs_matrix[8][4] ,
         \regs_matrix[8][3] , \regs_matrix[8][2] , \regs_matrix[8][1] ,
         \regs_matrix[8][0] , \regs_matrix[7][16] , \regs_matrix[7][15] ,
         \regs_matrix[7][14] , \regs_matrix[7][13] , \regs_matrix[7][12] ,
         \regs_matrix[7][11] , \regs_matrix[7][10] , \regs_matrix[7][9] ,
         \regs_matrix[7][8] , \regs_matrix[7][7] , \regs_matrix[7][6] ,
         \regs_matrix[7][5] , \regs_matrix[7][4] , \regs_matrix[7][3] ,
         \regs_matrix[7][2] , \regs_matrix[7][1] , \regs_matrix[7][0] ,
         \regs_matrix[6][16] , \regs_matrix[6][15] , \regs_matrix[6][14] ,
         \regs_matrix[6][13] , \regs_matrix[6][12] , \regs_matrix[6][11] ,
         \regs_matrix[6][10] , \regs_matrix[6][9] , \regs_matrix[6][8] ,
         \regs_matrix[6][7] , \regs_matrix[6][6] , \regs_matrix[6][5] ,
         \regs_matrix[6][4] , \regs_matrix[6][3] , \regs_matrix[6][2] ,
         \regs_matrix[6][1] , \regs_matrix[6][0] , \regs_matrix[5][16] ,
         \regs_matrix[5][15] , \regs_matrix[5][14] , \regs_matrix[5][13] ,
         \regs_matrix[5][12] , \regs_matrix[5][11] , \regs_matrix[5][10] ,
         \regs_matrix[5][9] , \regs_matrix[5][8] , \regs_matrix[5][7] ,
         \regs_matrix[5][6] , \regs_matrix[5][5] , \regs_matrix[5][4] ,
         \regs_matrix[5][3] , \regs_matrix[5][2] , \regs_matrix[5][1] ,
         \regs_matrix[5][0] , \regs_matrix[4][16] , \regs_matrix[4][15] ,
         \regs_matrix[4][14] , \regs_matrix[4][13] , \regs_matrix[4][12] ,
         \regs_matrix[4][11] , \regs_matrix[4][10] , \regs_matrix[4][9] ,
         \regs_matrix[4][8] , \regs_matrix[4][7] , \regs_matrix[4][6] ,
         \regs_matrix[4][5] , \regs_matrix[4][4] , \regs_matrix[4][3] ,
         \regs_matrix[4][2] , \regs_matrix[4][1] , \regs_matrix[4][0] ,
         \regs_matrix[3][16] , \regs_matrix[3][15] , \regs_matrix[3][14] ,
         \regs_matrix[3][13] , \regs_matrix[3][12] , \regs_matrix[3][11] ,
         \regs_matrix[3][10] , \regs_matrix[3][9] , \regs_matrix[3][8] ,
         \regs_matrix[3][7] , \regs_matrix[3][6] , \regs_matrix[3][5] ,
         \regs_matrix[3][4] , \regs_matrix[3][3] , \regs_matrix[3][2] ,
         \regs_matrix[3][1] , \regs_matrix[3][0] , \regs_matrix[2][16] ,
         \regs_matrix[2][15] , \regs_matrix[2][14] , \regs_matrix[2][13] ,
         \regs_matrix[2][12] , \regs_matrix[2][11] , \regs_matrix[2][10] ,
         \regs_matrix[2][9] , \regs_matrix[2][8] , \regs_matrix[2][7] ,
         \regs_matrix[2][6] , \regs_matrix[2][5] , \regs_matrix[2][4] ,
         \regs_matrix[2][3] , \regs_matrix[2][2] , \regs_matrix[2][1] ,
         \regs_matrix[2][0] , \regs_matrix[1][16] , \regs_matrix[1][15] ,
         \regs_matrix[1][14] , \regs_matrix[1][13] , \regs_matrix[1][12] ,
         \regs_matrix[1][11] , \regs_matrix[1][10] , \regs_matrix[1][9] ,
         \regs_matrix[1][8] , \regs_matrix[1][7] , \regs_matrix[1][6] ,
         \regs_matrix[1][5] , \regs_matrix[1][4] , \regs_matrix[1][3] ,
         \regs_matrix[1][2] , \regs_matrix[1][1] , \regs_matrix[1][0] , n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n1, n2, n3, n4, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n49, n50, n51, n52, n53, n55, n56, n57, n59, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708;
  wire   [15:0] write_enables;
  assign N10 = r1_sel[0];
  assign N11 = r1_sel[1];
  assign N12 = r1_sel[2];
  assign N13 = r1_sel[3];
  assign N14 = r2_sel[0];
  assign N15 = r2_sel[1];
  assign N16 = r2_sel[2];
  assign N17 = r2_sel[3];

  NOR2X1 U6 ( .A(n5), .B(n6), .Y(write_enables[9]) );
  NOR2X1 U7 ( .A(n6), .B(n7), .Y(write_enables[8]) );
  NOR2X1 U8 ( .A(n8), .B(n9), .Y(write_enables[7]) );
  NOR2X1 U9 ( .A(n8), .B(n10), .Y(write_enables[6]) );
  NOR2X1 U10 ( .A(n9), .B(n11), .Y(write_enables[5]) );
  NOR2X1 U11 ( .A(n10), .B(n11), .Y(write_enables[4]) );
  NOR2X1 U12 ( .A(n9), .B(n12), .Y(write_enables[3]) );
  NOR2X1 U13 ( .A(n10), .B(n12), .Y(write_enables[2]) );
  NOR2X1 U14 ( .A(n6), .B(n9), .Y(write_enables[1]) );
  NAND3X1 U15 ( .A(w_en), .B(n706), .C(w_sel[0]), .Y(n9) );
  NOR2X1 U16 ( .A(n5), .B(n8), .Y(write_enables[15]) );
  NOR2X1 U17 ( .A(n7), .B(n8), .Y(write_enables[14]) );
  NAND2X1 U18 ( .A(w_sel[2]), .B(w_sel[1]), .Y(n8) );
  NOR2X1 U19 ( .A(n5), .B(n11), .Y(write_enables[13]) );
  NOR2X1 U20 ( .A(n7), .B(n11), .Y(write_enables[12]) );
  NAND2X1 U21 ( .A(w_sel[2]), .B(n707), .Y(n11) );
  NOR2X1 U22 ( .A(n5), .B(n12), .Y(write_enables[11]) );
  NAND3X1 U23 ( .A(w_sel[0]), .B(w_en), .C(w_sel[3]), .Y(n5) );
  NOR2X1 U24 ( .A(n7), .B(n12), .Y(write_enables[10]) );
  NAND2X1 U25 ( .A(w_sel[1]), .B(n708), .Y(n12) );
  NAND2X1 U26 ( .A(n13), .B(w_sel[3]), .Y(n7) );
  NOR2X1 U27 ( .A(n6), .B(n10), .Y(write_enables[0]) );
  NAND2X1 U28 ( .A(n13), .B(n706), .Y(n10) );
  NOR2X1 U29 ( .A(n705), .B(w_sel[0]), .Y(n13) );
  NAND2X1 U30 ( .A(n707), .B(n708), .Y(n6) );
  flex_sreg_NUM_BITS17_15 \genblk1[0].REGX  ( .clk(clk), .n_reset(n704), 
        .write_enable(write_enables[0]), .new_value({w_data[16], n694, n691, 
        n688, n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, 
        n655, n652}), .current_value(outreg_data) );
  flex_sreg_NUM_BITS17_14 \genblk1[1].REGX  ( .clk(clk), .n_reset(n697), 
        .write_enable(write_enables[1]), .new_value({n61, n694, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[1][16] , \regs_matrix[1][15] , 
        \regs_matrix[1][14] , \regs_matrix[1][13] , \regs_matrix[1][12] , 
        \regs_matrix[1][11] , \regs_matrix[1][10] , \regs_matrix[1][9] , 
        \regs_matrix[1][8] , \regs_matrix[1][7] , \regs_matrix[1][6] , 
        \regs_matrix[1][5] , \regs_matrix[1][4] , \regs_matrix[1][3] , 
        \regs_matrix[1][2] , \regs_matrix[1][1] , \regs_matrix[1][0] }) );
  flex_sreg_NUM_BITS17_13 \genblk1[2].REGX  ( .clk(clk), .n_reset(n697), 
        .write_enable(write_enables[2]), .new_value({w_data[16], n693, n691, 
        n688, n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, 
        n655, w_data[0]}), .current_value({\regs_matrix[2][16] , 
        \regs_matrix[2][15] , \regs_matrix[2][14] , \regs_matrix[2][13] , 
        \regs_matrix[2][12] , \regs_matrix[2][11] , \regs_matrix[2][10] , 
        \regs_matrix[2][9] , \regs_matrix[2][8] , \regs_matrix[2][7] , 
        \regs_matrix[2][6] , \regs_matrix[2][5] , \regs_matrix[2][4] , 
        \regs_matrix[2][3] , \regs_matrix[2][2] , \regs_matrix[2][1] , 
        \regs_matrix[2][0] }) );
  flex_sreg_NUM_BITS17_12 \genblk1[3].REGX  ( .clk(clk), .n_reset(n698), 
        .write_enable(write_enables[3]), .new_value({n696, n693, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[3][16] , \regs_matrix[3][15] , 
        \regs_matrix[3][14] , \regs_matrix[3][13] , \regs_matrix[3][12] , 
        \regs_matrix[3][11] , \regs_matrix[3][10] , \regs_matrix[3][9] , 
        \regs_matrix[3][8] , \regs_matrix[3][7] , \regs_matrix[3][6] , 
        \regs_matrix[3][5] , \regs_matrix[3][4] , \regs_matrix[3][3] , 
        \regs_matrix[3][2] , \regs_matrix[3][1] , \regs_matrix[3][0] }) );
  flex_sreg_NUM_BITS17_11 \genblk1[4].REGX  ( .clk(clk), .n_reset(n698), 
        .write_enable(write_enables[4]), .new_value({w_data[16], n693, n691, 
        n688, n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, 
        n655, w_data[0]}), .current_value({\regs_matrix[4][16] , 
        \regs_matrix[4][15] , \regs_matrix[4][14] , \regs_matrix[4][13] , 
        \regs_matrix[4][12] , \regs_matrix[4][11] , \regs_matrix[4][10] , 
        \regs_matrix[4][9] , \regs_matrix[4][8] , \regs_matrix[4][7] , 
        \regs_matrix[4][6] , \regs_matrix[4][5] , \regs_matrix[4][4] , 
        \regs_matrix[4][3] , \regs_matrix[4][2] , \regs_matrix[4][1] , 
        \regs_matrix[4][0] }) );
  flex_sreg_NUM_BITS17_10 \genblk1[5].REGX  ( .clk(clk), .n_reset(n699), 
        .write_enable(write_enables[5]), .new_value({n62, n693, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[5][16] , \regs_matrix[5][15] , 
        \regs_matrix[5][14] , \regs_matrix[5][13] , \regs_matrix[5][12] , 
        \regs_matrix[5][11] , \regs_matrix[5][10] , \regs_matrix[5][9] , 
        \regs_matrix[5][8] , \regs_matrix[5][7] , \regs_matrix[5][6] , 
        \regs_matrix[5][5] , \regs_matrix[5][4] , \regs_matrix[5][3] , 
        \regs_matrix[5][2] , \regs_matrix[5][1] , \regs_matrix[5][0] }) );
  flex_sreg_NUM_BITS17_9 \genblk1[6].REGX  ( .clk(clk), .n_reset(n699), 
        .write_enable(write_enables[6]), .new_value({w_data[16], n693, n691, 
        n688, n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, 
        n655, w_data[0]}), .current_value({\regs_matrix[6][16] , 
        \regs_matrix[6][15] , \regs_matrix[6][14] , \regs_matrix[6][13] , 
        \regs_matrix[6][12] , \regs_matrix[6][11] , \regs_matrix[6][10] , 
        \regs_matrix[6][9] , \regs_matrix[6][8] , \regs_matrix[6][7] , 
        \regs_matrix[6][6] , \regs_matrix[6][5] , \regs_matrix[6][4] , 
        \regs_matrix[6][3] , \regs_matrix[6][2] , \regs_matrix[6][1] , 
        \regs_matrix[6][0] }) );
  flex_sreg_NUM_BITS17_8 \genblk1[7].REGX  ( .clk(clk), .n_reset(n700), 
        .write_enable(write_enables[7]), .new_value({n61, n694, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[7][16] , \regs_matrix[7][15] , 
        \regs_matrix[7][14] , \regs_matrix[7][13] , \regs_matrix[7][12] , 
        \regs_matrix[7][11] , \regs_matrix[7][10] , \regs_matrix[7][9] , 
        \regs_matrix[7][8] , \regs_matrix[7][7] , \regs_matrix[7][6] , 
        \regs_matrix[7][5] , \regs_matrix[7][4] , \regs_matrix[7][3] , 
        \regs_matrix[7][2] , \regs_matrix[7][1] , \regs_matrix[7][0] }) );
  flex_sreg_NUM_BITS17_7 \genblk1[8].REGX  ( .clk(clk), .n_reset(n700), 
        .write_enable(write_enables[8]), .new_value({n62, n694, n691, n688, 
        n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, n655, 
        w_data[0]}), .current_value({\regs_matrix[8][16] , 
        \regs_matrix[8][15] , \regs_matrix[8][14] , \regs_matrix[8][13] , 
        \regs_matrix[8][12] , \regs_matrix[8][11] , \regs_matrix[8][10] , 
        \regs_matrix[8][9] , \regs_matrix[8][8] , \regs_matrix[8][7] , 
        \regs_matrix[8][6] , \regs_matrix[8][5] , \regs_matrix[8][4] , 
        \regs_matrix[8][3] , \regs_matrix[8][2] , \regs_matrix[8][1] , 
        \regs_matrix[8][0] }) );
  flex_sreg_NUM_BITS17_6 \genblk1[9].REGX  ( .clk(clk), .n_reset(n701), 
        .write_enable(write_enables[9]), .new_value({n696, n694, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[9][16] , \regs_matrix[9][15] , 
        \regs_matrix[9][14] , \regs_matrix[9][13] , \regs_matrix[9][12] , 
        \regs_matrix[9][11] , \regs_matrix[9][10] , \regs_matrix[9][9] , 
        \regs_matrix[9][8] , \regs_matrix[9][7] , \regs_matrix[9][6] , 
        \regs_matrix[9][5] , \regs_matrix[9][4] , \regs_matrix[9][3] , 
        \regs_matrix[9][2] , \regs_matrix[9][1] , \regs_matrix[9][0] }) );
  flex_sreg_NUM_BITS17_5 \genblk1[10].REGX  ( .clk(clk), .n_reset(n701), 
        .write_enable(write_enables[10]), .new_value({n61, n694, n691, n688, 
        n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, n655, 
        w_data[0]}), .current_value({\regs_matrix[10][16] , 
        \regs_matrix[10][15] , \regs_matrix[10][14] , \regs_matrix[10][13] , 
        \regs_matrix[10][12] , \regs_matrix[10][11] , \regs_matrix[10][10] , 
        \regs_matrix[10][9] , \regs_matrix[10][8] , \regs_matrix[10][7] , 
        \regs_matrix[10][6] , \regs_matrix[10][5] , \regs_matrix[10][4] , 
        \regs_matrix[10][3] , \regs_matrix[10][2] , \regs_matrix[10][1] , 
        \regs_matrix[10][0] }) );
  flex_sreg_NUM_BITS17_4 \genblk1[11].REGX  ( .clk(clk), .n_reset(n702), 
        .write_enable(write_enables[11]), .new_value({n62, n693, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[11][16] , \regs_matrix[11][15] , 
        \regs_matrix[11][14] , \regs_matrix[11][13] , \regs_matrix[11][12] , 
        \regs_matrix[11][11] , \regs_matrix[11][10] , \regs_matrix[11][9] , 
        \regs_matrix[11][8] , \regs_matrix[11][7] , \regs_matrix[11][6] , 
        \regs_matrix[11][5] , \regs_matrix[11][4] , \regs_matrix[11][3] , 
        \regs_matrix[11][2] , \regs_matrix[11][1] , \regs_matrix[11][0] }) );
  flex_sreg_NUM_BITS17_3 \genblk1[12].REGX  ( .clk(clk), .n_reset(n702), 
        .write_enable(write_enables[12]), .new_value({n696, n693, n691, n688, 
        n685, n682, n679, n675, n673, n671, n669, n666, n664, n661, n658, n655, 
        w_data[0]}), .current_value({\regs_matrix[12][16] , 
        \regs_matrix[12][15] , \regs_matrix[12][14] , \regs_matrix[12][13] , 
        \regs_matrix[12][12] , \regs_matrix[12][11] , \regs_matrix[12][10] , 
        \regs_matrix[12][9] , \regs_matrix[12][8] , \regs_matrix[12][7] , 
        \regs_matrix[12][6] , \regs_matrix[12][5] , \regs_matrix[12][4] , 
        \regs_matrix[12][3] , \regs_matrix[12][2] , \regs_matrix[12][1] , 
        \regs_matrix[12][0] }) );
  flex_sreg_NUM_BITS17_2 \genblk1[13].REGX  ( .clk(clk), .n_reset(n703), 
        .write_enable(write_enables[13]), .new_value({n61, n693, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[13][16] , \regs_matrix[13][15] , 
        \regs_matrix[13][14] , \regs_matrix[13][13] , \regs_matrix[13][12] , 
        \regs_matrix[13][11] , \regs_matrix[13][10] , \regs_matrix[13][9] , 
        \regs_matrix[13][8] , \regs_matrix[13][7] , \regs_matrix[13][6] , 
        \regs_matrix[13][5] , \regs_matrix[13][4] , \regs_matrix[13][3] , 
        \regs_matrix[13][2] , \regs_matrix[13][1] , \regs_matrix[13][0] }) );
  flex_sreg_NUM_BITS17_1 \genblk1[14].REGX  ( .clk(clk), .n_reset(n703), 
        .write_enable(write_enables[14]), .new_value({n62, n694, n691, n688, 
        n685, n682, n679, n676, n673, n671, n669, n666, n664, n661, n658, n655, 
        w_data[0]}), .current_value({\regs_matrix[14][16] , 
        \regs_matrix[14][15] , \regs_matrix[14][14] , \regs_matrix[14][13] , 
        \regs_matrix[14][12] , \regs_matrix[14][11] , \regs_matrix[14][10] , 
        \regs_matrix[14][9] , \regs_matrix[14][8] , \regs_matrix[14][7] , 
        \regs_matrix[14][6] , \regs_matrix[14][5] , \regs_matrix[14][4] , 
        \regs_matrix[14][3] , \regs_matrix[14][2] , \regs_matrix[14][1] , 
        \regs_matrix[14][0] }) );
  flex_sreg_NUM_BITS17_0 \genblk1[15].REGX  ( .clk(clk), .n_reset(n704), 
        .write_enable(write_enables[15]), .new_value({n696, n693, n690, n687, 
        n684, n681, n678, n675, n673, n671, n669, n667, n663, n660, n657, n654, 
        n652}), .current_value({\regs_matrix[15][16] , \regs_matrix[15][15] , 
        \regs_matrix[15][14] , \regs_matrix[15][13] , \regs_matrix[15][12] , 
        \regs_matrix[15][11] , \regs_matrix[15][10] , \regs_matrix[15][9] , 
        \regs_matrix[15][8] , \regs_matrix[15][7] , \regs_matrix[15][6] , 
        \regs_matrix[15][5] , \regs_matrix[15][4] , \regs_matrix[15][3] , 
        \regs_matrix[15][2] , \regs_matrix[15][1] , \regs_matrix[15][0] }) );
  INVX4 U2 ( .A(n28), .Y(r1_data[6]) );
  INVX4 U3 ( .A(n614), .Y(n617) );
  INVX4 U4 ( .A(n381), .Y(n641) );
  INVX8 U5 ( .A(n622), .Y(n623) );
  INVX4 U31 ( .A(n380), .Y(n637) );
  BUFX4 U32 ( .A(n330), .Y(n331) );
  INVX8 U33 ( .A(n80), .Y(r1_data[15]) );
  INVX8 U34 ( .A(n53), .Y(r1_data[11]) );
  INVX8 U35 ( .A(n347), .Y(n348) );
  INVX4 U36 ( .A(n100), .Y(n347) );
  BUFX4 U37 ( .A(n345), .Y(n1) );
  BUFX4 U38 ( .A(n345), .Y(n2) );
  BUFX4 U39 ( .A(n345), .Y(n3) );
  INVX2 U40 ( .A(n344), .Y(n345) );
  INVX8 U41 ( .A(n337), .Y(n339) );
  INVX4 U42 ( .A(w_data[14]), .Y(n689) );
  INVX4 U43 ( .A(w_data[6]), .Y(n668) );
  INVX4 U44 ( .A(w_data[8]), .Y(n672) );
  INVX4 U45 ( .A(w_data[11]), .Y(n680) );
  INVX4 U46 ( .A(w_data[7]), .Y(n670) );
  INVX4 U47 ( .A(w_data[9]), .Y(n674) );
  INVX4 U48 ( .A(w_data[12]), .Y(n683) );
  INVX4 U49 ( .A(w_data[10]), .Y(n677) );
  INVX4 U50 ( .A(n379), .Y(n633) );
  INVX8 U51 ( .A(n626), .Y(n627) );
  INVX4 U52 ( .A(n375), .Y(n626) );
  INVX2 U53 ( .A(n326), .Y(n360) );
  INVX4 U54 ( .A(n341), .Y(n342) );
  INVX2 U55 ( .A(n359), .Y(n358) );
  INVX2 U56 ( .A(n359), .Y(n357) );
  INVX4 U57 ( .A(n59), .Y(r2_data[9]) );
  INVX2 U58 ( .A(n711), .Y(n59) );
  INVX2 U59 ( .A(n65), .Y(n79) );
  INVX2 U60 ( .A(n101), .Y(n350) );
  INVX2 U61 ( .A(n95), .Y(n335) );
  INVX2 U62 ( .A(n96), .Y(n341) );
  INVX2 U63 ( .A(N17), .Y(n647) );
  INVX2 U64 ( .A(n32), .Y(r1_data[2]) );
  INVX2 U65 ( .A(n710), .Y(n57) );
  INVX2 U66 ( .A(n24), .Y(r1_data[13]) );
  INVX2 U67 ( .A(n350), .Y(n351) );
  INVX2 U68 ( .A(w_data[16]), .Y(n695) );
  INVX8 U69 ( .A(n668), .Y(n669) );
  INVX8 U70 ( .A(n672), .Y(n673) );
  NAND2X1 U71 ( .A(n459), .B(n4), .Y(n14) );
  NAND2X1 U72 ( .A(n458), .B(n647), .Y(n15) );
  NAND2X1 U73 ( .A(n14), .B(n15), .Y(n16) );
  INVX1 U74 ( .A(n647), .Y(n4) );
  INVX4 U75 ( .A(n16), .Y(r2_data[6]) );
  INVX8 U76 ( .A(n614), .Y(n17) );
  INVX4 U77 ( .A(N12), .Y(n362) );
  INVX1 U78 ( .A(n77), .Y(n18) );
  INVX1 U79 ( .A(n332), .Y(n19) );
  INVX1 U80 ( .A(n331), .Y(n20) );
  INVX4 U81 ( .A(n332), .Y(n333) );
  INVX4 U82 ( .A(n335), .Y(n338) );
  NAND2X1 U83 ( .A(n275), .B(n21), .Y(n22) );
  NAND2X1 U84 ( .A(n276), .B(n358), .Y(n23) );
  NAND2X1 U85 ( .A(n22), .B(n23), .Y(n24) );
  INVX1 U86 ( .A(n358), .Y(n21) );
  NAND2X1 U87 ( .A(n177), .B(n25), .Y(n26) );
  NAND2X1 U88 ( .A(n178), .B(n357), .Y(n27) );
  NAND2X1 U89 ( .A(n26), .B(n27), .Y(n28) );
  INVX2 U90 ( .A(n357), .Y(n25) );
  NAND2X1 U91 ( .A(n75), .B(n29), .Y(n30) );
  NAND2X1 U92 ( .A(n76), .B(n357), .Y(n31) );
  NAND2X1 U93 ( .A(n30), .B(n31), .Y(n32) );
  INVX1 U94 ( .A(n357), .Y(n29) );
  INVX2 U95 ( .A(n77), .Y(n33) );
  INVX1 U96 ( .A(n77), .Y(n34) );
  INVX1 U97 ( .A(n77), .Y(n35) );
  INVX1 U98 ( .A(n77), .Y(n36) );
  INVX1 U99 ( .A(n77), .Y(n37) );
  INVX1 U100 ( .A(n77), .Y(n38) );
  INVX1 U101 ( .A(n77), .Y(n39) );
  BUFX2 U102 ( .A(n33), .Y(n40) );
  BUFX2 U103 ( .A(n33), .Y(n41) );
  BUFX2 U104 ( .A(n33), .Y(n42) );
  BUFX2 U105 ( .A(n33), .Y(n43) );
  BUFX2 U106 ( .A(n33), .Y(n44) );
  BUFX2 U107 ( .A(n33), .Y(n45) );
  BUFX2 U108 ( .A(n33), .Y(n46) );
  INVX4 U109 ( .A(n362), .Y(n361) );
  AND2X2 U110 ( .A(n66), .B(n67), .Y(r2_data[10]) );
  AND2X2 U111 ( .A(n55), .B(n56), .Y(r2_data[5]) );
  INVX2 U112 ( .A(n647), .Y(n645) );
  INVX2 U113 ( .A(n376), .Y(n629) );
  AND2X2 U114 ( .A(N15), .B(N14), .Y(n49) );
  AND2X2 U115 ( .A(N15), .B(n609), .Y(n50) );
  INVX2 U116 ( .A(n647), .Y(n646) );
  INVX4 U117 ( .A(n350), .Y(n353) );
  INVX8 U118 ( .A(n633), .Y(n635) );
  INVX4 U119 ( .A(n665), .Y(n667) );
  INVX4 U120 ( .A(n665), .Y(n666) );
  BUFX4 U121 ( .A(n619), .Y(n620) );
  INVX1 U122 ( .A(n609), .Y(n51) );
  INVX1 U123 ( .A(n650), .Y(n52) );
  INVX4 U124 ( .A(n641), .Y(n642) );
  INVX2 U125 ( .A(n709), .Y(n53) );
  INVX4 U126 ( .A(n629), .Y(n632) );
  NAND2X1 U127 ( .A(n444), .B(n647), .Y(n55) );
  NAND2X1 U128 ( .A(n445), .B(n646), .Y(n56) );
  INVX8 U129 ( .A(n347), .Y(n349) );
  AND2X2 U130 ( .A(N10), .B(N11), .Y(n78) );
  INVX4 U131 ( .A(n79), .Y(n644) );
  BUFX4 U132 ( .A(n335), .Y(n336) );
  INVX4 U133 ( .A(n79), .Y(n64) );
  INVX4 U134 ( .A(n79), .Y(n73) );
  INVX4 U135 ( .A(n680), .Y(n681) );
  INVX4 U136 ( .A(n680), .Y(n682) );
  INVX4 U137 ( .A(n674), .Y(n675) );
  INVX4 U138 ( .A(n674), .Y(n676) );
  AND2X2 U139 ( .A(n50), .B(n608), .Y(n619) );
  INVX4 U140 ( .A(N14), .Y(n609) );
  BUFX4 U141 ( .A(n612), .Y(n613) );
  INVX8 U142 ( .A(n57), .Y(r1_data[8]) );
  INVX4 U143 ( .A(n354), .Y(n355) );
  INVX2 U144 ( .A(n695), .Y(n61) );
  INVX2 U145 ( .A(n695), .Y(n62) );
  INVX2 U146 ( .A(n641), .Y(n63) );
  INVX2 U147 ( .A(n354), .Y(n68) );
  INVX2 U148 ( .A(n641), .Y(n71) );
  MUX2X1 U149 ( .B(n473), .A(n472), .S(n647), .Y(r2_data[7]) );
  NAND2X1 U150 ( .A(n52), .B(n49), .Y(n65) );
  NAND2X1 U151 ( .A(n514), .B(n647), .Y(n66) );
  NAND2X1 U152 ( .A(n515), .B(n645), .Y(n67) );
  INVX2 U153 ( .A(n354), .Y(n69) );
  INVX2 U154 ( .A(n629), .Y(n70) );
  INVX2 U155 ( .A(n641), .Y(n72) );
  INVX4 U156 ( .A(n350), .Y(n352) );
  INVX8 U157 ( .A(n613), .Y(n618) );
  NAND2X1 U158 ( .A(n129), .B(n130), .Y(n75) );
  NAND2X1 U159 ( .A(n123), .B(n124), .Y(n76) );
  INVX2 U160 ( .A(w_data[5]), .Y(n665) );
  INVX2 U161 ( .A(w_data[3]), .Y(n659) );
  INVX2 U162 ( .A(w_data[2]), .Y(n656) );
  INVX2 U163 ( .A(w_data[4]), .Y(n662) );
  INVX2 U164 ( .A(w_data[1]), .Y(n653) );
  AND2X2 U165 ( .A(n361), .B(n78), .Y(n77) );
  INVX2 U166 ( .A(n641), .Y(n643) );
  INVX2 U167 ( .A(n695), .Y(n696) );
  INVX2 U168 ( .A(n629), .Y(n631) );
  INVX2 U169 ( .A(n629), .Y(n630) );
  MUX2X1 U170 ( .B(n81), .A(n82), .S(n358), .Y(n80) );
  AND2X2 U171 ( .A(n309), .B(n310), .Y(n81) );
  AND2X2 U172 ( .A(n303), .B(n304), .Y(n82) );
  INVX4 U173 ( .A(n692), .Y(n693) );
  INVX4 U174 ( .A(n677), .Y(n678) );
  INVX4 U175 ( .A(n677), .Y(n679) );
  INVX4 U176 ( .A(n686), .Y(n688) );
  INVX4 U177 ( .A(n686), .Y(n687) );
  INVX4 U178 ( .A(n683), .Y(n684) );
  INVX4 U179 ( .A(n683), .Y(n685) );
  INVX4 U180 ( .A(n689), .Y(n690) );
  INVX4 U181 ( .A(n689), .Y(n691) );
  INVX4 U182 ( .A(n692), .Y(n694) );
  INVX2 U183 ( .A(n659), .Y(n661) );
  INVX2 U184 ( .A(n656), .Y(n658) );
  INVX2 U185 ( .A(n659), .Y(n660) );
  INVX2 U186 ( .A(n656), .Y(n657) );
  INVX2 U187 ( .A(n662), .Y(n664) );
  INVX2 U188 ( .A(n662), .Y(n663) );
  INVX2 U189 ( .A(n653), .Y(n655) );
  INVX2 U190 ( .A(n653), .Y(n654) );
  INVX2 U191 ( .A(n651), .Y(n652) );
  INVX2 U192 ( .A(w_data[0]), .Y(n651) );
  BUFX2 U193 ( .A(n_reset), .Y(n697) );
  BUFX2 U194 ( .A(n_reset), .Y(n698) );
  BUFX2 U195 ( .A(n_reset), .Y(n699) );
  BUFX2 U196 ( .A(n_reset), .Y(n700) );
  BUFX2 U197 ( .A(n_reset), .Y(n701) );
  BUFX2 U198 ( .A(n_reset), .Y(n702) );
  BUFX2 U199 ( .A(n_reset), .Y(n703) );
  BUFX2 U200 ( .A(n_reset), .Y(n704) );
  AOI22X1 U201 ( .A(n86), .B(n85), .C(n84), .D(n83), .Y(n87) );
  INVX2 U202 ( .A(n87), .Y(r1_data[16]) );
  MUX2X1 U203 ( .B(n88), .A(n89), .S(n357), .Y(r1_data[0]) );
  NAND2X1 U204 ( .A(n90), .B(n91), .Y(n89) );
  NOR2X1 U205 ( .A(n92), .B(n93), .Y(n91) );
  OAI22X1 U206 ( .A(\regs_matrix[8][0] ), .B(n333), .C(\regs_matrix[10][0] ), 
        .D(n338), .Y(n93) );
  OAI22X1 U207 ( .A(\regs_matrix[12][0] ), .B(n342), .C(\regs_matrix[14][0] ), 
        .D(n346), .Y(n92) );
  NOR2X1 U208 ( .A(n98), .B(n99), .Y(n90) );
  OAI22X1 U209 ( .A(\regs_matrix[11][0] ), .B(n348), .C(\regs_matrix[9][0] ), 
        .D(n353), .Y(n99) );
  OAI22X1 U210 ( .A(\regs_matrix[13][0] ), .B(n355), .C(\regs_matrix[15][0] ), 
        .D(n18), .Y(n98) );
  NAND2X1 U211 ( .A(n103), .B(n104), .Y(n88) );
  NOR2X1 U212 ( .A(n106), .B(n105), .Y(n104) );
  OAI22X1 U213 ( .A(outreg_data[0]), .B(n333), .C(\regs_matrix[2][0] ), .D(
        n338), .Y(n106) );
  OAI22X1 U214 ( .A(\regs_matrix[4][0] ), .B(n342), .C(\regs_matrix[6][0] ), 
        .D(n346), .Y(n105) );
  NOR2X1 U215 ( .A(n107), .B(n108), .Y(n103) );
  OAI22X1 U216 ( .A(\regs_matrix[3][0] ), .B(n348), .C(\regs_matrix[1][0] ), 
        .D(n353), .Y(n108) );
  OAI22X1 U217 ( .A(\regs_matrix[5][0] ), .B(n356), .C(\regs_matrix[7][0] ), 
        .D(n37), .Y(n107) );
  MUX2X1 U218 ( .B(n109), .A(n110), .S(n358), .Y(r1_data[1]) );
  NAND2X1 U219 ( .A(n111), .B(n112), .Y(n110) );
  NOR2X1 U220 ( .A(n113), .B(n114), .Y(n112) );
  OAI22X1 U221 ( .A(\regs_matrix[8][1] ), .B(n333), .C(\regs_matrix[10][1] ), 
        .D(n338), .Y(n114) );
  OAI22X1 U222 ( .A(\regs_matrix[12][1] ), .B(n342), .C(\regs_matrix[14][1] ), 
        .D(n346), .Y(n113) );
  NOR2X1 U223 ( .A(n115), .B(n116), .Y(n111) );
  OAI22X1 U224 ( .A(\regs_matrix[11][1] ), .B(n348), .C(\regs_matrix[9][1] ), 
        .D(n353), .Y(n116) );
  OAI22X1 U225 ( .A(\regs_matrix[13][1] ), .B(n355), .C(\regs_matrix[15][1] ), 
        .D(n39), .Y(n115) );
  NAND2X1 U226 ( .A(n117), .B(n118), .Y(n109) );
  NOR2X1 U227 ( .A(n119), .B(n120), .Y(n118) );
  OAI22X1 U228 ( .A(outreg_data[1]), .B(n333), .C(\regs_matrix[2][1] ), .D(
        n338), .Y(n120) );
  OAI22X1 U229 ( .A(\regs_matrix[4][1] ), .B(n342), .C(\regs_matrix[6][1] ), 
        .D(n346), .Y(n119) );
  NOR2X1 U230 ( .A(n121), .B(n122), .Y(n117) );
  OAI22X1 U231 ( .A(\regs_matrix[3][1] ), .B(n348), .C(\regs_matrix[1][1] ), 
        .D(n353), .Y(n122) );
  OAI22X1 U232 ( .A(\regs_matrix[5][1] ), .B(n68), .C(\regs_matrix[7][1] ), 
        .D(n18), .Y(n121) );
  NOR2X1 U233 ( .A(n125), .B(n126), .Y(n124) );
  OAI22X1 U234 ( .A(\regs_matrix[8][2] ), .B(n19), .C(\regs_matrix[10][2] ), 
        .D(n338), .Y(n126) );
  OAI22X1 U235 ( .A(\regs_matrix[12][2] ), .B(n342), .C(\regs_matrix[14][2] ), 
        .D(n346), .Y(n125) );
  NOR2X1 U236 ( .A(n127), .B(n128), .Y(n123) );
  OAI22X1 U237 ( .A(\regs_matrix[11][2] ), .B(n348), .C(\regs_matrix[9][2] ), 
        .D(n353), .Y(n128) );
  OAI22X1 U238 ( .A(\regs_matrix[13][2] ), .B(n69), .C(\regs_matrix[15][2] ), 
        .D(n37), .Y(n127) );
  NOR2X1 U239 ( .A(n131), .B(n132), .Y(n130) );
  OAI22X1 U240 ( .A(outreg_data[2]), .B(n19), .C(\regs_matrix[2][2] ), .D(n338), .Y(n132) );
  OAI22X1 U241 ( .A(\regs_matrix[4][2] ), .B(n342), .C(\regs_matrix[6][2] ), 
        .D(n346), .Y(n131) );
  NOR2X1 U242 ( .A(n133), .B(n134), .Y(n129) );
  OAI22X1 U243 ( .A(\regs_matrix[3][2] ), .B(n348), .C(\regs_matrix[1][2] ), 
        .D(n353), .Y(n134) );
  OAI22X1 U244 ( .A(\regs_matrix[5][2] ), .B(n69), .C(\regs_matrix[7][2] ), 
        .D(n34), .Y(n133) );
  MUX2X1 U245 ( .B(n135), .A(n136), .S(n358), .Y(r1_data[3]) );
  NAND2X1 U246 ( .A(n137), .B(n138), .Y(n136) );
  NOR2X1 U247 ( .A(n139), .B(n140), .Y(n138) );
  OAI22X1 U248 ( .A(\regs_matrix[8][3] ), .B(n20), .C(\regs_matrix[10][3] ), 
        .D(n338), .Y(n140) );
  OAI22X1 U249 ( .A(\regs_matrix[12][3] ), .B(n342), .C(\regs_matrix[14][3] ), 
        .D(n346), .Y(n139) );
  NOR2X1 U250 ( .A(n141), .B(n142), .Y(n137) );
  OAI22X1 U251 ( .A(\regs_matrix[11][3] ), .B(n348), .C(\regs_matrix[9][3] ), 
        .D(n353), .Y(n142) );
  OAI22X1 U252 ( .A(\regs_matrix[13][3] ), .B(n68), .C(\regs_matrix[15][3] ), 
        .D(n38), .Y(n141) );
  NAND2X1 U253 ( .A(n143), .B(n144), .Y(n135) );
  NOR2X1 U254 ( .A(n145), .B(n146), .Y(n144) );
  OAI22X1 U255 ( .A(outreg_data[3]), .B(n20), .C(\regs_matrix[2][3] ), .D(n338), .Y(n146) );
  OAI22X1 U256 ( .A(\regs_matrix[4][3] ), .B(n342), .C(\regs_matrix[6][3] ), 
        .D(n346), .Y(n145) );
  NOR2X1 U257 ( .A(n147), .B(n148), .Y(n143) );
  OAI22X1 U258 ( .A(\regs_matrix[3][3] ), .B(n348), .C(\regs_matrix[1][3] ), 
        .D(n353), .Y(n148) );
  OAI22X1 U259 ( .A(\regs_matrix[5][3] ), .B(n355), .C(\regs_matrix[7][3] ), 
        .D(n36), .Y(n147) );
  MUX2X1 U260 ( .B(n149), .A(n150), .S(n357), .Y(r1_data[4]) );
  NAND2X1 U261 ( .A(n151), .B(n152), .Y(n150) );
  NOR2X1 U262 ( .A(n153), .B(n154), .Y(n152) );
  OAI22X1 U263 ( .A(\regs_matrix[8][4] ), .B(n334), .C(\regs_matrix[10][4] ), 
        .D(n339), .Y(n154) );
  OAI22X1 U264 ( .A(\regs_matrix[12][4] ), .B(n343), .C(\regs_matrix[14][4] ), 
        .D(n3), .Y(n153) );
  NOR2X1 U265 ( .A(n155), .B(n156), .Y(n151) );
  OAI22X1 U266 ( .A(\regs_matrix[11][4] ), .B(n349), .C(\regs_matrix[9][4] ), 
        .D(n353), .Y(n156) );
  OAI22X1 U267 ( .A(\regs_matrix[13][4] ), .B(n355), .C(\regs_matrix[15][4] ), 
        .D(n40), .Y(n155) );
  NAND2X1 U268 ( .A(n157), .B(n158), .Y(n149) );
  NOR2X1 U269 ( .A(n159), .B(n160), .Y(n158) );
  OAI22X1 U270 ( .A(outreg_data[4]), .B(n334), .C(\regs_matrix[2][4] ), .D(
        n339), .Y(n160) );
  OAI22X1 U271 ( .A(\regs_matrix[4][4] ), .B(n343), .C(\regs_matrix[6][4] ), 
        .D(n3), .Y(n159) );
  NOR2X1 U272 ( .A(n161), .B(n162), .Y(n157) );
  OAI22X1 U273 ( .A(\regs_matrix[3][4] ), .B(n349), .C(\regs_matrix[1][4] ), 
        .D(n353), .Y(n162) );
  OAI22X1 U274 ( .A(\regs_matrix[5][4] ), .B(n68), .C(\regs_matrix[7][4] ), 
        .D(n40), .Y(n161) );
  MUX2X1 U275 ( .B(n163), .A(n164), .S(n358), .Y(r1_data[5]) );
  NAND2X1 U276 ( .A(n165), .B(n166), .Y(n164) );
  NOR2X1 U277 ( .A(n167), .B(n168), .Y(n166) );
  OAI22X1 U278 ( .A(\regs_matrix[8][5] ), .B(n334), .C(\regs_matrix[10][5] ), 
        .D(n339), .Y(n168) );
  OAI22X1 U279 ( .A(\regs_matrix[12][5] ), .B(n343), .C(\regs_matrix[14][5] ), 
        .D(n2), .Y(n167) );
  NOR2X1 U280 ( .A(n169), .B(n170), .Y(n165) );
  OAI22X1 U281 ( .A(\regs_matrix[11][5] ), .B(n349), .C(\regs_matrix[9][5] ), 
        .D(n353), .Y(n170) );
  OAI22X1 U282 ( .A(\regs_matrix[13][5] ), .B(n69), .C(\regs_matrix[15][5] ), 
        .D(n39), .Y(n169) );
  NAND2X1 U283 ( .A(n171), .B(n172), .Y(n163) );
  NOR2X1 U284 ( .A(n173), .B(n174), .Y(n172) );
  OAI22X1 U285 ( .A(outreg_data[5]), .B(n334), .C(\regs_matrix[2][5] ), .D(
        n339), .Y(n174) );
  OAI22X1 U286 ( .A(\regs_matrix[4][5] ), .B(n343), .C(\regs_matrix[6][5] ), 
        .D(n2), .Y(n173) );
  NOR2X1 U287 ( .A(n175), .B(n176), .Y(n171) );
  OAI22X1 U288 ( .A(\regs_matrix[3][5] ), .B(n349), .C(\regs_matrix[1][5] ), 
        .D(n353), .Y(n176) );
  OAI22X1 U289 ( .A(\regs_matrix[5][5] ), .B(n356), .C(\regs_matrix[7][5] ), 
        .D(n34), .Y(n175) );
  NAND2X1 U290 ( .A(n179), .B(n180), .Y(n178) );
  NOR2X1 U291 ( .A(n181), .B(n182), .Y(n180) );
  OAI22X1 U292 ( .A(\regs_matrix[8][6] ), .B(n334), .C(\regs_matrix[10][6] ), 
        .D(n339), .Y(n182) );
  OAI22X1 U293 ( .A(\regs_matrix[12][6] ), .B(n343), .C(\regs_matrix[14][6] ), 
        .D(n1), .Y(n181) );
  NOR2X1 U294 ( .A(n183), .B(n184), .Y(n179) );
  OAI22X1 U295 ( .A(\regs_matrix[11][6] ), .B(n349), .C(\regs_matrix[9][6] ), 
        .D(n352), .Y(n184) );
  OAI22X1 U296 ( .A(\regs_matrix[13][6] ), .B(n355), .C(\regs_matrix[15][6] ), 
        .D(n34), .Y(n183) );
  NAND2X1 U297 ( .A(n185), .B(n186), .Y(n177) );
  NOR2X1 U298 ( .A(n187), .B(n188), .Y(n186) );
  OAI22X1 U299 ( .A(outreg_data[6]), .B(n334), .C(\regs_matrix[2][6] ), .D(
        n339), .Y(n188) );
  OAI22X1 U300 ( .A(\regs_matrix[4][6] ), .B(n343), .C(\regs_matrix[6][6] ), 
        .D(n1), .Y(n187) );
  NOR2X1 U301 ( .A(n189), .B(n190), .Y(n185) );
  OAI22X1 U302 ( .A(\regs_matrix[3][6] ), .B(n349), .C(\regs_matrix[1][6] ), 
        .D(n352), .Y(n190) );
  OAI22X1 U303 ( .A(\regs_matrix[5][6] ), .B(n356), .C(\regs_matrix[7][6] ), 
        .D(n36), .Y(n189) );
  MUX2X1 U304 ( .B(n191), .A(n192), .S(n358), .Y(r1_data[7]) );
  NAND2X1 U305 ( .A(n193), .B(n194), .Y(n192) );
  NOR2X1 U306 ( .A(n195), .B(n196), .Y(n194) );
  OAI22X1 U307 ( .A(\regs_matrix[8][7] ), .B(n334), .C(\regs_matrix[10][7] ), 
        .D(n339), .Y(n196) );
  OAI22X1 U308 ( .A(\regs_matrix[12][7] ), .B(n343), .C(\regs_matrix[14][7] ), 
        .D(n3), .Y(n195) );
  NOR2X1 U309 ( .A(n197), .B(n198), .Y(n193) );
  OAI22X1 U310 ( .A(\regs_matrix[11][7] ), .B(n349), .C(\regs_matrix[9][7] ), 
        .D(n352), .Y(n198) );
  OAI22X1 U311 ( .A(\regs_matrix[13][7] ), .B(n69), .C(\regs_matrix[15][7] ), 
        .D(n41), .Y(n197) );
  NAND2X1 U312 ( .A(n199), .B(n200), .Y(n191) );
  NOR2X1 U313 ( .A(n201), .B(n202), .Y(n200) );
  OAI22X1 U314 ( .A(outreg_data[7]), .B(n334), .C(\regs_matrix[2][7] ), .D(
        n339), .Y(n202) );
  OAI22X1 U315 ( .A(\regs_matrix[4][7] ), .B(n343), .C(\regs_matrix[6][7] ), 
        .D(n2), .Y(n201) );
  NOR2X1 U316 ( .A(n203), .B(n204), .Y(n199) );
  OAI22X1 U317 ( .A(\regs_matrix[3][7] ), .B(n349), .C(\regs_matrix[1][7] ), 
        .D(n352), .Y(n204) );
  OAI22X1 U318 ( .A(\regs_matrix[5][7] ), .B(n355), .C(\regs_matrix[7][7] ), 
        .D(n40), .Y(n203) );
  MUX2X1 U319 ( .B(n205), .A(n206), .S(n357), .Y(n710) );
  NAND2X1 U320 ( .A(n207), .B(n208), .Y(n206) );
  NOR2X1 U321 ( .A(n209), .B(n210), .Y(n208) );
  OAI22X1 U322 ( .A(\regs_matrix[8][8] ), .B(n334), .C(\regs_matrix[10][8] ), 
        .D(n339), .Y(n210) );
  OAI22X1 U323 ( .A(\regs_matrix[12][8] ), .B(n343), .C(\regs_matrix[14][8] ), 
        .D(n3), .Y(n209) );
  NOR2X1 U324 ( .A(n211), .B(n212), .Y(n207) );
  OAI22X1 U325 ( .A(\regs_matrix[11][8] ), .B(n349), .C(\regs_matrix[9][8] ), 
        .D(n352), .Y(n212) );
  OAI22X1 U326 ( .A(\regs_matrix[13][8] ), .B(n355), .C(\regs_matrix[15][8] ), 
        .D(n35), .Y(n211) );
  NAND2X1 U327 ( .A(n213), .B(n214), .Y(n205) );
  NOR2X1 U328 ( .A(n215), .B(n216), .Y(n214) );
  OAI22X1 U329 ( .A(outreg_data[8]), .B(n334), .C(\regs_matrix[2][8] ), .D(
        n339), .Y(n216) );
  OAI22X1 U330 ( .A(\regs_matrix[4][8] ), .B(n343), .C(\regs_matrix[6][8] ), 
        .D(n346), .Y(n215) );
  NOR2X1 U331 ( .A(n217), .B(n218), .Y(n213) );
  OAI22X1 U332 ( .A(\regs_matrix[3][8] ), .B(n349), .C(\regs_matrix[1][8] ), 
        .D(n352), .Y(n218) );
  OAI22X1 U333 ( .A(\regs_matrix[5][8] ), .B(n356), .C(\regs_matrix[7][8] ), 
        .D(n38), .Y(n217) );
  MUX2X1 U334 ( .B(n219), .A(n220), .S(n358), .Y(r1_data[9]) );
  NAND2X1 U335 ( .A(n221), .B(n222), .Y(n220) );
  NOR2X1 U336 ( .A(n223), .B(n224), .Y(n222) );
  OAI22X1 U337 ( .A(\regs_matrix[8][9] ), .B(n334), .C(\regs_matrix[10][9] ), 
        .D(n339), .Y(n224) );
  OAI22X1 U338 ( .A(\regs_matrix[12][9] ), .B(n343), .C(\regs_matrix[14][9] ), 
        .D(n2), .Y(n223) );
  NOR2X1 U339 ( .A(n225), .B(n226), .Y(n221) );
  OAI22X1 U340 ( .A(\regs_matrix[11][9] ), .B(n349), .C(\regs_matrix[9][9] ), 
        .D(n352), .Y(n226) );
  OAI22X1 U341 ( .A(\regs_matrix[13][9] ), .B(n355), .C(\regs_matrix[15][9] ), 
        .D(n42), .Y(n225) );
  NAND2X1 U342 ( .A(n227), .B(n228), .Y(n219) );
  NOR2X1 U343 ( .A(n229), .B(n230), .Y(n228) );
  OAI22X1 U344 ( .A(outreg_data[9]), .B(n334), .C(\regs_matrix[2][9] ), .D(
        n339), .Y(n230) );
  OAI22X1 U345 ( .A(\regs_matrix[4][9] ), .B(n343), .C(\regs_matrix[6][9] ), 
        .D(n346), .Y(n229) );
  NOR2X1 U346 ( .A(n231), .B(n232), .Y(n227) );
  OAI22X1 U347 ( .A(\regs_matrix[3][9] ), .B(n349), .C(\regs_matrix[1][9] ), 
        .D(n352), .Y(n232) );
  OAI22X1 U348 ( .A(\regs_matrix[5][9] ), .B(n69), .C(\regs_matrix[7][9] ), 
        .D(n35), .Y(n231) );
  MUX2X1 U349 ( .B(n233), .A(n234), .S(n357), .Y(r1_data[10]) );
  NAND2X1 U350 ( .A(n235), .B(n236), .Y(n234) );
  NOR2X1 U351 ( .A(n237), .B(n238), .Y(n236) );
  OAI22X1 U352 ( .A(\regs_matrix[8][10] ), .B(n334), .C(\regs_matrix[10][10] ), 
        .D(n340), .Y(n238) );
  OAI22X1 U353 ( .A(\regs_matrix[12][10] ), .B(n343), .C(\regs_matrix[14][10] ), .D(n346), .Y(n237) );
  NOR2X1 U354 ( .A(n239), .B(n240), .Y(n235) );
  OAI22X1 U355 ( .A(\regs_matrix[11][10] ), .B(n349), .C(\regs_matrix[9][10] ), 
        .D(n352), .Y(n240) );
  OAI22X1 U356 ( .A(\regs_matrix[13][10] ), .B(n355), .C(\regs_matrix[15][10] ), .D(n38), .Y(n239) );
  NAND2X1 U357 ( .A(n241), .B(n242), .Y(n233) );
  NOR2X1 U358 ( .A(n243), .B(n244), .Y(n242) );
  OAI22X1 U359 ( .A(outreg_data[10]), .B(n334), .C(\regs_matrix[2][10] ), .D(
        n340), .Y(n244) );
  OAI22X1 U360 ( .A(\regs_matrix[4][10] ), .B(n343), .C(\regs_matrix[6][10] ), 
        .D(n346), .Y(n243) );
  NOR2X1 U361 ( .A(n245), .B(n246), .Y(n241) );
  OAI22X1 U362 ( .A(\regs_matrix[3][10] ), .B(n349), .C(\regs_matrix[1][10] ), 
        .D(n352), .Y(n246) );
  OAI22X1 U363 ( .A(\regs_matrix[5][10] ), .B(n356), .C(\regs_matrix[7][10] ), 
        .D(n36), .Y(n245) );
  MUX2X1 U364 ( .B(n247), .A(n248), .S(n358), .Y(n709) );
  NAND2X1 U365 ( .A(n249), .B(n250), .Y(n248) );
  NOR2X1 U366 ( .A(n251), .B(n252), .Y(n250) );
  OAI22X1 U367 ( .A(\regs_matrix[8][11] ), .B(n334), .C(\regs_matrix[10][11] ), 
        .D(n340), .Y(n252) );
  OAI22X1 U368 ( .A(\regs_matrix[12][11] ), .B(n343), .C(\regs_matrix[14][11] ), .D(n346), .Y(n251) );
  NOR2X1 U369 ( .A(n253), .B(n254), .Y(n249) );
  OAI22X1 U370 ( .A(\regs_matrix[11][11] ), .B(n349), .C(\regs_matrix[9][11] ), 
        .D(n352), .Y(n254) );
  OAI22X1 U371 ( .A(\regs_matrix[13][11] ), .B(n68), .C(\regs_matrix[15][11] ), 
        .D(n41), .Y(n253) );
  NAND2X1 U372 ( .A(n255), .B(n256), .Y(n247) );
  NOR2X1 U373 ( .A(n257), .B(n258), .Y(n256) );
  OAI22X1 U374 ( .A(outreg_data[11]), .B(n334), .C(\regs_matrix[2][11] ), .D(
        n340), .Y(n258) );
  OAI22X1 U375 ( .A(\regs_matrix[4][11] ), .B(n343), .C(\regs_matrix[6][11] ), 
        .D(n346), .Y(n257) );
  NOR2X1 U376 ( .A(n259), .B(n260), .Y(n255) );
  OAI22X1 U377 ( .A(\regs_matrix[3][11] ), .B(n349), .C(\regs_matrix[1][11] ), 
        .D(n352), .Y(n260) );
  OAI22X1 U378 ( .A(\regs_matrix[5][11] ), .B(n356), .C(\regs_matrix[7][11] ), 
        .D(n44), .Y(n259) );
  MUX2X1 U379 ( .B(n261), .A(n262), .S(n357), .Y(r1_data[12]) );
  NAND2X1 U380 ( .A(n263), .B(n264), .Y(n262) );
  NOR2X1 U381 ( .A(n265), .B(n266), .Y(n264) );
  OAI22X1 U382 ( .A(\regs_matrix[8][12] ), .B(n334), .C(\regs_matrix[10][12] ), 
        .D(n340), .Y(n266) );
  OAI22X1 U383 ( .A(\regs_matrix[12][12] ), .B(n343), .C(\regs_matrix[14][12] ), .D(n1), .Y(n265) );
  NOR2X1 U384 ( .A(n267), .B(n268), .Y(n263) );
  OAI22X1 U385 ( .A(\regs_matrix[11][12] ), .B(n349), .C(\regs_matrix[9][12] ), 
        .D(n351), .Y(n268) );
  OAI22X1 U386 ( .A(\regs_matrix[13][12] ), .B(n356), .C(\regs_matrix[15][12] ), .D(n43), .Y(n267) );
  NAND2X1 U387 ( .A(n269), .B(n270), .Y(n261) );
  NOR2X1 U388 ( .A(n271), .B(n272), .Y(n270) );
  OAI22X1 U389 ( .A(outreg_data[12]), .B(n334), .C(\regs_matrix[2][12] ), .D(
        n340), .Y(n272) );
  OAI22X1 U390 ( .A(\regs_matrix[4][12] ), .B(n343), .C(\regs_matrix[6][12] ), 
        .D(n1), .Y(n271) );
  NOR2X1 U391 ( .A(n273), .B(n274), .Y(n269) );
  OAI22X1 U392 ( .A(\regs_matrix[3][12] ), .B(n349), .C(\regs_matrix[1][12] ), 
        .D(n351), .Y(n274) );
  OAI22X1 U393 ( .A(\regs_matrix[5][12] ), .B(n356), .C(\regs_matrix[7][12] ), 
        .D(n46), .Y(n273) );
  NAND2X1 U394 ( .A(n277), .B(n278), .Y(n276) );
  NOR2X1 U395 ( .A(n279), .B(n280), .Y(n278) );
  OAI22X1 U396 ( .A(\regs_matrix[8][13] ), .B(n334), .C(\regs_matrix[10][13] ), 
        .D(n340), .Y(n280) );
  OAI22X1 U397 ( .A(\regs_matrix[12][13] ), .B(n343), .C(\regs_matrix[14][13] ), .D(n346), .Y(n279) );
  NOR2X1 U398 ( .A(n281), .B(n282), .Y(n277) );
  OAI22X1 U399 ( .A(\regs_matrix[11][13] ), .B(n349), .C(\regs_matrix[9][13] ), 
        .D(n351), .Y(n282) );
  OAI22X1 U400 ( .A(\regs_matrix[13][13] ), .B(n356), .C(\regs_matrix[15][13] ), .D(n35), .Y(n281) );
  NAND2X1 U401 ( .A(n283), .B(n284), .Y(n275) );
  NOR2X1 U402 ( .A(n285), .B(n286), .Y(n284) );
  OAI22X1 U403 ( .A(outreg_data[13]), .B(n334), .C(\regs_matrix[2][13] ), .D(
        n340), .Y(n286) );
  OAI22X1 U404 ( .A(\regs_matrix[4][13] ), .B(n343), .C(\regs_matrix[6][13] ), 
        .D(n346), .Y(n285) );
  NOR2X1 U405 ( .A(n287), .B(n288), .Y(n283) );
  OAI22X1 U406 ( .A(\regs_matrix[3][13] ), .B(n349), .C(\regs_matrix[1][13] ), 
        .D(n351), .Y(n288) );
  OAI22X1 U407 ( .A(n355), .B(\regs_matrix[5][13] ), .C(\regs_matrix[7][13] ), 
        .D(n45), .Y(n287) );
  MUX2X1 U408 ( .B(n289), .A(n290), .S(n357), .Y(r1_data[14]) );
  NAND2X1 U409 ( .A(n291), .B(n292), .Y(n290) );
  NOR2X1 U410 ( .A(n293), .B(n294), .Y(n292) );
  OAI22X1 U411 ( .A(\regs_matrix[8][14] ), .B(n334), .C(\regs_matrix[10][14] ), 
        .D(n340), .Y(n294) );
  OAI22X1 U412 ( .A(\regs_matrix[12][14] ), .B(n343), .C(\regs_matrix[14][14] ), .D(n3), .Y(n293) );
  NOR2X1 U413 ( .A(n295), .B(n296), .Y(n291) );
  OAI22X1 U414 ( .A(\regs_matrix[11][14] ), .B(n349), .C(\regs_matrix[9][14] ), 
        .D(n351), .Y(n296) );
  OAI22X1 U415 ( .A(\regs_matrix[13][14] ), .B(n68), .C(\regs_matrix[15][14] ), 
        .D(n42), .Y(n295) );
  NAND2X1 U416 ( .A(n297), .B(n298), .Y(n289) );
  NOR2X1 U417 ( .A(n299), .B(n300), .Y(n298) );
  OAI22X1 U418 ( .A(outreg_data[14]), .B(n334), .C(\regs_matrix[2][14] ), .D(
        n340), .Y(n300) );
  OAI22X1 U419 ( .A(\regs_matrix[4][14] ), .B(n343), .C(\regs_matrix[6][14] ), 
        .D(n2), .Y(n299) );
  NOR2X1 U420 ( .A(n301), .B(n302), .Y(n297) );
  OAI22X1 U421 ( .A(\regs_matrix[3][14] ), .B(n349), .C(\regs_matrix[1][14] ), 
        .D(n351), .Y(n302) );
  OAI22X1 U422 ( .A(\regs_matrix[5][14] ), .B(n69), .C(\regs_matrix[7][14] ), 
        .D(n38), .Y(n301) );
  NOR2X1 U423 ( .A(n305), .B(n306), .Y(n304) );
  OAI22X1 U424 ( .A(\regs_matrix[8][15] ), .B(n334), .C(\regs_matrix[10][15] ), 
        .D(n340), .Y(n306) );
  OAI22X1 U425 ( .A(\regs_matrix[12][15] ), .B(n343), .C(\regs_matrix[14][15] ), .D(n346), .Y(n305) );
  NOR2X1 U426 ( .A(n307), .B(n308), .Y(n303) );
  OAI22X1 U427 ( .A(\regs_matrix[11][15] ), .B(n349), .C(\regs_matrix[9][15] ), 
        .D(n351), .Y(n308) );
  OAI22X1 U428 ( .A(\regs_matrix[13][15] ), .B(n356), .C(\regs_matrix[15][15] ), .D(n44), .Y(n307) );
  NOR2X1 U429 ( .A(n311), .B(n312), .Y(n310) );
  OAI22X1 U430 ( .A(outreg_data[15]), .B(n334), .C(\regs_matrix[2][15] ), .D(
        n340), .Y(n312) );
  OAI22X1 U431 ( .A(\regs_matrix[4][15] ), .B(n343), .C(\regs_matrix[6][15] ), 
        .D(n3), .Y(n311) );
  NOR2X1 U432 ( .A(n313), .B(n314), .Y(n309) );
  OAI22X1 U433 ( .A(\regs_matrix[3][15] ), .B(n349), .C(\regs_matrix[1][15] ), 
        .D(n351), .Y(n314) );
  OAI22X1 U434 ( .A(\regs_matrix[5][15] ), .B(n69), .C(\regs_matrix[7][15] ), 
        .D(n45), .Y(n313) );
  NOR2X1 U435 ( .A(n315), .B(n316), .Y(n83) );
  OAI21X1 U436 ( .A(\regs_matrix[6][16] ), .B(n3), .C(n317), .Y(n316) );
  AOI22X1 U437 ( .A(n337), .B(n318), .C(n332), .D(n319), .Y(n317) );
  INVX2 U438 ( .A(outreg_data[16]), .Y(n319) );
  INVX2 U439 ( .A(\regs_matrix[2][16] ), .Y(n318) );
  OAI21X1 U440 ( .A(\regs_matrix[4][16] ), .B(n343), .C(n359), .Y(n315) );
  NOR2X1 U441 ( .A(n320), .B(n321), .Y(n84) );
  OAI22X1 U442 ( .A(\regs_matrix[3][16] ), .B(n349), .C(\regs_matrix[1][16] ), 
        .D(n351), .Y(n321) );
  OAI22X1 U443 ( .A(\regs_matrix[5][16] ), .B(n355), .C(\regs_matrix[7][16] ), 
        .D(n43), .Y(n320) );
  NOR2X1 U444 ( .A(n322), .B(n323), .Y(n85) );
  OAI21X1 U445 ( .A(\regs_matrix[12][16] ), .B(n343), .C(n324), .Y(n323) );
  AOI22X1 U446 ( .A(n337), .B(n325), .C(n332), .D(n606), .Y(n324) );
  NAND3X1 U447 ( .A(n326), .B(n362), .C(n327), .Y(n94) );
  INVX2 U448 ( .A(\regs_matrix[10][16] ), .Y(n325) );
  NAND3X1 U449 ( .A(n360), .B(n362), .C(n327), .Y(n95) );
  NAND3X1 U450 ( .A(n361), .B(n326), .C(n327), .Y(n96) );
  OAI22X1 U451 ( .A(\regs_matrix[9][16] ), .B(n351), .C(\regs_matrix[14][16] ), 
        .D(n2), .Y(n322) );
  NAND3X1 U452 ( .A(n361), .B(n360), .C(n327), .Y(n97) );
  INVX2 U453 ( .A(N10), .Y(n327) );
  NAND3X1 U454 ( .A(N10), .B(n362), .C(n326), .Y(n101) );
  NOR2X1 U455 ( .A(n328), .B(n329), .Y(n86) );
  OAI21X1 U456 ( .A(\regs_matrix[11][16] ), .B(n349), .C(n357), .Y(n329) );
  NAND2X1 U457 ( .A(n78), .B(n362), .Y(n100) );
  OAI22X1 U458 ( .A(\regs_matrix[15][16] ), .B(n46), .C(\regs_matrix[13][16] ), 
        .D(n356), .Y(n328) );
  NAND3X1 U459 ( .A(n361), .B(N10), .C(n326), .Y(n102) );
  BUFX4 U460 ( .A(n330), .Y(n332) );
  INVX8 U461 ( .A(n331), .Y(n334) );
  BUFX4 U462 ( .A(n335), .Y(n337) );
  INVX8 U463 ( .A(n336), .Y(n340) );
  INVX8 U464 ( .A(n341), .Y(n343) );
  INVX8 U465 ( .A(n344), .Y(n346) );
  INVX2 U466 ( .A(n94), .Y(n330) );
  INVX4 U467 ( .A(n102), .Y(n354) );
  INVX4 U468 ( .A(n354), .Y(n356) );
  INVX4 U469 ( .A(N11), .Y(n326) );
  INVX4 U470 ( .A(n97), .Y(n344) );
  INVX1 U471 ( .A(N13), .Y(n359) );
  AOI22X1 U472 ( .A(n366), .B(n365), .C(n364), .D(n363), .Y(n367) );
  INVX2 U473 ( .A(n367), .Y(r2_data[16]) );
  MUX2X1 U474 ( .B(n368), .A(n369), .S(n645), .Y(r2_data[0]) );
  NAND2X1 U475 ( .A(n370), .B(n371), .Y(n369) );
  NOR2X1 U476 ( .A(n372), .B(n373), .Y(n371) );
  OAI22X1 U477 ( .A(\regs_matrix[8][0] ), .B(n616), .C(\regs_matrix[10][0] ), 
        .D(n623), .Y(n373) );
  OAI22X1 U478 ( .A(\regs_matrix[12][0] ), .B(n627), .C(\regs_matrix[14][0] ), 
        .D(n70), .Y(n372) );
  NOR2X1 U479 ( .A(n377), .B(n378), .Y(n370) );
  OAI22X1 U480 ( .A(\regs_matrix[11][0] ), .B(n635), .C(\regs_matrix[9][0] ), 
        .D(n638), .Y(n378) );
  OAI22X1 U481 ( .A(\regs_matrix[13][0] ), .B(n71), .C(\regs_matrix[15][0] ), 
        .D(n73), .Y(n377) );
  NAND2X1 U482 ( .A(n382), .B(n383), .Y(n368) );
  NOR2X1 U483 ( .A(n384), .B(n385), .Y(n383) );
  OAI22X1 U484 ( .A(outreg_data[0]), .B(n616), .C(\regs_matrix[2][0] ), .D(
        n623), .Y(n385) );
  OAI22X1 U485 ( .A(\regs_matrix[4][0] ), .B(n628), .C(\regs_matrix[6][0] ), 
        .D(n632), .Y(n384) );
  NOR2X1 U486 ( .A(n386), .B(n387), .Y(n382) );
  OAI22X1 U487 ( .A(\regs_matrix[3][0] ), .B(n636), .C(\regs_matrix[1][0] ), 
        .D(n640), .Y(n387) );
  OAI22X1 U488 ( .A(\regs_matrix[5][0] ), .B(n63), .C(\regs_matrix[7][0] ), 
        .D(n644), .Y(n386) );
  MUX2X1 U489 ( .B(n388), .A(n389), .S(n646), .Y(r2_data[1]) );
  NAND2X1 U490 ( .A(n390), .B(n391), .Y(n389) );
  NOR2X1 U491 ( .A(n392), .B(n393), .Y(n391) );
  OAI22X1 U492 ( .A(\regs_matrix[8][1] ), .B(n616), .C(\regs_matrix[10][1] ), 
        .D(n623), .Y(n393) );
  OAI22X1 U493 ( .A(\regs_matrix[12][1] ), .B(n627), .C(\regs_matrix[14][1] ), 
        .D(n632), .Y(n392) );
  NOR2X1 U494 ( .A(n394), .B(n395), .Y(n390) );
  OAI22X1 U495 ( .A(\regs_matrix[11][1] ), .B(n634), .C(\regs_matrix[9][1] ), 
        .D(n639), .Y(n395) );
  OAI22X1 U496 ( .A(\regs_matrix[13][1] ), .B(n642), .C(\regs_matrix[15][1] ), 
        .D(n64), .Y(n394) );
  NAND2X1 U497 ( .A(n396), .B(n397), .Y(n388) );
  NOR2X1 U498 ( .A(n398), .B(n399), .Y(n397) );
  OAI22X1 U499 ( .A(outreg_data[1]), .B(n616), .C(\regs_matrix[2][1] ), .D(
        n623), .Y(n399) );
  OAI22X1 U500 ( .A(\regs_matrix[4][1] ), .B(n627), .C(\regs_matrix[6][1] ), 
        .D(n632), .Y(n398) );
  NOR2X1 U501 ( .A(n400), .B(n401), .Y(n396) );
  OAI22X1 U502 ( .A(\regs_matrix[3][1] ), .B(n634), .C(\regs_matrix[1][1] ), 
        .D(n639), .Y(n401) );
  OAI22X1 U503 ( .A(\regs_matrix[5][1] ), .B(n642), .C(\regs_matrix[7][1] ), 
        .D(n64), .Y(n400) );
  MUX2X1 U504 ( .B(n402), .A(n403), .S(n645), .Y(r2_data[2]) );
  NAND2X1 U505 ( .A(n404), .B(n405), .Y(n403) );
  NOR2X1 U506 ( .A(n406), .B(n407), .Y(n405) );
  OAI22X1 U507 ( .A(\regs_matrix[8][2] ), .B(n616), .C(\regs_matrix[10][2] ), 
        .D(n624), .Y(n407) );
  OAI22X1 U508 ( .A(\regs_matrix[12][2] ), .B(n627), .C(\regs_matrix[14][2] ), 
        .D(n632), .Y(n406) );
  NOR2X1 U509 ( .A(n408), .B(n409), .Y(n404) );
  OAI22X1 U510 ( .A(\regs_matrix[11][2] ), .B(n635), .C(\regs_matrix[9][2] ), 
        .D(n638), .Y(n409) );
  OAI22X1 U511 ( .A(\regs_matrix[13][2] ), .B(n71), .C(\regs_matrix[15][2] ), 
        .D(n73), .Y(n408) );
  NAND2X1 U512 ( .A(n410), .B(n411), .Y(n402) );
  NOR2X1 U513 ( .A(n412), .B(n413), .Y(n411) );
  OAI22X1 U514 ( .A(outreg_data[2]), .B(n616), .C(\regs_matrix[2][2] ), .D(
        n623), .Y(n413) );
  OAI22X1 U515 ( .A(\regs_matrix[4][2] ), .B(n628), .C(\regs_matrix[6][2] ), 
        .D(n631), .Y(n412) );
  NOR2X1 U516 ( .A(n414), .B(n415), .Y(n410) );
  OAI22X1 U517 ( .A(\regs_matrix[3][2] ), .B(n635), .C(\regs_matrix[1][2] ), 
        .D(n640), .Y(n415) );
  OAI22X1 U518 ( .A(\regs_matrix[5][2] ), .B(n71), .C(\regs_matrix[7][2] ), 
        .D(n64), .Y(n414) );
  MUX2X1 U519 ( .B(n416), .A(n417), .S(n646), .Y(r2_data[3]) );
  NAND2X1 U520 ( .A(n419), .B(n418), .Y(n417) );
  NOR2X1 U521 ( .A(n420), .B(n421), .Y(n419) );
  OAI22X1 U522 ( .A(\regs_matrix[8][3] ), .B(n616), .C(\regs_matrix[10][3] ), 
        .D(n623), .Y(n421) );
  OAI22X1 U523 ( .A(\regs_matrix[12][3] ), .B(n627), .C(\regs_matrix[14][3] ), 
        .D(n632), .Y(n420) );
  NOR2X1 U524 ( .A(n422), .B(n423), .Y(n418) );
  OAI22X1 U525 ( .A(\regs_matrix[11][3] ), .B(n635), .C(\regs_matrix[9][3] ), 
        .D(n638), .Y(n423) );
  OAI22X1 U526 ( .A(\regs_matrix[13][3] ), .B(n642), .C(\regs_matrix[15][3] ), 
        .D(n644), .Y(n422) );
  NAND2X1 U527 ( .A(n425), .B(n424), .Y(n416) );
  NOR2X1 U528 ( .A(n426), .B(n427), .Y(n425) );
  OAI22X1 U529 ( .A(outreg_data[3]), .B(n616), .C(\regs_matrix[2][3] ), .D(
        n623), .Y(n427) );
  OAI22X1 U530 ( .A(\regs_matrix[4][3] ), .B(n627), .C(\regs_matrix[6][3] ), 
        .D(n632), .Y(n426) );
  NOR2X1 U531 ( .A(n428), .B(n429), .Y(n424) );
  OAI22X1 U532 ( .A(\regs_matrix[3][3] ), .B(n636), .C(\regs_matrix[1][3] ), 
        .D(n640), .Y(n429) );
  OAI22X1 U533 ( .A(\regs_matrix[5][3] ), .B(n63), .C(\regs_matrix[7][3] ), 
        .D(n73), .Y(n428) );
  MUX2X1 U534 ( .B(n430), .A(n431), .S(n645), .Y(r2_data[4]) );
  NAND2X1 U535 ( .A(n432), .B(n433), .Y(n431) );
  NOR2X1 U536 ( .A(n434), .B(n435), .Y(n433) );
  OAI22X1 U537 ( .A(\regs_matrix[8][4] ), .B(n17), .C(\regs_matrix[10][4] ), 
        .D(n624), .Y(n435) );
  OAI22X1 U538 ( .A(\regs_matrix[12][4] ), .B(n627), .C(\regs_matrix[14][4] ), 
        .D(n630), .Y(n434) );
  NOR2X1 U539 ( .A(n436), .B(n437), .Y(n432) );
  OAI22X1 U540 ( .A(\regs_matrix[11][4] ), .B(n635), .C(\regs_matrix[9][4] ), 
        .D(n639), .Y(n437) );
  OAI22X1 U541 ( .A(\regs_matrix[13][4] ), .B(n71), .C(\regs_matrix[15][4] ), 
        .D(n644), .Y(n436) );
  NAND2X1 U542 ( .A(n438), .B(n439), .Y(n430) );
  NOR2X1 U543 ( .A(n440), .B(n441), .Y(n439) );
  OAI22X1 U544 ( .A(outreg_data[4]), .B(n17), .C(\regs_matrix[2][4] ), .D(n624), .Y(n441) );
  OAI22X1 U545 ( .A(\regs_matrix[4][4] ), .B(n628), .C(\regs_matrix[6][4] ), 
        .D(n632), .Y(n440) );
  NOR2X1 U546 ( .A(n442), .B(n443), .Y(n438) );
  OAI22X1 U547 ( .A(\regs_matrix[3][4] ), .B(n635), .C(\regs_matrix[1][4] ), 
        .D(n638), .Y(n443) );
  OAI22X1 U548 ( .A(\regs_matrix[5][4] ), .B(n642), .C(\regs_matrix[7][4] ), 
        .D(n73), .Y(n442) );
  NAND2X1 U549 ( .A(n446), .B(n447), .Y(n445) );
  NOR2X1 U550 ( .A(n448), .B(n449), .Y(n447) );
  OAI22X1 U551 ( .A(\regs_matrix[8][5] ), .B(n617), .C(\regs_matrix[10][5] ), 
        .D(n624), .Y(n449) );
  OAI22X1 U552 ( .A(\regs_matrix[12][5] ), .B(n627), .C(\regs_matrix[14][5] ), 
        .D(n631), .Y(n448) );
  NOR2X1 U553 ( .A(n450), .B(n451), .Y(n446) );
  OAI22X1 U554 ( .A(\regs_matrix[11][5] ), .B(n634), .C(\regs_matrix[9][5] ), 
        .D(n638), .Y(n451) );
  OAI22X1 U555 ( .A(\regs_matrix[13][5] ), .B(n72), .C(\regs_matrix[15][5] ), 
        .D(n64), .Y(n450) );
  NAND2X1 U556 ( .A(n452), .B(n453), .Y(n444) );
  NOR2X1 U557 ( .A(n454), .B(n455), .Y(n453) );
  OAI22X1 U558 ( .A(outreg_data[5]), .B(n617), .C(\regs_matrix[2][5] ), .D(
        n624), .Y(n455) );
  OAI22X1 U559 ( .A(\regs_matrix[4][5] ), .B(n627), .C(\regs_matrix[6][5] ), 
        .D(n70), .Y(n454) );
  NOR2X1 U560 ( .A(n456), .B(n457), .Y(n452) );
  OAI22X1 U561 ( .A(\regs_matrix[3][5] ), .B(n634), .C(\regs_matrix[1][5] ), 
        .D(n638), .Y(n457) );
  OAI22X1 U562 ( .A(\regs_matrix[5][5] ), .B(n642), .C(\regs_matrix[7][5] ), 
        .D(n64), .Y(n456) );
  NAND2X1 U563 ( .A(n460), .B(n461), .Y(n459) );
  NOR2X1 U564 ( .A(n462), .B(n463), .Y(n461) );
  OAI22X1 U565 ( .A(\regs_matrix[8][6] ), .B(n617), .C(\regs_matrix[10][6] ), 
        .D(n624), .Y(n463) );
  OAI22X1 U566 ( .A(\regs_matrix[12][6] ), .B(n628), .C(\regs_matrix[14][6] ), 
        .D(n70), .Y(n462) );
  NOR2X1 U567 ( .A(n464), .B(n465), .Y(n460) );
  OAI22X1 U568 ( .A(\regs_matrix[11][6] ), .B(n635), .C(\regs_matrix[9][6] ), 
        .D(n640), .Y(n465) );
  OAI22X1 U569 ( .A(\regs_matrix[13][6] ), .B(n642), .C(\regs_matrix[15][6] ), 
        .D(n64), .Y(n464) );
  NAND2X1 U570 ( .A(n466), .B(n467), .Y(n458) );
  NOR2X1 U571 ( .A(n468), .B(n469), .Y(n467) );
  OAI22X1 U572 ( .A(outreg_data[6]), .B(n617), .C(\regs_matrix[2][6] ), .D(
        n624), .Y(n469) );
  OAI22X1 U573 ( .A(\regs_matrix[4][6] ), .B(n628), .C(\regs_matrix[6][6] ), 
        .D(n632), .Y(n468) );
  NOR2X1 U574 ( .A(n470), .B(n471), .Y(n466) );
  OAI22X1 U575 ( .A(\regs_matrix[3][6] ), .B(n635), .C(\regs_matrix[1][6] ), 
        .D(n638), .Y(n471) );
  OAI22X1 U576 ( .A(\regs_matrix[5][6] ), .B(n642), .C(\regs_matrix[7][6] ), 
        .D(n64), .Y(n470) );
  NAND2X1 U577 ( .A(n474), .B(n475), .Y(n473) );
  NOR2X1 U578 ( .A(n476), .B(n477), .Y(n475) );
  OAI22X1 U579 ( .A(\regs_matrix[8][7] ), .B(n17), .C(\regs_matrix[10][7] ), 
        .D(n624), .Y(n477) );
  OAI22X1 U580 ( .A(\regs_matrix[12][7] ), .B(n627), .C(\regs_matrix[14][7] ), 
        .D(n631), .Y(n476) );
  NOR2X1 U581 ( .A(n478), .B(n479), .Y(n474) );
  OAI22X1 U582 ( .A(\regs_matrix[11][7] ), .B(n635), .C(\regs_matrix[9][7] ), 
        .D(n640), .Y(n479) );
  OAI22X1 U583 ( .A(\regs_matrix[13][7] ), .B(n642), .C(\regs_matrix[15][7] ), 
        .D(n64), .Y(n478) );
  NAND2X1 U584 ( .A(n480), .B(n481), .Y(n472) );
  NOR2X1 U585 ( .A(n482), .B(n483), .Y(n481) );
  OAI22X1 U586 ( .A(outreg_data[7]), .B(n17), .C(\regs_matrix[2][7] ), .D(n624), .Y(n483) );
  OAI22X1 U587 ( .A(\regs_matrix[4][7] ), .B(n627), .C(\regs_matrix[6][7] ), 
        .D(n630), .Y(n482) );
  NOR2X1 U588 ( .A(n484), .B(n485), .Y(n480) );
  OAI22X1 U589 ( .A(\regs_matrix[3][7] ), .B(n634), .C(\regs_matrix[1][7] ), 
        .D(n638), .Y(n485) );
  OAI22X1 U590 ( .A(\regs_matrix[5][7] ), .B(n642), .C(\regs_matrix[7][7] ), 
        .D(n64), .Y(n484) );
  MUX2X1 U591 ( .B(n486), .A(n487), .S(n645), .Y(r2_data[8]) );
  NAND2X1 U592 ( .A(n488), .B(n489), .Y(n487) );
  NOR2X1 U593 ( .A(n490), .B(n491), .Y(n489) );
  OAI22X1 U594 ( .A(\regs_matrix[8][8] ), .B(n17), .C(\regs_matrix[10][8] ), 
        .D(n624), .Y(n491) );
  OAI22X1 U595 ( .A(\regs_matrix[12][8] ), .B(n628), .C(\regs_matrix[14][8] ), 
        .D(n70), .Y(n490) );
  NOR2X1 U596 ( .A(n492), .B(n493), .Y(n488) );
  OAI22X1 U597 ( .A(\regs_matrix[11][8] ), .B(n635), .C(\regs_matrix[9][8] ), 
        .D(n640), .Y(n493) );
  OAI22X1 U598 ( .A(\regs_matrix[13][8] ), .B(n72), .C(\regs_matrix[15][8] ), 
        .D(n644), .Y(n492) );
  NAND2X1 U599 ( .A(n494), .B(n495), .Y(n486) );
  NOR2X1 U600 ( .A(n496), .B(n497), .Y(n495) );
  OAI22X1 U601 ( .A(outreg_data[8]), .B(n17), .C(\regs_matrix[2][8] ), .D(n624), .Y(n497) );
  OAI22X1 U602 ( .A(\regs_matrix[4][8] ), .B(n628), .C(\regs_matrix[6][8] ), 
        .D(n631), .Y(n496) );
  NOR2X1 U603 ( .A(n498), .B(n499), .Y(n494) );
  OAI22X1 U604 ( .A(\regs_matrix[3][8] ), .B(n636), .C(\regs_matrix[1][8] ), 
        .D(n639), .Y(n499) );
  OAI22X1 U605 ( .A(\regs_matrix[5][8] ), .B(n643), .C(\regs_matrix[7][8] ), 
        .D(n644), .Y(n498) );
  MUX2X1 U606 ( .B(n500), .A(n501), .S(n646), .Y(n711) );
  NAND2X1 U607 ( .A(n503), .B(n502), .Y(n501) );
  NOR2X1 U608 ( .A(n504), .B(n505), .Y(n503) );
  OAI22X1 U609 ( .A(\regs_matrix[8][9] ), .B(n17), .C(\regs_matrix[10][9] ), 
        .D(n624), .Y(n505) );
  OAI22X1 U610 ( .A(\regs_matrix[12][9] ), .B(n628), .C(\regs_matrix[14][9] ), 
        .D(n632), .Y(n504) );
  NOR2X1 U611 ( .A(n506), .B(n507), .Y(n502) );
  OAI22X1 U612 ( .A(\regs_matrix[11][9] ), .B(n635), .C(\regs_matrix[9][9] ), 
        .D(n638), .Y(n507) );
  OAI22X1 U613 ( .A(\regs_matrix[13][9] ), .B(n643), .C(\regs_matrix[15][9] ), 
        .D(n644), .Y(n506) );
  NAND2X1 U614 ( .A(n509), .B(n508), .Y(n500) );
  NOR2X1 U615 ( .A(n510), .B(n511), .Y(n509) );
  OAI22X1 U616 ( .A(outreg_data[9]), .B(n17), .C(\regs_matrix[2][9] ), .D(n624), .Y(n511) );
  OAI22X1 U617 ( .A(\regs_matrix[4][9] ), .B(n628), .C(\regs_matrix[6][9] ), 
        .D(n630), .Y(n510) );
  NOR2X1 U618 ( .A(n512), .B(n513), .Y(n508) );
  OAI22X1 U619 ( .A(\regs_matrix[3][9] ), .B(n636), .C(\regs_matrix[1][9] ), 
        .D(n640), .Y(n513) );
  OAI22X1 U620 ( .A(\regs_matrix[5][9] ), .B(n63), .C(\regs_matrix[7][9] ), 
        .D(n73), .Y(n512) );
  NAND2X1 U621 ( .A(n516), .B(n517), .Y(n515) );
  NOR2X1 U622 ( .A(n518), .B(n519), .Y(n517) );
  OAI22X1 U623 ( .A(\regs_matrix[8][10] ), .B(n618), .C(\regs_matrix[10][10] ), 
        .D(n625), .Y(n519) );
  OAI22X1 U624 ( .A(\regs_matrix[12][10] ), .B(n628), .C(\regs_matrix[14][10] ), .D(n632), .Y(n518) );
  NOR2X1 U625 ( .A(n520), .B(n521), .Y(n516) );
  OAI22X1 U626 ( .A(\regs_matrix[11][10] ), .B(n635), .C(\regs_matrix[9][10] ), 
        .D(n639), .Y(n521) );
  OAI22X1 U627 ( .A(\regs_matrix[13][10] ), .B(n643), .C(\regs_matrix[15][10] ), .D(n64), .Y(n520) );
  NAND2X1 U628 ( .A(n522), .B(n523), .Y(n514) );
  NOR2X1 U629 ( .A(n524), .B(n525), .Y(n523) );
  OAI22X1 U630 ( .A(outreg_data[10]), .B(n618), .C(\regs_matrix[2][10] ), .D(
        n625), .Y(n525) );
  OAI22X1 U631 ( .A(\regs_matrix[4][10] ), .B(n628), .C(\regs_matrix[6][10] ), 
        .D(n632), .Y(n524) );
  NOR2X1 U632 ( .A(n526), .B(n527), .Y(n522) );
  OAI22X1 U633 ( .A(\regs_matrix[3][10] ), .B(n634), .C(\regs_matrix[1][10] ), 
        .D(n638), .Y(n527) );
  OAI22X1 U634 ( .A(\regs_matrix[5][10] ), .B(n72), .C(\regs_matrix[7][10] ), 
        .D(n644), .Y(n526) );
  MUX2X1 U635 ( .B(n528), .A(n529), .S(n646), .Y(r2_data[11]) );
  NAND2X1 U636 ( .A(n530), .B(n531), .Y(n529) );
  NOR2X1 U637 ( .A(n532), .B(n533), .Y(n531) );
  OAI22X1 U638 ( .A(\regs_matrix[8][11] ), .B(n618), .C(\regs_matrix[10][11] ), 
        .D(n625), .Y(n533) );
  OAI22X1 U639 ( .A(\regs_matrix[12][11] ), .B(n628), .C(\regs_matrix[14][11] ), .D(n632), .Y(n532) );
  NOR2X1 U640 ( .A(n534), .B(n535), .Y(n530) );
  OAI22X1 U641 ( .A(\regs_matrix[11][11] ), .B(n635), .C(\regs_matrix[9][11] ), 
        .D(n639), .Y(n535) );
  OAI22X1 U642 ( .A(\regs_matrix[13][11] ), .B(n63), .C(\regs_matrix[15][11] ), 
        .D(n73), .Y(n534) );
  NAND2X1 U643 ( .A(n536), .B(n537), .Y(n528) );
  NOR2X1 U644 ( .A(n538), .B(n539), .Y(n537) );
  OAI22X1 U645 ( .A(outreg_data[11]), .B(n618), .C(\regs_matrix[2][11] ), .D(
        n625), .Y(n539) );
  OAI22X1 U646 ( .A(\regs_matrix[4][11] ), .B(n628), .C(\regs_matrix[6][11] ), 
        .D(n631), .Y(n538) );
  NOR2X1 U647 ( .A(n540), .B(n541), .Y(n536) );
  OAI22X1 U648 ( .A(\regs_matrix[3][11] ), .B(n636), .C(\regs_matrix[1][11] ), 
        .D(n640), .Y(n541) );
  OAI22X1 U649 ( .A(\regs_matrix[5][11] ), .B(n71), .C(\regs_matrix[7][11] ), 
        .D(n73), .Y(n540) );
  MUX2X1 U650 ( .B(n542), .A(n543), .S(n645), .Y(r2_data[12]) );
  NAND2X1 U651 ( .A(n544), .B(n545), .Y(n543) );
  NOR2X1 U652 ( .A(n546), .B(n547), .Y(n545) );
  OAI22X1 U653 ( .A(\regs_matrix[8][12] ), .B(n618), .C(\regs_matrix[10][12] ), 
        .D(n625), .Y(n547) );
  OAI22X1 U654 ( .A(\regs_matrix[12][12] ), .B(n627), .C(\regs_matrix[14][12] ), .D(n630), .Y(n546) );
  NOR2X1 U655 ( .A(n548), .B(n549), .Y(n544) );
  OAI22X1 U656 ( .A(\regs_matrix[11][12] ), .B(n635), .C(\regs_matrix[9][12] ), 
        .D(n639), .Y(n549) );
  OAI22X1 U657 ( .A(\regs_matrix[13][12] ), .B(n63), .C(\regs_matrix[15][12] ), 
        .D(n644), .Y(n548) );
  NAND2X1 U658 ( .A(n550), .B(n551), .Y(n542) );
  NOR2X1 U659 ( .A(n552), .B(n553), .Y(n551) );
  OAI22X1 U660 ( .A(outreg_data[12]), .B(n618), .C(\regs_matrix[2][12] ), .D(
        n625), .Y(n553) );
  OAI22X1 U661 ( .A(\regs_matrix[4][12] ), .B(n628), .C(\regs_matrix[6][12] ), 
        .D(n631), .Y(n552) );
  NOR2X1 U662 ( .A(n554), .B(n555), .Y(n550) );
  OAI22X1 U663 ( .A(\regs_matrix[3][12] ), .B(n635), .C(\regs_matrix[1][12] ), 
        .D(n640), .Y(n555) );
  OAI22X1 U664 ( .A(\regs_matrix[5][12] ), .B(n643), .C(\regs_matrix[7][12] ), 
        .D(n73), .Y(n554) );
  MUX2X1 U665 ( .B(n556), .A(n557), .S(n646), .Y(r2_data[13]) );
  NAND2X1 U666 ( .A(n559), .B(n558), .Y(n557) );
  NOR2X1 U667 ( .A(n560), .B(n561), .Y(n559) );
  OAI22X1 U668 ( .A(\regs_matrix[8][13] ), .B(n618), .C(\regs_matrix[10][13] ), 
        .D(n625), .Y(n561) );
  OAI22X1 U669 ( .A(\regs_matrix[12][13] ), .B(n627), .C(\regs_matrix[14][13] ), .D(n630), .Y(n560) );
  NOR2X1 U670 ( .A(n563), .B(n562), .Y(n558) );
  OAI22X1 U671 ( .A(\regs_matrix[11][13] ), .B(n634), .C(\regs_matrix[9][13] ), 
        .D(n638), .Y(n563) );
  OAI22X1 U672 ( .A(\regs_matrix[13][13] ), .B(n72), .C(\regs_matrix[15][13] ), 
        .D(n644), .Y(n562) );
  NAND2X1 U673 ( .A(n565), .B(n564), .Y(n556) );
  NOR2X1 U674 ( .A(n566), .B(n567), .Y(n565) );
  OAI22X1 U675 ( .A(outreg_data[13]), .B(n616), .C(\regs_matrix[2][13] ), .D(
        n625), .Y(n567) );
  OAI22X1 U676 ( .A(\regs_matrix[4][13] ), .B(n627), .C(\regs_matrix[6][13] ), 
        .D(n70), .Y(n566) );
  NOR2X1 U677 ( .A(n568), .B(n569), .Y(n564) );
  OAI22X1 U678 ( .A(\regs_matrix[3][13] ), .B(n635), .C(\regs_matrix[1][13] ), 
        .D(n639), .Y(n569) );
  OAI22X1 U679 ( .A(\regs_matrix[5][13] ), .B(n642), .C(\regs_matrix[7][13] ), 
        .D(n73), .Y(n568) );
  MUX2X1 U680 ( .B(n570), .A(n571), .S(n645), .Y(r2_data[14]) );
  NAND2X1 U681 ( .A(n573), .B(n572), .Y(n571) );
  NOR2X1 U682 ( .A(n574), .B(n575), .Y(n573) );
  OAI22X1 U683 ( .A(\regs_matrix[8][14] ), .B(n618), .C(\regs_matrix[10][14] ), 
        .D(n625), .Y(n575) );
  OAI22X1 U684 ( .A(\regs_matrix[12][14] ), .B(n628), .C(\regs_matrix[14][14] ), .D(n632), .Y(n574) );
  NOR2X1 U685 ( .A(n576), .B(n577), .Y(n572) );
  OAI22X1 U686 ( .A(\regs_matrix[11][14] ), .B(n635), .C(\regs_matrix[9][14] ), 
        .D(n640), .Y(n577) );
  OAI22X1 U687 ( .A(\regs_matrix[13][14] ), .B(n71), .C(\regs_matrix[15][14] ), 
        .D(n644), .Y(n576) );
  NAND2X1 U688 ( .A(n578), .B(n579), .Y(n570) );
  NOR2X1 U689 ( .A(n580), .B(n581), .Y(n579) );
  OAI22X1 U690 ( .A(outreg_data[14]), .B(n618), .C(\regs_matrix[2][14] ), .D(
        n625), .Y(n581) );
  OAI22X1 U691 ( .A(\regs_matrix[4][14] ), .B(n628), .C(\regs_matrix[6][14] ), 
        .D(n630), .Y(n580) );
  NOR2X1 U692 ( .A(n582), .B(n583), .Y(n578) );
  OAI22X1 U693 ( .A(\regs_matrix[3][14] ), .B(n636), .C(\regs_matrix[1][14] ), 
        .D(n639), .Y(n583) );
  OAI22X1 U694 ( .A(\regs_matrix[5][14] ), .B(n72), .C(\regs_matrix[7][14] ), 
        .D(n73), .Y(n582) );
  MUX2X1 U695 ( .B(n584), .A(n585), .S(n646), .Y(r2_data[15]) );
  NAND2X1 U696 ( .A(n586), .B(n587), .Y(n585) );
  NOR2X1 U697 ( .A(n588), .B(n589), .Y(n587) );
  OAI22X1 U698 ( .A(\regs_matrix[8][15] ), .B(n618), .C(\regs_matrix[10][15] ), 
        .D(n625), .Y(n589) );
  OAI22X1 U699 ( .A(\regs_matrix[12][15] ), .B(n628), .C(\regs_matrix[14][15] ), .D(n70), .Y(n588) );
  NOR2X1 U700 ( .A(n590), .B(n591), .Y(n586) );
  OAI22X1 U701 ( .A(\regs_matrix[11][15] ), .B(n636), .C(\regs_matrix[9][15] ), 
        .D(n639), .Y(n591) );
  OAI22X1 U702 ( .A(\regs_matrix[13][15] ), .B(n72), .C(\regs_matrix[15][15] ), 
        .D(n64), .Y(n590) );
  NAND2X1 U703 ( .A(n592), .B(n593), .Y(n584) );
  NOR2X1 U704 ( .A(n594), .B(n595), .Y(n593) );
  OAI22X1 U705 ( .A(outreg_data[15]), .B(n618), .C(\regs_matrix[2][15] ), .D(
        n625), .Y(n595) );
  OAI22X1 U706 ( .A(\regs_matrix[4][15] ), .B(n628), .C(\regs_matrix[6][15] ), 
        .D(n630), .Y(n594) );
  NOR2X1 U707 ( .A(n596), .B(n597), .Y(n592) );
  OAI22X1 U708 ( .A(\regs_matrix[3][15] ), .B(n636), .C(\regs_matrix[1][15] ), 
        .D(n640), .Y(n597) );
  OAI22X1 U709 ( .A(\regs_matrix[5][15] ), .B(n643), .C(\regs_matrix[7][15] ), 
        .D(n73), .Y(n596) );
  NOR2X1 U710 ( .A(n598), .B(n599), .Y(n363) );
  OAI21X1 U711 ( .A(\regs_matrix[6][16] ), .B(n70), .C(n600), .Y(n599) );
  AOI22X1 U712 ( .A(n622), .B(n318), .C(n648), .D(n319), .Y(n600) );
  OAI21X1 U713 ( .A(\regs_matrix[4][16] ), .B(n628), .C(n647), .Y(n598) );
  NOR2X1 U714 ( .A(n601), .B(n602), .Y(n364) );
  OAI22X1 U715 ( .A(\regs_matrix[3][16] ), .B(n636), .C(\regs_matrix[1][16] ), 
        .D(n640), .Y(n602) );
  OAI22X1 U716 ( .A(\regs_matrix[5][16] ), .B(n63), .C(\regs_matrix[7][16] ), 
        .D(n73), .Y(n601) );
  NOR2X1 U717 ( .A(n603), .B(n604), .Y(n365) );
  OAI21X1 U718 ( .A(\regs_matrix[12][16] ), .B(n627), .C(n605), .Y(n604) );
  AOI22X1 U719 ( .A(n622), .B(n325), .C(n648), .D(n606), .Y(n605) );
  INVX2 U720 ( .A(\regs_matrix[8][16] ), .Y(n606) );
  NAND3X1 U721 ( .A(n607), .B(n608), .C(n609), .Y(n374) );
  NAND3X1 U722 ( .A(n649), .B(n607), .C(n609), .Y(n375) );
  OAI22X1 U723 ( .A(\regs_matrix[9][16] ), .B(n639), .C(\regs_matrix[14][16] ), 
        .D(n631), .Y(n603) );
  NAND3X1 U724 ( .A(n649), .B(N15), .C(n609), .Y(n376) );
  NAND3X1 U725 ( .A(n51), .B(n607), .C(n608), .Y(n380) );
  NOR2X1 U726 ( .A(n610), .B(n611), .Y(n366) );
  OAI21X1 U727 ( .A(\regs_matrix[11][16] ), .B(n635), .C(n645), .Y(n611) );
  NAND2X1 U728 ( .A(n608), .B(n49), .Y(n379) );
  OAI22X1 U729 ( .A(\regs_matrix[15][16] ), .B(n644), .C(\regs_matrix[13][16] ), .D(n643), .Y(n610) );
  NAND3X1 U730 ( .A(n52), .B(N14), .C(n607), .Y(n381) );
  INVX2 U731 ( .A(N15), .Y(n607) );
  BUFX4 U732 ( .A(n612), .Y(n614) );
  BUFX4 U733 ( .A(n612), .Y(n615) );
  INVX8 U734 ( .A(n615), .Y(n616) );
  BUFX4 U735 ( .A(n619), .Y(n622) );
  INVX8 U736 ( .A(n621), .Y(n624) );
  INVX8 U737 ( .A(n620), .Y(n625) );
  INVX8 U738 ( .A(n626), .Y(n628) );
  INVX2 U739 ( .A(n374), .Y(n612) );
  INVX4 U740 ( .A(n649), .Y(n608) );
  INVX4 U741 ( .A(n637), .Y(n639) );
  INVX4 U742 ( .A(n637), .Y(n640) );
  INVX4 U743 ( .A(n637), .Y(n638) );
  BUFX2 U744 ( .A(n613), .Y(n648) );
  BUFX4 U745 ( .A(n619), .Y(n621) );
  INVX4 U746 ( .A(n650), .Y(n649) );
  INVX2 U747 ( .A(N16), .Y(n650) );
  INVX4 U748 ( .A(n633), .Y(n636) );
  INVX4 U749 ( .A(n633), .Y(n634) );
  INVX4 U750 ( .A(w_data[13]), .Y(n686) );
  INVX4 U751 ( .A(w_data[15]), .Y(n692) );
  INVX8 U752 ( .A(n670), .Y(n671) );
  INVX2 U753 ( .A(w_en), .Y(n705) );
  INVX2 U754 ( .A(w_sel[3]), .Y(n706) );
  INVX2 U755 ( .A(w_sel[1]), .Y(n707) );
  INVX2 U756 ( .A(w_sel[2]), .Y(n708) );
endmodule


module datapath ( clk, n_reset, op, src1, src2, dest, ext_data1, ext_data2, 
        outreg_data, overflow );
  input [2:0] op;
  input [3:0] src1;
  input [3:0] src2;
  input [3:0] dest;
  input [15:0] ext_data1;
  input [15:0] ext_data2;
  output [16:0] outreg_data;
  input clk, n_reset;
  output overflow;
  wire   w_en, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [1:0] w_data_sel;
  wire   [1:0] alu_op;
  wire   [16:0] src1_data;
  wire   [16:0] src2_data;
  wire   [16:0] alu_result;
  wire   [16:0] dest_data;

  datapath_decode DEC ( .op(op), .w_en(w_en), .w_data_sel(w_data_sel), 
        .alu_op(alu_op) );
  alu CORE ( .src1_data({src1_data[16:11], n4, src1_data[9:5], n3, 
        src1_data[3:2], n5, src1_data[0]}), .src2_data(src2_data), .alu_op(
        alu_op), .result(alu_result), .overflow(overflow) );
  register_file RF ( .clk(clk), .n_reset(n_reset), .w_en(w_en), .r1_sel(src1), 
        .r2_sel(src2), .w_sel(dest), .w_data({dest_data[16:1], n2}), .r1_data(
        src1_data), .r2_data(src2_data), .outreg_data(outreg_data) );
  BUFX4 U2 ( .A(src1_data[1]), .Y(n5) );
  BUFX4 U3 ( .A(src1_data[4]), .Y(n3) );
  BUFX2 U4 ( .A(src1_data[10]), .Y(n4) );
  INVX2 U5 ( .A(dest_data[0]), .Y(n1) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  AND2X2 U7 ( .A(w_data_sel[0]), .B(n41), .Y(n6) );
  AND2X2 U8 ( .A(n41), .B(n8), .Y(n7) );
  INVX2 U9 ( .A(w_data_sel[1]), .Y(n41) );
  AND2X2 U10 ( .A(alu_result[16]), .B(w_data_sel[1]), .Y(dest_data[16]) );
  INVX2 U11 ( .A(alu_result[15]), .Y(n10) );
  INVX2 U12 ( .A(w_data_sel[0]), .Y(n8) );
  AOI22X1 U13 ( .A(ext_data2[15]), .B(n6), .C(ext_data1[15]), .D(n7), .Y(n9)
         );
  OAI21X1 U14 ( .A(n41), .B(n10), .C(n9), .Y(dest_data[15]) );
  INVX2 U15 ( .A(alu_result[14]), .Y(n12) );
  AOI22X1 U16 ( .A(ext_data2[14]), .B(n6), .C(ext_data1[14]), .D(n7), .Y(n11)
         );
  OAI21X1 U17 ( .A(n41), .B(n12), .C(n11), .Y(dest_data[14]) );
  INVX2 U18 ( .A(alu_result[13]), .Y(n14) );
  AOI22X1 U19 ( .A(ext_data2[13]), .B(n6), .C(ext_data1[13]), .D(n7), .Y(n13)
         );
  OAI21X1 U20 ( .A(n41), .B(n14), .C(n13), .Y(dest_data[13]) );
  INVX2 U21 ( .A(alu_result[12]), .Y(n16) );
  AOI22X1 U22 ( .A(ext_data2[12]), .B(n6), .C(ext_data1[12]), .D(n7), .Y(n15)
         );
  OAI21X1 U23 ( .A(n41), .B(n16), .C(n15), .Y(dest_data[12]) );
  INVX2 U24 ( .A(alu_result[11]), .Y(n18) );
  AOI22X1 U25 ( .A(ext_data2[11]), .B(n6), .C(ext_data1[11]), .D(n7), .Y(n17)
         );
  OAI21X1 U26 ( .A(n41), .B(n18), .C(n17), .Y(dest_data[11]) );
  INVX2 U27 ( .A(alu_result[10]), .Y(n20) );
  AOI22X1 U28 ( .A(ext_data2[10]), .B(n6), .C(ext_data1[10]), .D(n7), .Y(n19)
         );
  OAI21X1 U29 ( .A(n41), .B(n20), .C(n19), .Y(dest_data[10]) );
  INVX2 U30 ( .A(alu_result[9]), .Y(n22) );
  AOI22X1 U31 ( .A(ext_data2[9]), .B(n6), .C(ext_data1[9]), .D(n7), .Y(n21) );
  OAI21X1 U32 ( .A(n41), .B(n22), .C(n21), .Y(dest_data[9]) );
  INVX2 U33 ( .A(alu_result[8]), .Y(n24) );
  AOI22X1 U34 ( .A(ext_data2[8]), .B(n6), .C(ext_data1[8]), .D(n7), .Y(n23) );
  OAI21X1 U35 ( .A(n41), .B(n24), .C(n23), .Y(dest_data[8]) );
  INVX2 U36 ( .A(alu_result[7]), .Y(n26) );
  AOI22X1 U37 ( .A(ext_data2[7]), .B(n6), .C(ext_data1[7]), .D(n7), .Y(n25) );
  OAI21X1 U38 ( .A(n41), .B(n26), .C(n25), .Y(dest_data[7]) );
  INVX2 U39 ( .A(alu_result[6]), .Y(n28) );
  AOI22X1 U40 ( .A(ext_data2[6]), .B(n6), .C(ext_data1[6]), .D(n7), .Y(n27) );
  OAI21X1 U41 ( .A(n41), .B(n28), .C(n27), .Y(dest_data[6]) );
  INVX2 U42 ( .A(alu_result[5]), .Y(n30) );
  AOI22X1 U43 ( .A(ext_data2[5]), .B(n6), .C(ext_data1[5]), .D(n7), .Y(n29) );
  OAI21X1 U44 ( .A(n41), .B(n30), .C(n29), .Y(dest_data[5]) );
  INVX2 U45 ( .A(alu_result[4]), .Y(n32) );
  AOI22X1 U46 ( .A(ext_data2[4]), .B(n6), .C(ext_data1[4]), .D(n7), .Y(n31) );
  OAI21X1 U47 ( .A(n41), .B(n32), .C(n31), .Y(dest_data[4]) );
  INVX2 U48 ( .A(alu_result[3]), .Y(n34) );
  AOI22X1 U49 ( .A(ext_data2[3]), .B(n6), .C(ext_data1[3]), .D(n7), .Y(n33) );
  OAI21X1 U50 ( .A(n41), .B(n34), .C(n33), .Y(dest_data[3]) );
  INVX2 U51 ( .A(alu_result[2]), .Y(n36) );
  AOI22X1 U52 ( .A(ext_data2[2]), .B(n6), .C(ext_data1[2]), .D(n7), .Y(n35) );
  OAI21X1 U53 ( .A(n41), .B(n36), .C(n35), .Y(dest_data[2]) );
  INVX2 U54 ( .A(alu_result[1]), .Y(n38) );
  AOI22X1 U55 ( .A(ext_data2[1]), .B(n6), .C(ext_data1[1]), .D(n7), .Y(n37) );
  OAI21X1 U56 ( .A(n41), .B(n38), .C(n37), .Y(dest_data[1]) );
  INVX2 U57 ( .A(alu_result[0]), .Y(n40) );
  AOI22X1 U58 ( .A(ext_data2[0]), .B(n6), .C(ext_data1[0]), .D(n7), .Y(n39) );
  OAI21X1 U59 ( .A(n41), .B(n40), .C(n39), .Y(dest_data[0]) );
endmodule


module flex_counter_NUM_CNT_BITS10_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module flex_counter_NUM_CNT_BITS10 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [9:0] rollover_val;
  output [9:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n1, n2, n3, n4, n16, n17, n18, n19,
         n20, n21, n22, n23, n24;

  DFFSR \count_out_reg[0]  ( .D(n3), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n23), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n22), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n21), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n19), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n18), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[7]  ( .D(n17), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \count_out_reg[8]  ( .D(n16), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[9]  ( .D(n4), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR rollover_flag_reg ( .D(n57), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  AND2X2 U14 ( .A(n24), .B(count_out[2]), .Y(N9) );
  AND2X2 U15 ( .A(n24), .B(count_out[1]), .Y(N8) );
  AND2X2 U16 ( .A(n24), .B(count_out[0]), .Y(N7) );
  AND2X2 U17 ( .A(n24), .B(count_out[9]), .Y(N16) );
  AND2X2 U18 ( .A(n24), .B(count_out[8]), .Y(N15) );
  AND2X2 U19 ( .A(n24), .B(count_out[7]), .Y(N14) );
  AND2X2 U20 ( .A(n24), .B(count_out[6]), .Y(N13) );
  AND2X2 U21 ( .A(n24), .B(count_out[5]), .Y(N12) );
  AND2X2 U22 ( .A(n24), .B(count_out[4]), .Y(N11) );
  AND2X2 U23 ( .A(n24), .B(count_out[3]), .Y(N10) );
  OAI21X1 U36 ( .A(n1), .B(n24), .C(n28), .Y(n57) );
  NAND2X1 U37 ( .A(n29), .B(n30), .Y(n28) );
  NOR2X1 U38 ( .A(n31), .B(n32), .Y(n30) );
  NAND3X1 U39 ( .A(n33), .B(n34), .C(n35), .Y(n32) );
  XNOR2X1 U40 ( .A(N26), .B(rollover_val[9]), .Y(n35) );
  XNOR2X1 U41 ( .A(N23), .B(rollover_val[6]), .Y(n34) );
  XNOR2X1 U42 ( .A(N24), .B(rollover_val[7]), .Y(n33) );
  NAND3X1 U43 ( .A(n36), .B(n37), .C(n38), .Y(n31) );
  XNOR2X1 U44 ( .A(N20), .B(rollover_val[3]), .Y(n38) );
  XNOR2X1 U45 ( .A(N25), .B(rollover_val[8]), .Y(n36) );
  NOR2X1 U46 ( .A(n39), .B(n40), .Y(n29) );
  NAND2X1 U47 ( .A(n41), .B(n42), .Y(n40) );
  XNOR2X1 U48 ( .A(N18), .B(rollover_val[1]), .Y(n42) );
  XNOR2X1 U49 ( .A(N17), .B(rollover_val[0]), .Y(n41) );
  NAND3X1 U50 ( .A(n43), .B(n44), .C(n45), .Y(n39) );
  XNOR2X1 U51 ( .A(N19), .B(rollover_val[2]), .Y(n45) );
  XNOR2X1 U52 ( .A(N21), .B(rollover_val[4]), .Y(n44) );
  XNOR2X1 U53 ( .A(N22), .B(rollover_val[5]), .Y(n43) );
  AOI22X1 U54 ( .A(n2), .B(count_out[9]), .C(N26), .D(n37), .Y(n47) );
  AOI22X1 U55 ( .A(n2), .B(count_out[8]), .C(N25), .D(n37), .Y(n48) );
  AOI22X1 U56 ( .A(n2), .B(count_out[7]), .C(N24), .D(n37), .Y(n49) );
  AOI22X1 U57 ( .A(n2), .B(count_out[6]), .C(N23), .D(n37), .Y(n50) );
  AOI22X1 U58 ( .A(n2), .B(count_out[5]), .C(N22), .D(n37), .Y(n51) );
  AOI22X1 U59 ( .A(n2), .B(count_out[4]), .C(N21), .D(n37), .Y(n52) );
  AOI22X1 U60 ( .A(n2), .B(count_out[3]), .C(N20), .D(n37), .Y(n53) );
  AOI22X1 U61 ( .A(n2), .B(count_out[2]), .C(N19), .D(n37), .Y(n54) );
  AOI22X1 U62 ( .A(n2), .B(count_out[1]), .C(N18), .D(n37), .Y(n55) );
  AOI22X1 U63 ( .A(n2), .B(count_out[0]), .C(N17), .D(n37), .Y(n56) );
  NOR2X1 U64 ( .A(n2), .B(clear), .Y(n37) );
  flex_counter_NUM_CNT_BITS10_DW01_inc_0 add_26 ( .A({N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7}), .SUM({N26, N25, N24, N23, N22, N21, N20, N19, 
        N18, N17}) );
  INVX2 U24 ( .A(n1), .Y(n2) );
  OR2X1 U25 ( .A(clear), .B(count_enable), .Y(n1) );
  INVX2 U26 ( .A(rollover_flag), .Y(n24) );
  INVX2 U27 ( .A(n56), .Y(n3) );
  INVX2 U28 ( .A(n47), .Y(n4) );
  INVX2 U29 ( .A(n48), .Y(n16) );
  INVX2 U30 ( .A(n49), .Y(n17) );
  INVX2 U31 ( .A(n50), .Y(n18) );
  INVX2 U32 ( .A(n51), .Y(n19) );
  INVX2 U33 ( .A(n52), .Y(n20) );
  INVX2 U34 ( .A(n53), .Y(n21) );
  INVX2 U35 ( .A(n54), .Y(n22) );
  INVX2 U65 ( .A(n55), .Y(n23) );
endmodule


module counter ( clk, n_rst, cnt_up, clear, one_k_samples );
  input clk, n_rst, cnt_up, clear;
  output one_k_samples;


  flex_counter_NUM_CNT_BITS10 fc ( .clk(clk), .n_rst(n_rst), .clear(clear), 
        .count_enable(cnt_up), .rollover_val({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), .rollover_flag(one_k_samples) );
endmodule


module magnitude_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n5, n7, n9, n11, n13, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35;

  INVX1 U1 ( .A(A[13]), .Y(n1) );
  INVX2 U2 ( .A(n32), .Y(n2) );
  INVX2 U3 ( .A(A[12]), .Y(n3) );
  INVX2 U4 ( .A(n34), .Y(SUM[11]) );
  INVX2 U5 ( .A(A[10]), .Y(n5) );
  INVX2 U6 ( .A(n16), .Y(SUM[9]) );
  INVX2 U7 ( .A(A[8]), .Y(n7) );
  INVX2 U8 ( .A(n20), .Y(SUM[7]) );
  INVX2 U9 ( .A(A[6]), .Y(n9) );
  INVX2 U10 ( .A(n23), .Y(SUM[5]) );
  INVX2 U11 ( .A(A[4]), .Y(n11) );
  INVX2 U12 ( .A(n26), .Y(SUM[3]) );
  INVX2 U13 ( .A(A[2]), .Y(n13) );
  INVX2 U14 ( .A(n29), .Y(SUM[1]) );
  INVX2 U15 ( .A(A[0]), .Y(SUM[0]) );
  AOI21X1 U16 ( .A(n17), .B(A[9]), .C(n18), .Y(n16) );
  OAI21X1 U17 ( .A(n19), .B(n7), .C(n17), .Y(SUM[8]) );
  AOI21X1 U18 ( .A(n21), .B(A[7]), .C(n19), .Y(n20) );
  OAI21X1 U19 ( .A(n22), .B(n9), .C(n21), .Y(SUM[6]) );
  AOI21X1 U20 ( .A(n24), .B(A[5]), .C(n22), .Y(n23) );
  OAI21X1 U21 ( .A(n25), .B(n11), .C(n24), .Y(SUM[4]) );
  AOI21X1 U22 ( .A(n27), .B(A[3]), .C(n25), .Y(n26) );
  OAI21X1 U23 ( .A(n28), .B(n13), .C(n27), .Y(SUM[2]) );
  AOI21X1 U24 ( .A(A[0]), .B(A[1]), .C(n28), .Y(n29) );
  XOR2X1 U25 ( .A(A[15]), .B(n30), .Y(SUM[15]) );
  NOR2X1 U26 ( .A(A[14]), .B(n31), .Y(n30) );
  XNOR2X1 U27 ( .A(A[14]), .B(n31), .Y(SUM[14]) );
  OAI21X1 U28 ( .A(n2), .B(n1), .C(n31), .Y(SUM[13]) );
  NAND2X1 U29 ( .A(n2), .B(n1), .Y(n31) );
  OAI21X1 U30 ( .A(n33), .B(n3), .C(n32), .Y(SUM[12]) );
  NAND2X1 U31 ( .A(n33), .B(n3), .Y(n32) );
  AOI21X1 U32 ( .A(n35), .B(A[11]), .C(n33), .Y(n34) );
  NOR2X1 U33 ( .A(n35), .B(A[11]), .Y(n33) );
  OAI21X1 U34 ( .A(n18), .B(n5), .C(n35), .Y(SUM[10]) );
  NAND2X1 U35 ( .A(n18), .B(n5), .Y(n35) );
  NOR2X1 U36 ( .A(n17), .B(A[9]), .Y(n18) );
  NAND2X1 U37 ( .A(n19), .B(n7), .Y(n17) );
  NOR2X1 U38 ( .A(n21), .B(A[7]), .Y(n19) );
  NAND2X1 U39 ( .A(n22), .B(n9), .Y(n21) );
  NOR2X1 U40 ( .A(n24), .B(A[5]), .Y(n22) );
  NAND2X1 U41 ( .A(n25), .B(n11), .Y(n24) );
  NOR2X1 U42 ( .A(n27), .B(A[3]), .Y(n25) );
  NAND2X1 U43 ( .A(n28), .B(n13), .Y(n27) );
  NOR2X1 U44 ( .A(A[1]), .B(A[0]), .Y(n28) );
endmodule


module magnitude ( in, out );
  input [16:0] in;
  output [15:0] out;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n1;

  OAI21X1 U3 ( .A(N11), .B(n1), .C(n2), .Y(out[9]) );
  NAND2X1 U4 ( .A(in[9]), .B(n1), .Y(n2) );
  OAI21X1 U5 ( .A(N10), .B(n1), .C(n3), .Y(out[8]) );
  NAND2X1 U6 ( .A(in[8]), .B(n1), .Y(n3) );
  OAI21X1 U7 ( .A(N9), .B(n1), .C(n4), .Y(out[7]) );
  NAND2X1 U8 ( .A(in[7]), .B(n1), .Y(n4) );
  OAI21X1 U9 ( .A(N8), .B(n1), .C(n5), .Y(out[6]) );
  NAND2X1 U10 ( .A(in[6]), .B(n1), .Y(n5) );
  OAI21X1 U11 ( .A(N7), .B(n1), .C(n6), .Y(out[5]) );
  NAND2X1 U12 ( .A(in[5]), .B(n1), .Y(n6) );
  OAI21X1 U13 ( .A(N6), .B(n1), .C(n7), .Y(out[4]) );
  NAND2X1 U14 ( .A(in[4]), .B(n1), .Y(n7) );
  OAI21X1 U15 ( .A(N5), .B(n1), .C(n8), .Y(out[3]) );
  NAND2X1 U16 ( .A(in[3]), .B(n1), .Y(n8) );
  OAI21X1 U17 ( .A(N4), .B(n1), .C(n9), .Y(out[2]) );
  NAND2X1 U18 ( .A(in[2]), .B(n1), .Y(n9) );
  OAI21X1 U19 ( .A(N3), .B(n1), .C(n10), .Y(out[1]) );
  NAND2X1 U20 ( .A(in[1]), .B(n1), .Y(n10) );
  OAI21X1 U21 ( .A(N17), .B(n1), .C(n11), .Y(out[15]) );
  NAND2X1 U22 ( .A(in[15]), .B(n1), .Y(n11) );
  OAI21X1 U23 ( .A(N16), .B(n1), .C(n12), .Y(out[14]) );
  NAND2X1 U24 ( .A(in[14]), .B(n1), .Y(n12) );
  OAI21X1 U25 ( .A(N15), .B(n1), .C(n13), .Y(out[13]) );
  NAND2X1 U26 ( .A(in[13]), .B(n1), .Y(n13) );
  OAI21X1 U27 ( .A(N14), .B(n1), .C(n14), .Y(out[12]) );
  NAND2X1 U28 ( .A(in[12]), .B(n1), .Y(n14) );
  OAI21X1 U29 ( .A(N13), .B(n1), .C(n15), .Y(out[11]) );
  NAND2X1 U30 ( .A(in[11]), .B(n1), .Y(n15) );
  OAI21X1 U31 ( .A(N12), .B(n1), .C(n16), .Y(out[10]) );
  NAND2X1 U32 ( .A(in[10]), .B(n1), .Y(n16) );
  OAI21X1 U33 ( .A(N2), .B(n1), .C(n17), .Y(out[0]) );
  NAND2X1 U34 ( .A(in[0]), .B(n1), .Y(n17) );
  magnitude_DW01_dec_0 sub_3 ( .A(in[15:0]), .SUM({N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  INVX2 U2 ( .A(in[16]), .Y(n1) );
endmodule


module fir_filter ( clk, n_reset, sample_data, fir_coefficient, load_coeff, 
        data_ready, one_k_samples, modwait, fir_out, err );
  input [15:0] sample_data;
  input [15:0] fir_coefficient;
  output [15:0] fir_out;
  input clk, n_reset, load_coeff, data_ready;
  output one_k_samples, modwait, err;
  wire   dr_sync, lc_sync, overflow, cnt_up, clear;
  wire   [2:0] op;
  wire   [3:0] src1;
  wire   [3:0] src2;
  wire   [3:0] dest;
  wire   [16:0] raw_out;

  sync_low_1 sdr ( .clk(clk), .n_rst(n_reset), .async_in(data_ready), 
        .sync_out(dr_sync) );
  sync_low_0 slc ( .clk(clk), .n_rst(n_reset), .async_in(load_coeff), 
        .sync_out(lc_sync) );
  controller c ( .clk(clk), .n_rst(n_reset), .dr(dr_sync), .lc(lc_sync), 
        .overflow(overflow), .cnt_up(cnt_up), .clear(clear), .modwait(modwait), 
        .op(op), .src1(src1), .src2(src2), .dest(dest), .err(err) );
  datapath p ( .clk(clk), .n_reset(n_reset), .op(op), .src1(src1), .src2(src2), 
        .dest(dest), .ext_data1(sample_data), .ext_data2(fir_coefficient), 
        .outreg_data(raw_out), .overflow(overflow) );
  counter sc ( .clk(clk), .n_rst(n_reset), .cnt_up(cnt_up), .clear(clear), 
        .one_k_samples(one_k_samples) );
  magnitude mag ( .in(raw_out), .out(fir_out) );
endmodule
