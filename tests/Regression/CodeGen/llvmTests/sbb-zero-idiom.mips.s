.data
.text
.p2align 2
.globl i32_select_0_or_neg1
i32_select_0_or_neg1:
	sltu $t0, $zero, $a0
	subu $v0, $zero, $t0
	jr $ra
	nop
