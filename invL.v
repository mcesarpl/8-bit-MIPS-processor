/* Verilog for cell 'inv{lay}' from library 'tutorial_mc' */
/* Created on Seg mar 25, 2019 21:22:55 */
/* Last revised on Seg mar 25, 2019 22:08:09 */
/* Written on Seg mar 25, 2019 22:41:20 by Electric VLSI Design System, version 9.07 */

module inv(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* inv */
