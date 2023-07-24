.data
.text
.globl f1
f1:
.p2align 2
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl f6
f6:
.p2align 2
	sll $t0, $a1, 5
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl f7
f7:
.p2align 2
	srl $t0, $a1, 6
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl f8
f8:
.p2align 2
	srl $t0, $a1, 7
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl f9
f9:
.p2align 2
	sll $t0, $a0, 24
	srl $t1, $a0, 8
	or $t0, $t0, $t1
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl swap_cmp_ashr
swap_cmp_ashr:
.p2align 2
	srl $t0, $a0, 11
	slt $t0, $t0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl swap_cmp_lshr
swap_cmp_lshr:
.p2align 2
	srl $t0, $a0, 11
	sltu $v0, $t0, $a1
	jr $ra
	nop
.globl swap_cmp_rotr
swap_cmp_rotr:
.p2align 2
	srl $t0, $a0, 11
	sll $t1, $a0, 21
	or $t0, $t0, $t1
	sltu $t0, $t0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl swap_cmp_shl
swap_cmp_shl:
.p2align 2
	sll $t0, $a0, 11
	slt $v0, $a1, $t0
	jr $ra
	nop
