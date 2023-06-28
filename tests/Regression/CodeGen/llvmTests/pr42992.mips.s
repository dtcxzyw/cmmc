.data
.section .rodata
.bss
.text
.globl hoge
hoge:
	li $t0, -1
	sllv $t1, $t0, $a0
	xor $t0, $t1, $t0
	sll $t0, $t0, 8
	andi $v0, $t0, 3840
	jr $ra
	nop
