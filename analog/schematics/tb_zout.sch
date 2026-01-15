v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 140 50 150 {
lab=GND}
N -260 -30 -260 -20 {
lab=GND}
N 120 -20 150 -20 {
lab=#net1}
N 50 80 150 80 {
lab=#net2}
N 150 20 150 80 {
lab=#net2}
N 10 40 110 40 {
lab=#net3}
N 110 0 110 40 {
lab=#net3}
N 110 0 150 0 {
lab=#net3}
N 450 -40 470 -40 {
lab=VOUT}
N -160 40 -160 60 {
lab=GND}
N -160 -20 60 -20 {
lab=#net4}
N -50 40 -50 100 {
lab=#net5}
N -200 100 -110 100 {
lab=#net4}
N -200 -20 -200 100 {
lab=#net4}
N -200 -20 -160 -20 {
lab=#net4}
N -260 -90 150 -90 {
lab=#net6}
N 150 -90 150 -40 {
lab=#net6}
C {vsource.sym} 50 110 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} -260 -60 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} 50 150 0 0 {name=l1 lab=GND}
C {gnd.sym} -260 -20 0 0 {name=l2 lab=GND}
C {vsource.sym} -160 10 0 0 {name=VCM value=0.9 savecurrent=false}
C {vsource.sym} -80 100 1 0 {name=VDIFF value=0 savecurrent=false}
C {gnd.sym} -160 60 0 0 {name=l4 lab=GND}
C {res.sym} 90 -20 1 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {res.sym} -20 40 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {opin.sym} 470 -40 0 0 {name=VOUT lab=VOUT}
C {opamp_single_stage.sym} 300 -10 0 0 {name=x1}
C {code_shown.sym} 170 90 0 0 {name=s1 only_toplevel=false value="
.lib /home/wshh/.volare/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option scale=1e-6
.control
save all
ac dec 10 1 1G
let zout = v(vout)/1
plot mag(zout) xlog title 'Output Impedance'
.endc
"}
