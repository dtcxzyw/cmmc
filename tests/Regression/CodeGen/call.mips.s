.data
.section .rodata
.bss
.text
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	move $v0, $a0
	jr $ra
	nop
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	addiu $sp, $sp, -24
	sw $ra, 16($sp)
	jal callee_cmmc_noinline
	nop
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
.globl ret_forwarding
ret_forwarding:
	addiu $sp, $sp, -24
	sw $ra, 16($sp)
	jal getint
	nop
	move $a0, $v0
	jal putint
	nop
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
