.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
