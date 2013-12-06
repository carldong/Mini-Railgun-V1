.control
set height = 99999999999999999999999
save v(Vout1) v(Vcap) v(Vamp1) v(VDS1) i(Vsds) i(Vschg) i(Vstvs) v(Vcomp) v(Vcon) v(Vref) i(Vsen_osc)
tran 10n 100u

write out/rawdata.raw 

wrdata out/555-Fin3 v(Vout1) v(VDS1) v(Vcap) i(Vsds) i(Vschg) i(Vstvs) v(Vcomp) v(Vcon) v(Vref) i(Vsen_osc)

*print v(Vcap) v(Vamp2) > out/result-volt.data
*print i(Vschg) i(IDS2) > out/result-amp.data
*gnuplot out/graph-cur I(Vschg)
*gnuplot out/graph v(Vout1) v(Vcap)
.endc
