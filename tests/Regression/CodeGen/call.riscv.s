.data
.text
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	mv t1, a0
	mv a0, t1
	jr ra
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	addi sp, sp, -8
	sd ra, 0(sp)
	mv t1, a0
	mv a0, t1
	jal callee_cmmc_noinline
	mv t2, a0
	mv a0, t2
	ld ra, 0(sp)
	addi sp, sp, 8
	jr ra
.globl ret_forwarding
ret_forwarding:
	addi sp, sp, -8
	sd ra, 0(sp)
	jal getint
	mv t1, a0
	mv a0, t1
	jal putint
	ld ra, 0(sp)
	addi sp, sp, 8
	jr ra
