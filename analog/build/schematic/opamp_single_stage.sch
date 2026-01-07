v {xschem version=3.4.4 file_version=1.2
}
G {}
K {type=subcircuit
format=@name @pinlist @symname
name=x1}
V {}
S {}
E {}
N -210 -210 60 -210 {
lab=VDD}
N -210 -210 -210 -90 {
lab=VDD}
N -210 -240 330 -240 {
lab=VDD}
N -210 -240 -210 -90 {
lab=VDD}
N -210 90 230 90 {
lab=VSS}
N 20 -180 20 -120 {
lab=VDD}
N 290 -210 290 -120 {
lab=VDD}
N 20 -120 290 -120 {
lab=VDD}
N -60 -180 20 -180 {
lab=VDD}
N -60 -180 -60 -150 {
lab=VDD}
N -60 -150 60 -150 {
lab=VDD}
N 60 -150 60 -80 {
lab=VDD}
N 330 -180 330 -80 {
lab=VOUT}
N 330 -130 360 -130 {
lab=VOUT}
N 20 -50 20 20 {
lab=VIN_P}
N 290 -50 290 20 {
lab=VIN_N}
N 60 -20 330 -20 {
lab=#net1}
N 230 -20 230 30 {
lab=#net1}
N 60 -50 140 -50 {
lab=VSS}
N 140 -50 140 90 {
lab=VSS}
N 330 -50 410 -50 {
lab=VSS}
N 410 -50 410 110 {
lab=VSS}
N 190 110 410 110 {
lab=VSS}
N 190 90 190 110 {
lab=VSS}
N 180 -240 180 -120 {
lab=VDD}
C {ipin.sym} 20 20 2 0 {name=VIN_P lab=VIN_P}
C {ipin.sym} 290 20 2 0 {name=VIN_N lab=VIN_N }
C {ipin.sym} -210 -90 3 0 {name=VDD lab=VDD}
C {ipin.sym} -210 90 1 0 {name=VSS lab=VSS}
C {opin.sym} 360 -130 0 0 {name=VOUT lab=VOUT}
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 40 -180 0 0 {name=M1
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
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 40 -50 0 0 {name=M2
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
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 310 -210 0 0 {name=M3
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
C {/home/wshh/Shiheng_Analog_Bootcamp/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 310 -50 0 0 {name=M4
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
C {isource.sym} 230 60 0 0 {name=I0 value=20u
}
