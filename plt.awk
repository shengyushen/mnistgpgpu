function assert(condition)
{
    if (! condition) {
        printf("%s:%d: assertion failed: %s\n",
            FILENAME, FNR, "") > "/dev/stderr"
        _assert_exit = 1
        exit 1
    }
}

END {
    if (_assert_exit)
        exit 1
}

{
	if($1=="kernel_launch_uid") {
		printf $3 " ";

		getline; assert($1=="gpu_sim_cycle"); printf $3;printf " ";
		getline; assert($1=="gpu_sim_insn"); printf $3;printf " ";
		getline; assert($1=="gpu_ipc"); printf $3;printf " ";
		getline; assert($1=="gpu_tot_sim_cycle"); printf $3;printf " ";
		getline; assert($1=="gpu_tot_sim_insn"); printf $3;printf " ";
		getline; assert($1=="gpu_tot_ipc"); printf $3;printf " ";
		getline; assert($1=="gpu_tot_issued_cta"); printf $3;printf " ";
		getline; assert($1=="gpu_occupancy"); printf $3;printf " ";
		getline; assert($1=="gpu_tot_occupancy"); printf $3;printf " ";
		getline; assert($1=="max_total_param_size"); printf $3;printf " ";
		getline; assert($1=="gpu_stall_dramfull"); printf $3;printf " ";
		getline; assert($1=="gpu_stall_icnt2sh"); printf $3;printf " ";
		getline; assert($1=="partiton_level_parallism"); printf $3;printf " ";
		getline; assert($1=="partiton_level_parallism_total"); printf $3;printf " ";
		getline; assert($1=="partiton_level_parallism_util"); printf $3;printf " ";
		getline; assert($1=="partiton_level_parallism_util_total"); printf $3;printf " ";
		getline; assert($1=="L2_BW"); printf $3;printf " ";
#		getline; assert($1=="L2_BW_total"); printf $3;printf " ";
		getline; assert($1 ~ "^gpu_total_sim_rate"); split($1,arr);printf arr[3];

		print ""
	}
}
