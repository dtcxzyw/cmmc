.data
.text
.globl pass_fast_bool
pass_fast_bool:
	sltu a1, zero, a0
	li a0, 66
	bne a1, zero, label8
	mv a0, zero
label8:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl pass_vector_bool
pass_vector_bool:
	sltu a1, zero, a0
	li a0, 66
	bne a1, zero, label16
	mv a0, zero
label16:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl ret_true
ret_true:
	li a0, 1
	ret
