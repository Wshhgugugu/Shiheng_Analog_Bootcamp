v {xschem version=3.4.4 file_version=1.2
}
G {}
K {type=subcircuit
format=@name @pinlist @symname
name=x1}
V {}
S {}
E {}
N 40 -230 380 -230 {
lab=#net1}
N 0 -200 0 -70 {
lab=#net1}
N 420 -200 420 -70 {
lab=#net2}
N 0 -260 420 -260 {
lab=VDD}
N 210 -340 210 -260 {
lab=VDD}
N 0 -140 210 -140 {
lab=#net1}
N 210 -230 210 -140 {
lab=#net1}
N 830 -40 1000 -40 {
lab=VOUT_S2}
N 0 -10 0 70 {
lab=#net3}
N 0 70 420 70 {
lab=#net3}
N 420 -10 420 70 {
lab=#net3}
N 220 190 220 250 {
lab=VSS}
N 220 70 220 130 {
lab=#net3}
N -70 -230 -0 -230 {
lab=VDD}
N -70 -260 -70 -230 {
lab=VDD}
N -70 -260 0 -260 {
lab=VDD}
N 420 -230 480 -230 {
lab=VDD}
N 480 -260 480 -230 {
lab=VDD}
N 420 -260 480 -260 {
lab=VDD}
N 120 -40 120 20 {
lab=GND}
N 300 -40 300 20 {
lab=GND}
N 460 -40 560 -40 {
lab=VIN_N}
N 300 -40 420 -40 {
lab=GND}
N -110 -40 -40 -40 {
lab=VIN_P}
N 0 -40 120 -40 {
lab=GND}
N 210 -340 830 -340 {
lab=VDD}
N 830 -340 830 -260 {
lab=VDD}
N 830 -200 830 130 {
lab=VOUT_S2}
N 690 -230 790 -230 {
lab=#net2}
N 690 -230 690 -140 {
lab=#net2}
N 690 -80 720 -80 {
lab=#net4}
N 780 -80 830 -80 {
lab=VOUT_S2}
N 420 -180 690 -180 {
lab=#net2}
N 220 250 830 250 {
lab=VSS}
N 830 190 830 250 {
lab=VSS}
N 260 160 370 160 {
lab=#net5}
N 430 160 790 160 {
lab=#net6}
N -20 160 220 160 {
lab=GND}
N 830 -230 1060 -230 {
lab=VDD}
N 1060 -340 1060 -230 {
lab=VDD}
N 830 -340 1060 -340 {
lab=VDD}
N 960 -150 1030 -150 {
lab=VOUT_S2}
N 960 -150 960 -40 {
lab=VOUT_S2}
N 1070 -340 1070 -180 {
lab=VDD}
N 1060 -340 1070 -340 {
lab=VDD}
N 1070 -150 1110 -150 {
lab=VDD}
N 1110 -340 1110 -150 {
lab=VDD}
N 1070 -340 1110 -340 {
lab=VDD}
N 980 60 1030 60 {
lab=VOUT_S2}
N 980 -40 980 60 {
lab=VOUT_S2}
N 830 160 1000 160 {
lab=GND}
N 1070 90 1070 250 {
lab=VSS}
N 830 250 1070 250 {
lab=VSS}
N 1070 60 1240 60 {
lab=GND}
N 1070 -10 1070 30 {}
N 1070 -10 1240 -10 {}
N 1240 -40 1240 -10 {}
N 1070 -120 1070 -60 {}
N 1070 -60 1240 -60 {}
N 1240 -60 1240 -40 {}
C {ipin.sym} -110 -40 0 0 {name=VIN_P lab=VIN_P}
C {ipin.sym} 560 -40 2 0 {name=VIN_N lab=VIN_N }
C {ipin.sym} 210 -340 1 0 {name=VDD lab=VDD}
C {ipin.sym} 220 250 3 0 {name=VSS lab=VSS}
C {opin.sym} 1000 -40 0 0 {name=VOUT_S2 lab=VOUT_S2}
C {gnd.sym} 120 20 0 0 {name=l1 lab=GND}
C {gnd.sym} 300 20 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 20 -230 2 0 {name=M3
W=5
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 400 -230 0 0 {name=M4
W=5
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} 400 160 1 0 {name=VB2 value=0.7 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} -20 -40 0 0 {name=M1
W=5
L=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -40 2 0 {name=M2
W=5
L=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 240 160 2 0 {name=M9
W=5
L=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 810 -230 0 0 {name=M5
W=5
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 810 160 0 0 {name=M6
W=5
L=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {res.sym} 690 -110 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1000 160 0 0 {name=l3 lab=GND}
C {gnd.sym} -20 160 0 0 {name=l4 lab=GND}
C {capa.sym} 750 -80 3 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/pfet_01v8.sym} 1050 -150 0 0 {name=M7
W=10
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1050 60 0 0 {name=M8
W=10
L=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1240 60 0 0 {name=l5 lab=GND}
C {opin.sym} 1240 -40 0 0 {name=VOUT lab=VOUT}
