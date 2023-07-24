.data
.text
.globl dont_crash
dont_crash:
.p2align 2
	jr $ra
	nop
.globl main128
main128:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl main4k
main4k:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl main4k_win64
main4k_win64:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
