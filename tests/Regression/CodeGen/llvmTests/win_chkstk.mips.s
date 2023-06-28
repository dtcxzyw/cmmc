.data
.text
.globl dont_crash
dont_crash:
	jr $ra
	nop
.globl main128
main128:
	move $v0, $zero
	jr $ra
	nop
.globl main4k
main4k:
	move $v0, $zero
	jr $ra
	nop
.globl main4k_win64
main4k_win64:
	move $v0, $zero
	jr $ra
	nop
