transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Lab/Lab_project/T5.vhd}
vcom -93 -work work {C:/Lab/Lab_project/T1.vhd}
vcom -93 -work work {C:/Lab/Lab_project/Traffic_1.vhd}
vcom -93 -work work {C:/Lab/Lab_project/Encoder_4to2.vhd}

vcom -93 -work work {C:/Lab/Lab_project/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
