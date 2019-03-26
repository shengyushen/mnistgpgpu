
for bs in 1 16 64 256
do 
	for l in 100 200 400 800
	do
		grep -v "^GPGPU-Sim\|^[ \t]*$\|L2_BW_total" xx10_bs${bs}_l${l} |awk -f plt.awk  > awkres_bs${bs}_l${l}
	done
done 
#gnuplot -p -e 'set title "gpu\_sim\_cycle";plot "awkres_l100" u 5:2 w linesp,"awkres_l200" u 5:2 w linesp,"awkres_l400" u 5:2 w linesp,"awkres_l800" u 5:2 w linesp'
#gnuplot -p -e 'set title "gpu\_sim\_insn" ;plot "awkres_l100" u 5:3 w linesp,"awkres_l200" u 5:3 w linesp,"awkres_l400" u 5:3 w linesp,"awkres_l800" u 5:3 w linesp'
#gnuplot -p -e 'set title "gpu ipc"      ;plot "awkres_bs1_l100" u 5:4 w linesp,"awkres_bs1_l200" u 5:4 w linesp,"awkres_bs1_l400" u 5:4 w linesp,"awkres_bs1_l800" u 5:4 w linesp,"awkres_bs16_l100" u 5:4 w linesp,"awkres_bs16_l200" u 5:4 w linesp,"awkres_bs16_l400" u 5:4 w linesp,"awkres_bs16_l800" u 5:4 w linesp'
#gnuplot -p -e 'set title "gpu\_occupancy";plot "awkres_l100" u 5:9 w linesp,"awkres_l200" u 5:9 w linesp,"awkres_l400" u 5:9 w linesp,"awkres_l800" u 5:9 w linesp'
gnuplot ./plt.plt

