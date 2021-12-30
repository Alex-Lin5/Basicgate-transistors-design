NAND_GATE_2_INPUT *2 input nand cmos
.option post
.lib './mosfet.lib' MOS
Vdd 3 0 DC 3V 
VA 1 0 DC PULSE 0 3 10NS 5NS 5NS 95NS 200NS 
VB 2 0 DC PULSE 0 3 10NS 5NS 5NS 55NS 120NS
* output node is 4, A1 B2
Map 4 1 3 3 pmos L=0.5U W=1.0U
Mbp 4 2 3 3 pmos L=0.5U W=1.0U
Man 4 1 5 5 nmos L=0.5U W=1.0U
Mbn 5 2 0 0 nmos L=0.5U W=1.0U
Cload 4 0 0.2pf
.TRAN 10PS 700NS
.MEAS tran tphl0011 trig V(1) td=5ns val='1.5' cross=1
+           targ V(4) td=5ns val='1.5' cross=1
.MEAS tran tplh1110 trig V(2) td=60ns val='1.5' cross=1
+           targ V(4) td=60ns val='1.5' cross=1
.MEAS tran tplh1101 trig V(1) td=500ns val='1.5' cross=1
+           targ V(4) td=500ns val='1.5' cross=1
.MEAS tran tplh1100 trig V(1) td=300ns val='1.5' cross=1
+           targ V(4) td=300ns val='1.5' cross=1

.END
