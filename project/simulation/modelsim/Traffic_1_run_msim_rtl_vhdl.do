transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Lab/project/Encoder_4to2.vhd}
vcom -93 -work work {C:/Lab/project/Traffic_1.vhd}
vcom -93 -work work {C:/Lab/project/T1.vhd}
vcom -93 -work work {C:/Lab/project/T5.vhd}

