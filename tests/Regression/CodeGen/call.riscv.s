.data
.section .rodata
.bss
.text
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	ret
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	addi sp, sp, -8
	sd ra, 0(sp)
	jal callee_cmmc_noinline
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
.globl ret_forwarding
ret_forwarding:
	addi sp, sp, -8
	sd ra, 0(sp)
	jal getint
	jal putint
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
