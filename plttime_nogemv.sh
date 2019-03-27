rm -f timeres_nogemv
touch timeres_nogemv
echo -n "1 100 " >>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs1_l100  >>timeres_nogemv
echo -n "1 200 " >>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs1_l200  >>timeres_nogemv
echo -n "1 400 " >>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs1_l400  >>timeres_nogemv
echo -n "1 800 " >>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs1_l800  >>timeres_nogemv
echo -n "16 100 ">>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs16_l100 >>timeres_nogemv
echo -n "16 200 ">>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs16_l200 >>timeres_nogemv
echo -n "16 400 ">>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs16_l400 >>timeres_nogemv
echo -n "16 800 ">>timeres_nogemv; awk '{last=$5} END{print last}' awkres_nogemv_bs16_l800 >>timeres_nogemv

gnuplot -p -e 'set yrange [0:10000000];plot "timeres_nogemv" u 2:($1==1?$3:1/0) w linesp,"timeres_nogemv" u 2:($1==16?$3:1/0) w linesp'
