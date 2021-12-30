*MOS OUTPUT CHARACTERISTICS
.lib './mosfet.lib' MOS
.OPTIONS post
VD 3 0
VG 2 0 DC 3.0
M1 3 2 0 0 nmos L=0.5U W=0.5U

.DC VD 1.5 3.0 0.1
.PROBE DC i(M1)
.END
