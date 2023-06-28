.data
.text
.globl pass_bool
pass_bool:
	sltu a1, zero, a0
	li a0, 66
	bne a1, zero, label8
	mv a0, zero
label8:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl ret_true
ret_true:
	li a0, 1
	ret
