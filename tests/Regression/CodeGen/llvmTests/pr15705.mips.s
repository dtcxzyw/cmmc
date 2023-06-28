.data
.section .rodata
.bss
.text
.globl PR15705
PR15705:
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	bne $t0, $zero, label11
	nop
	move $v0, $a2
	b label2
	nop
label11:
	xor $t0, $a0, $a2
	sltiu $t0, $t0, 1
	movn $a1, $a3, $t0
	move $v0, $a1
label2:
	jr $ra
	nop
