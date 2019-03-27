rm -f timeres
touch timeres
echo -n "1 100 " >>timeres; awk '{last=$5} END{print last}' awkres_bs1_l100  >>timeres
echo -n "1 200 " >>timeres; awk '{last=$5} END{print last}' awkres_bs1_l200  >>timeres
echo -n "1 400 " >>timeres; awk '{last=$5} END{print last}' awkres_bs1_l400  >>timeres
echo -n "1 800 " >>timeres; awk '{last=$5} END{print last}' awkres_bs1_l800  >>timeres
                          
echo -n "16 100 ">>timeres; awk '{last=$5} END{print last}' awkres_bs16_l100 >>timeres
echo -n "16 200 ">>timeres; awk '{last=$5} END{print last}' awkres_bs16_l200 >>timeres
echo -n "16 400 ">>timeres; awk '{last=$5} END{print last}' awkres_bs16_l400 >>timeres
echo -n "16 800 ">>timeres; awk '{last=$5} END{print last}' awkres_bs16_l800 >>timeres

gnuplot -p -e 'set yrange [0:10000000];plot "timeres" u 2:($1==1?$3:1/0) w linesp,"timeres" u 2:($1==16?$3:1/0) w linesp'
