/* Verilog for cell 'and2{sch}' from library 'tutorial_mc' */
/* Created on Dom mar 24, 2019 16:47:17 */
/* Last revised on Dom mar 24, 2019 17:01:02 */
/* Written on Dom mar 24, 2019 23:33:38 by Electric VLSI Design System, version 9.07 */

module tutorial_mc__inv(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* tutorial_mc__inv */

module tutorial_mc__nand2(a, b, y);
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
endmodule   /* tutorial_mc__nand2 */

module and2(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire yb;

  tutorial_mc__inv inv_0(.a(yb), .y(y));
  tutorial_mc__nand2 nand2_0(.a(a), .b(b), .y(yb));
endmodule   /* and2 */
