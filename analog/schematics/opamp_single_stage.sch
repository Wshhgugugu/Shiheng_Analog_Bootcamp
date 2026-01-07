v {xschem version=3.4.4 file_version=1.2
}
G {}
K {type=subcircuit
format=@name @pinlist @symname
name=x1}
V {}
S {}
E {}
N -110 -40 -40 -40 {
lab=VIN_P}
N 40 -230 380 -230 {
lab=#net1}
N 0 -200 0 -70 {
lab=#net1}
N 420 -200 420 -70 {
lab=VOUT}
N 0 -260 420 -260 {
lab=VDD}
N 210 -340 210 -260 {
lab=VDD}
N 0 -140 210 -140 {
lab=#net1}
N 210 -230 210 -140 {
lab=#net1}
N 420 -180 590 -180 {
lab=VOUT}
N 0 -10 0 70 {
lab=#net2}
N 0 70 420 70 {
lab=#net2}
N 420 -10 420 70 {
lab=#net2}
N 220 190 220 250 {
lab=VSS}
N 220 70 220 130 {
lab=#net2}
N 460 -40 560 -40 {
lab=VIN_N}
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
N 0 -40 120 -40 {
lab=GND}
N 120 -40 120 20 {
lab=GND}
N 300 -40 420 -40 {
lab=GND}
N 300 -40 300 20 {
lab=GND}
N 70 160 180 160 {}
C {ipin.sym} -110 -40 0 0 {name=VIN_P lab=VIN_P}
C {ipin.sym} 560 -40 2 0 {name=VIN_N lab=VIN_N }
C {ipin.sym} 210 -340 1 0 {name=VDD lab=VDD}
C {ipin.sym} 220 250 3 0 {name=VSS lab=VSS}
C {opin.sym} 590 -180 0 0 {name=VOUT lab=VOUT}
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} -20 -40 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 200 160 0 0 {name=M9
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 440 -40 2 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 120 20 0 0 {name=l1 lab=GND}
C {gnd.sym} 300 20 0 0 {name=l2 lab=GND}
C {/home/wshh/.volare/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 20 -230 2 0 {name=M3
W=1
L=0.15
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
C {/home/wshh/.volare/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 400 -230 0 0 {name=M4
W=1
L=0.15
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
C {vsource.sym} 40 160 1 0 {name=VB2 value=0.7 savecurrent=false}
