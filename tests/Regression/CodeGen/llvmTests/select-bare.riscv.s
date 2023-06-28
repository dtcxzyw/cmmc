.data
.text
.globl bare_select
bare_select:
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label8
	mv a0, a2
label8:
	ret
.globl bare_select_float
bare_select_float:
	sltu a0, zero, a0
	fmv.s f10, f11
	bne a0, zero, label16
	fmv.s f10, f12
label16:
	ret
