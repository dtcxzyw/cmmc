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
pcrel44:
	auipc a0, %pcrel_hi(var_21)
	lw a1, %pcrel_lo(pcrel44)(a0)
pcrel45:
	auipc a0, %pcrel_hi(var_29)
	lb a0, %pcrel_lo(pcrel45)(a0)
	sext.b a0, a0
	subw a2, zero, a0
	li a0, 4294967295
	and a2, a2, a0
	sltu a1, a1, a2
	and a1, a1, a0
	addiw a1, a1, -1
	andi a1, a1, 255
	sltiu a1, a1, 1
	and a0, a1, a0
pcrel46:
	auipc a1, %pcrel_hi(var_390)
	sw a0, %pcrel_lo(pcrel46)(a1)
pcrel47:
	auipc a0, %pcrel_hi(var_11)
	lb a0, %pcrel_lo(pcrel47)(a0)
	sext.b a0, a0
	andi a0, a0, 255
pcrel48:
	auipc a1, %pcrel_hi(var_370)
	sb a0, %pcrel_lo(pcrel48)(a1)
	ret
