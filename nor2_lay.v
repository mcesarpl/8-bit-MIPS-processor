/* Verilog for cell 'nor2{lay}' from library 'tutorial_RL' */
/* Created on Seg mar 25, 2019 01:04:38 */
/* Last revised on Seg mar 25, 2019 11:12:58 */
/* Written on Seg mar 25, 2019 13:31:53 by Electric VLSI Design System, version 9.07 */

module nor2_lay(A, B, Y, vdd, gnd);
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
endmodule   /* nor2 */
