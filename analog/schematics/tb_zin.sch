v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 130 -10 140 {
lab=GND}
N -320 -40 -320 -30 {
lab=GND}
N 60 -30 90 -30 {
lab=#net1}
N -10 70 90 70 {
lab=#net2}
N 90 10 90 70 {
lab=#net2}
N -50 30 50 30 {
lab=#net3}
N 50 -10 50 30 {
lab=#net3}
N 50 -10 90 -10 {
lab=#net3}
N 390 -50 410 -50 {
lab=VOUT}
N -220 30 -220 50 {
lab=GND}
N -220 -30 0 -30 {
lab=#net4}
N -110 30 -110 90 {
lab=#net5}
N -260 90 -170 90 {
lab=#net4}
N -260 -30 -260 90 {
lab=#net4}
N -260 -30 -220 -30 {
lab=#net4}
N -320 -100 90 -100 {
lab=#net6}
N 90 -100 90 -50 {
lab=#net6}
C {vsource.sym} -10 100 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} -320 -70 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -10 140 0 0 {name=l1 lab=GND}
C {gnd.sym} -320 -30 0 0 {name=l2 lab=GND}
C {vsource.sym} -220 0 0 0 {name=VCM value=0.9 savecurrent=false}
C {vsource.sym} -140 90 1 0 {name=VDIFF value=0 savecurrent=false}
C {gnd.sym} -220 50 0 0 {name=l4 lab=GND}
C {res.sym} 30 -30 1 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {res.sym} -80 30 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {opin.sym} 410 -50 0 0 {name=VOUT lab=VOUT}
C {opamp_single_stage.sym} 240 -20 0 0 {name=x1}
C {code_shown.sym} 110 80 0 0 {name=s1 only_toplevel=false value="
.lib /home/wshh/.volare/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option scale=1e-6
.control
save all
ac dec 10 1 1G
let zin = v(vin_p)/1
plot mag(zin) xlog title 'Input Impedance'
print mag(zin)[0]
.endc
"}
