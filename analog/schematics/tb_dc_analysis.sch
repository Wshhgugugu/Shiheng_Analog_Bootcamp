v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 150 -100 160 {
lab=GND}
N -410 -20 -410 -10 {
lab=GND}
N -30 -10 0 -10 {
lab=#net1}
N -100 90 -0 90 {
lab=#net2}
N 0 30 -0 90 {
lab=#net2}
N -140 50 -40 50 {
lab=#net3}
N -40 10 -40 50 {
lab=#net3}
N -40 10 -0 10 {
lab=#net3}
N 300 -30 320 -30 {
lab=VOUT}
N -310 50 -310 70 {
lab=GND}
N -310 -10 -90 -10 {
lab=#net4}
N -200 50 -200 110 {
lab=#net5}
N -350 110 -260 110 {
lab=#net4}
N -350 -10 -350 110 {
lab=#net4}
N -350 -10 -310 -10 {
lab=#net4}
N -410 -80 -0 -80 {
lab=#net6}
N -0 -80 -0 -30 {
lab=#net6}
C {vsource.sym} -100 120 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} -410 -50 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -100 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -410 -10 0 0 {name=l2 lab=GND}
C {vsource.sym} -310 20 0 0 {name=VCM value=0.9 savecurrent=false}
C {vsource.sym} -230 110 1 0 {name=VDIFF value=0 savecurrent=false}
C {gnd.sym} -310 70 0 0 {name=l4 lab=GND}
C {res.sym} -60 -10 1 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {res.sym} -170 50 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {opin.sym} 320 -30 0 0 {name=VOUT lab=VOUT}
C {opamp_single_stage.sym} 150 0 0 0 {name=x1}
C {code_shown.sym} 20 100 0 0 {name=s1 only_toplevel=false value=".lib /home/wshh/.volare/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option scale=1e-6
.control
save all
dc VDIFF -0.01 0.01 0.0001
plot v(vout)
plot deriv(v(vout))
op
print i(VDD)
.endc"}
