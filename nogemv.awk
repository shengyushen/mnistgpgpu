{
	if($0 ~ /START gemv/) {ssy=1}
	else if($0 ~ /END gemv/) {ssy=0}
	if(ssy==0 && $0 !~ /END gemv/) print

}
