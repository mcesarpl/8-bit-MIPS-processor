/* Verilog for cell 'nand2{lay}' from library 'tutorial_mc' */
/* Created on Seg mar 25, 2019 11:50:34 */
/* Last revised on Seg mar 25, 2019 20:17:51 */
/* Written on Seg mar 25, 2019 20:31:36 by Electric VLSI Design System, version 9.07 */

module nand2(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_4, plnode_0_well, plnode_1_well;

  tranif1 nmos_2(gnd, net_4, a);
  tranif1 nmos_3(net_4, y, b);
  tranif0 pmos_0(vdd, y, a);
  tranif0 pmos_4(y, vdd, b);
endmodule   /* nand2 */
