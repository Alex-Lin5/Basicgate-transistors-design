Inv.sp
mosinverter
.option post
.lib './mosfet.lib' MOS
VG 2 0 DC PULSE 0 3 10NS 5NS 5NS 1000NS 1500NS
VDD 3 0 DC 3V
M1 1 2 3 3 pmos L=0.5U W=1.0U
M2 1 2 0 0 nmos L=0.5U W=0.5U
.param cap = 0.2pf
cload 1 0 cap
.TRAN 10ps 2500ns sweep cap 0.2pf 2pf 0.2pf
.meas tran tphl trig v(2) td=1000ns val = '1.5' cross=1
+               targ v(1) td=1000ns val = '1.5' cross=1
.meas tran tplh trig v(2) td=1500ns val = '1.5' cross=1
+               targ v(1) td=1500ns val = '1.5' cross=1
.END
