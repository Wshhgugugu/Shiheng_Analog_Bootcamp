v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 90 0 30 {
lab=#net1}
N -130 -70 -120 -70 {
lab=GND}
N -100 150 -100 160 {
lab=GND}
N -70 -90 -60 -90 {
lab=GND}
N -200 10 0 10 {
lab=#net2}
N -260 -10 -260 10 {
lab=#net3}
N -260 -10 -130 -10 {
lab=#net3}
N 0 -90 0 -30 {
lab=#net4}
N -130 -10 0 -10 {
lab=#net3}
C {vsource.sym} -100 120 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} -30 -90 1 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -100 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -70 -90 1 0 {name=l2 lab=GND}
C {vsource.sym} -130 -40 2 0 {name=VCM value=0.9 savecurrent=false}
C {vsource.sym} -230 10 1 0 {name=VDIFF value=0 savecurrent=false}
C {gnd.sym} -120 -70 3 0 {name=l4 lab=GND}
C {code_shown.sym} 180 70 0 0 {name=s1 only_toplevel=false value="
.lib /home/wshh/.volare/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
save all
dc VDIFF -0.01 0.01 0.0001
plot v(vout)
plot deriv(v(vout))
.endc
"
}
C {/home/wshh/Shiheng_Analog_Bootcamp/analog/schematics/opamp_single_stage.sym} 150 0 0 0 {name=x1}
