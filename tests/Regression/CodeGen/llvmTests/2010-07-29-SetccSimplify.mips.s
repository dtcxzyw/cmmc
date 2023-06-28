.data
.section .rodata
.bss
.text
.globl extend2bit_v2
extend2bit_v2:
	andi $t0, $a0, 255
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	xori $t0, $t0, 3
	sltiu $v0, $t0, 1
	jr $ra
	nop
