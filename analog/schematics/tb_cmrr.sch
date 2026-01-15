v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 130 20 140 {
lab=GND}
N -290 -40 -290 -30 {
lab=GND}
N 90 -30 120 -30 {
lab=#net1}
N 20 70 120 70 {
lab=#net2}
N 120 10 120 70 {
lab=#net2}
N -20 30 80 30 {
lab=#net3}
N 80 -10 80 30 {
lab=#net3}
N 80 -10 120 -10 {
lab=#net3}
N 420 -50 440 -50 {
lab=VOUT}
N -190 30 -190 50 {
lab=GND}
N -190 -30 30 -30 {
lab=#net4}
N -80 30 -80 90 {
lab=#net5}
N -230 90 -140 90 {
lab=#net4}
N -230 -30 -230 90 {
lab=#net4}
N -230 -30 -190 -30 {
lab=#net4}
N -290 -100 120 -100 {
lab=#net6}
N 120 -100 120 -50 {
lab=#net6}
C {vsource.sym} 20 100 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} -290 -70 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} 20 140 0 0 {name=l1 lab=GND}
C {gnd.sym} -290 -30 0 0 {name=l2 lab=GND}
C {vsource.sym} -190 0 0 0 {name=VCM value=0.9 savecurrent=false}
C {vsource.sym} -110 90 1 0 {name=VDIFF value=0 savecurrent=false}
C {gnd.sym} -190 50 0 0 {name=l4 lab=GND}
C {res.sym} 60 -30 1 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {res.sym} -50 30 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {opin.sym} 440 -50 0 0 {name=VOUT lab=VOUT}
C {opamp_single_stage.sym} 270 -20 0 0 {name=x1}
C {code_shown.sym} 140 80 0 0 {name=s1 only_toplevel=false value="
.lib /home/wshh/.volare/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option scale=1e-6
.control
save all
dc VCM 0.5 1.3 0.01
plot v(vout) title 'Common-mode Response'
.endc
"}
