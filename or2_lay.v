/* Verilog for cell 'or2{lay}' from library 'tutorial_RL' */
/* Created on Seg mar 25, 2019 11:08:41 */
/* Last revised on Seg mar 25, 2019 11:15:29 */
/* Written on Seg mar 25, 2019 13:43:20 by Electric VLSI Design System, version 9.07 */

module tutorial_RL__inv(A, Y, vdd, gnd);
  input A;
  output Y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, Y, A);
  tranif0 pmos_0(vdd, Y, A);
endmodule   /* tutorial_RL__inv */

module tutorial_RL__nor2(A, B, Y, vdd, gnd);
  input A;
  input B;
  output Y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_17, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, Y, A);
  tranif1 nmos_1(Y, gnd, B);
  tranif0 pmos_0(vdd, net_17, A);
  tranif0 pmos_1(net_17, Y, B);
endmodule   /* tutorial_RL__nor2 */

module or2_lay(A, B, Y, vdd, gnd);
  input A;
  input B;
  output Y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_10;

  tutorial_RL__inv inv_0(.A(net_10), .Y(Y), .vdd(vdd), .gnd(gnd));
  tutorial_RL__nor2 nor2_1(.A(A), .B(B), .Y(net_10), .vdd(vdd), .gnd(gnd));
endmodule   /* or2 */
