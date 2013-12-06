.control
tran 10n 10u

write out/rawdata.raw
wrdata out/555-Amp1 I(Vsen2) Vout1 Vamp1 Vamp2
gnuplot out/graph-cur I(Vsen2) 
gnuplot out/graph Vamp1 Vamp2
*plot Vout1 
.endc
