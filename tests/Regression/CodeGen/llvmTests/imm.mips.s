.data
.section .rodata
.bss
.text
.globl test1
test1:
	li $t0, -268435441
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl test2
test2:
	li $v0, 65533
	jr $ra
	nop
.globl test3
test3:
	ori $v0, $a0, 65533
	jr $ra
	nop
