v {xschem version=3.4.4 file_version=1.2
}
G {}
K {type=subcircuit
format=@name @pinlist @symname
name=x1}
V {}
S {}
E {}
L 4 -40 -80 -40 80 {}
L 4 -40 80 90 -0 {}
L 4 -40 -80 90 -0 {}
C {ipin.sym} -50 -20 2 0 {name=VIN_P lab=VIN_P}
C {ipin.sym} -50 20 2 0 {name=VIN_N lab=VIN_N }
C {ipin.sym} -40 -90 3 0 {name=VDD lab=VDD}
C {ipin.sym} -40 90 1 0 {name=VSS lab=VSS}
C {opin.sym} 100 0 2 0 {name=VOUT lab=VOUT}
