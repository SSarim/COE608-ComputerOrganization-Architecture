onerror {exit -code 1}
vlib work
vlog -work work lab_4a.vo
vlog -work work Lab-4a-Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.data_mem_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab_4a.msim.vcd
vcd add -internal data_mem_vlg_vec_tst/*
vcd add -internal data_mem_vlg_vec_tst/i1/*
run -all
quit -f
