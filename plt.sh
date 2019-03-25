grep -v "^GPGPU-Sim" xx10_l100 |awk -f plt.awk  > awkres_l100
grep -v "^GPGPU-Sim" xx10_l200 |awk -f plt.awk  > awkres_l200
grep -v "^GPGPU-Sim" xx10_l400 |awk -f plt.awk  > awkres_l400
grep -v "^GPGPU-Sim" xx10_l800 |awk -f plt.awk  > awkres_l800
#gnuplot -p -e 'set title "gpu\_sim\_cycle";plot "awkres_l100" u 5:2 w linesp,"awkres_l200" u 5:2 w linesp,"awkres_l400" u 5:2 w linesp,"awkres_l800" u 5:2 w linesp'
#gnuplot -p -e 'set title "gpu\_sim\_insn" ;plot "awkres_l100" u 5:3 w linesp,"awkres_l200" u 5:3 w linesp,"awkres_l400" u 5:3 w linesp,"awkres_l800" u 5:3 w linesp'
gnuplot -p -e 'set title "gpu\_ipc"      ;plot "awkres_l100" u 5:4 w linesp,"awkres_l200" u 5:4 w linesp,"awkres_l400" u 5:4 w linesp,"awkres_l800" u 5:4 w linesp'
#gnuplot -p -e 'set title "gpu\_occupancy";plot "awkres_l100" u 5:9 w linesp,"awkres_l200" u 5:9 w linesp,"awkres_l400" u 5:9 w linesp,"awkres_l800" u 5:9 w linesp'
