v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 43400 46500 1 0 0 vdc-1.sym
{
T 44100 47350 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 44100 47550 5 10 0 0 0 0 1
footprint=none
T 44100 47150 5 10 1 1 0 0 1
refdes=Vin
T 44100 46950 5 10 1 1 0 0 1
value=DC 12V
}
N 43700 47700 43700 49500 4
N 43700 49500 48400 49500 4
N 48400 49500 48400 48500 4
N 47600 48500 47600 49500 4
N 46800 46100 43700 46100 4
N 43700 46100 43700 46500 4
C 43700 45800 1 0 0 gnd-1.sym
{
T 43700 45800 5 10 1 1 0 0 1
netname=Gnd
}
N 49100 47600 49100 47900 4
N 45700 47900 49100 47900 4
C 46400 47900 1 90 0 resistor-1.sym
{
T 46000 48200 5 10 0 0 90 0 1
device=RESISTOR
T 46100 48100 5 10 1 1 90 0 1
refdes=R1
T 46400 47900 5 10 1 1 0 0 1
value=5.1K
}
C 46400 47000 1 90 0 resistor-1.sym
{
T 46000 47300 5 10 0 0 90 0 1
device=RESISTOR
T 46100 47200 5 10 1 1 90 0 1
refdes=R2
T 46400 47000 5 10 1 1 0 0 1
value=6.8K
}
N 46300 48800 46300 49500 4
N 45700 47000 46800 47000 4
N 46800 47000 46800 47200 4
C 46500 46100 1 90 0 capacitor-1.sym
{
T 45800 46300 5 10 0 0 90 0 1
device=CAPACITOR
T 45600 46300 5 10 0 0 90 0 1
symversion=0.1
T 46000 46300 5 10 1 1 90 0 1
refdes=C1
T 46500 46100 5 10 1 1 0 0 1
value=1n
}
C 43500 49500 1 0 0 vcc-1.sym
C 41600 46300 1 0 0 spice-include-1.sym
{
T 41700 46600 5 10 0 1 0 0 1
device=include
T 41700 46700 5 10 1 1 0 0 1
refdes=A2
T 42100 46400 5 10 1 1 0 0 1
file=./Simulation-Amp1.cmd
}
C 50100 45900 1 90 0 capacitor-1.sym
{
T 49400 46100 5 10 0 0 90 0 1
device=CAPACITOR
T 49200 46100 5 10 0 0 90 0 1
symversion=0.1
T 49600 46100 5 10 1 1 90 0 1
refdes=C2
T 49900 46500 5 10 1 1 0 0 1
value=0.1n
}
N 49100 46800 49900 46800 4
N 49900 45900 49900 45400 4
N 44500 45400 49900 45400 4
N 44500 45400 44500 46100 4
C 46800 45700 1 0 0 lm555-1.sym
{
T 49100 48100 5 10 0 0 0 0 1
device=LM555
T 48600 45700 5 10 1 1 0 0 1
refdes=X1
T 46800 45700 5 10 1 1 0 0 1
model-name=UA555
}
N 49100 47200 46800 47200 4
C 41400 48800 1 0 0 spice-model-1.sym
{
T 41500 49500 5 10 0 1 0 0 1
device=model
T 41500 49400 5 10 1 1 0 0 1
refdes=A3
T 42700 49100 5 10 1 1 0 0 1
model-name=UA555
T 41900 48900 5 10 1 1 0 0 1
file=../models/UA555.mod
}
C 41200 45100 1 0 0 spice-model-1.sym
{
T 41300 45800 5 10 0 1 0 0 1
device=model
T 41300 45700 5 10 1 1 0 0 1
refdes=A4
T 42500 45400 5 10 1 1 0 0 1
model-name=irfp250n
T 41700 45200 5 10 1 1 0 0 1
file=../models/irfp250n.spi
}
C 41200 44200 1 0 0 spice-model-1.sym
{
T 41300 44900 5 10 0 1 0 0 1
device=model
T 41300 44800 5 10 1 1 0 0 1
refdes=A5
T 42500 44500 5 10 1 1 0 0 1
model-name=BD139
T 41700 44300 5 10 1 1 0 0 1
file=../models/BD139.SP3
}
C 41200 43200 1 0 0 spice-model-1.sym
{
T 41300 43900 5 10 0 1 0 0 1
device=model
T 41300 43800 5 10 1 1 0 0 1
refdes=A6
T 42500 43500 5 10 1 1 0 0 1
model-name=BD140
T 41700 43300 5 10 1 1 0 0 1
file=../models/BD140.SP3
}
C 52000 46500 1 0 0 spice-npn-1.sym
{
T 52900 47200 5 10 0 0 0 0 1
device=SPICE-NPN
T 52900 47000 5 10 1 1 0 0 1
refdes=Q1
T 52000 46500 5 10 1 1 0 0 1
model-name=BD139
}
N 52000 45300 52000 47000 4
C 52000 45800 1 180 1 spice-pnp-1.sym
{
T 52900 45100 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 52900 45300 5 10 1 1 180 6 1
refdes=Q2
T 52000 45800 5 10 1 1 180 6 1
model-name=BD140
}
C 50500 46000 1 0 0 resistor-1.sym
{
T 50800 46400 5 10 0 0 0 0 1
device=RESISTOR
T 50700 46300 5 10 1 1 0 0 1
refdes=R3
T 50500 46000 5 10 1 1 0 0 1
value=68
}
N 52600 46500 52600 45800 4
{
T 52600 46500 5 10 1 1 0 0 1
netname=Vamp1
}
C 52400 48800 1 0 0 vcc-1.sym
N 52600 47500 52600 47900 4
C 52500 42700 1 0 0 gnd-1.sym
N 52600 43900 52600 43000 4
N 53900 46200 54600 46200 4
N 50500 46100 49100 46100 4
{
T 49000 45800 5 10 1 1 0 0 1
netname=Vout1
}
N 51400 46100 52000 46100 4
C 45500 47900 1 270 0 diode-1.sym
{
T 46100 47500 5 10 0 0 270 0 1
device=1N4148
T 45400 47300 5 10 1 1 90 0 1
refdes=X3
T 45500 47900 5 10 1 1 0 0 1
model-name=1N4148
}
C 41100 42200 1 0 0 spice-model-1.sym
{
T 41200 42900 5 10 0 1 0 0 1
device=model
T 41200 42800 5 10 1 1 0 0 1
refdes=A7
T 42400 42500 5 10 1 1 0 0 1
model-name=1N4148
T 41600 42300 5 10 1 1 0 0 1
file=../models/1N4148.prm
}
C 53000 46100 1 0 0 resistor-1.sym
{
T 53300 46500 5 10 0 0 0 0 1
device=RESISTOR
T 53200 46400 5 10 1 1 0 0 1
refdes=R4
T 53000 46100 5 10 1 1 0 0 1
value=5.1
}
C 54500 45900 1 0 0 gnd-1.sym
N 53000 46200 52600 46200 4
C 52700 47900 1 90 0 resistor-1.sym
{
T 52300 48200 5 10 0 0 90 0 1
device=RESISTOR
T 52400 48100 5 10 1 1 90 0 1
refdes=R5
T 52700 47900 5 10 1 1 0 0 1
value=1m
}
C 52700 43900 1 90 0 resistor-1.sym
{
T 52300 44200 5 10 0 0 90 0 1
device=RESISTOR
T 52400 44100 5 10 1 1 90 0 1
refdes=R6
T 52700 43900 5 10 1 1 0 0 1
value=1m
}
T 50400 40900 9 10 1 0 0 0 1
555 Timer Square Wave Generator
T 54100 40300 9 10 1 0 0 0 1
V0.1
T 54100 40100 9 10 1 0 0 0 1
Carl_科学狂人
