v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 70 -10 80 {
lab=GND}
N -320 -100 -320 -90 {
lab=GND}
N 60 -90 90 -90 {
lab=#net1}
N -10 10 90 10 {
lab=#net2}
N 90 -50 90 10 {
lab=#net2}
N -50 -30 50 -30 {
lab=#net3}
N 50 -70 50 -30 {
lab=#net3}
N 50 -70 90 -70 {
lab=#net3}
N 390 -110 410 -110 {
lab=VOUT}
N -220 -30 -220 -10 {
lab=GND}
N -220 -90 0 -90 {
lab=#net4}
N -110 -30 -110 30 {
lab=#net5}
N -260 30 -170 30 {
lab=#net4}
N -260 -90 -260 30 {
lab=#net4}
N -260 -90 -220 -90 {
lab=#net4}
N -320 -160 90 -160 {
lab=#net6}
N 90 -160 90 -110 {
lab=#net6}
C {vsource.sym} -10 40 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} -320 -130 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -10 80 0 0 {name=l1 lab=GND}
C {gnd.sym} -320 -90 0 0 {name=l2 lab=GND}
C {vsource.sym} -220 -60 0 0 {name=VCM value=0.9 savecurrent=false}
C {vsource.sym} -140 30 1 0 {name=VDIFF value=0 savecurrent=false}
C {gnd.sym} -220 -10 0 0 {name=l4 lab=GND}
C {res.sym} 30 -90 1 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {res.sym} -80 -30 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {opin.sym} 410 -110 0 0 {name=VOUT lab=VOUT}
C {opamp_single_stage.sym} 240 -80 0 0 {name=x1}
C {code_shown.sym} 110 20 0 0 {name=s1 only_toplevel=false value="
.lib /home/wshh/.volare/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option scale=1e-6
.control
save all
dc VDIFF -0.01 0.01 0.0001
op
print i(VDD)
let power_uw = abs(i(VDD)) * 1.8 * 1e6
print power_uw
.endc
"}
