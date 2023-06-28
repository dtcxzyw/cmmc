.data
.text
.globl pass_bool
pass_bool:
	sltu a0, zero, a0
	subw a0, zero, a0
	andi a0, a0, 66
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl ret_true
ret_true:
	li a0, 1
	ret
