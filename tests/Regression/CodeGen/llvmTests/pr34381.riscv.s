.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl var_21
var_21:
	.zero	4
.align 1
.globl var_29
var_29:
	.zero	1
.align 4
.globl var_390
var_390:
	.zero	4
.align 1
.globl var_11
var_11:
	.zero	1
.align 1
.globl var_370
var_370:
	.zero	1
.text
.globl _Z3foov
_Z3foov:
pcrel42:
	auipc a0, %pcrel_hi(var_21)
pcrel43:
	auipc a1, %pcrel_hi(var_29)
	lw a0, %pcrel_lo(pcrel42)(a0)
	lb a1, %pcrel_lo(pcrel43)(a1)
	sext.b a1, a1
	subw a2, zero, a1
	li a1, 4294967295
	and a2, a2, a1
	sltu a0, a0, a2
	addiw a0, a0, -1
	andi a0, a0, 255
	sltiu a0, a0, 1
	and a0, a0, a1
pcrel44:
	auipc a1, %pcrel_hi(var_390)
	sw a0, %pcrel_lo(pcrel44)(a1)
pcrel45:
	auipc a1, %pcrel_hi(var_370)
pcrel46:
	auipc a0, %pcrel_hi(var_11)
	lb a0, %pcrel_lo(pcrel46)(a0)
	sext.b a0, a0
	andi a0, a0, 255
	sb a0, %pcrel_lo(pcrel45)(a1)
	ret
