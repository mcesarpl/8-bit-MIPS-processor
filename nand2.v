/* Verilog for cell 'nand2{sch}' from library 'tutorial_mc' */
/* Created on Sáb mar 23, 2019 20:29:43 */
/* Last revised on Sáb mar 23, 2019 20:44:47 */
/* Written on Dom mar 24, 2019 13:15:12 by Electric VLSI Design System, version 9.07 */

module nand2(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_2;

  tranif1 nmos_0(gnd, net_2, a);
  tranif1 nmos_1(net_2, y, b);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(y, vdd, a);
endmodule   /* nand2 */
