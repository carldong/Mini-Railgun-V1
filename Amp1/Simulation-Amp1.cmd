.control
tran 10n 10u

*write out/rawdata.raw
wrdata out/555-Amp1 Vout1 Vamp1
gnuplot out/graph v(Vout1) v(Vamp1)
.endc
