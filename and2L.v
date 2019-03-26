/* Verilog for cell 'and2{lay}' from library 'tutorial_mc' */
/* Created on Seg mar 25, 2019 22:11:35 */
/* Last revised on Seg mar 25, 2019 22:35:19 */
/* Written on Seg mar 25, 2019 22:40:11 by Electric VLSI Design System, version 9.07 */

module and2(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_5, net_19, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, net_19, a);
  tranif1 nmos_1(net_19, net_5, b);
  tranif1 nmos_2(gnd, y, net_5);
  tranif0 pmos_0(vdd, net_5, a);
  tranif0 pmos_1(net_5, vdd, b);
  tranif0 pmos_2(vdd, y, net_5);
endmodule   /* and2 */
