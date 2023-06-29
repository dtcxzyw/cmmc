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
pcrel46:
	auipc a0, %pcrel_hi(var_21)
	lw a0, %pcrel_lo(pcrel46)(a0)
pcrel47:
	auipc a1, %pcrel_hi(var_29)
	lb a1, %pcrel_lo(pcrel47)(a1)
	slli a1, a1, 24
	srai a1, a1, 24
	subw a2, zero, a1
	li a1, 4294967295
	and a2, a2, a1
	sltu a0, a0, a2
	and a0, a0, a1
	addiw a0, a0, -1
	andi a0, a0, 255
	sltiu a0, a0, 1
	and a0, a0, a1
pcrel48:
	auipc a1, %pcrel_hi(var_390)
	sw a0, %pcrel_lo(pcrel48)(a1)
pcrel49:
	auipc a0, %pcrel_hi(var_11)
	lb a0, %pcrel_lo(pcrel49)(a0)
	slli a0, a0, 24
	srai a0, a0, 24
	andi a0, a0, 255
pcrel50:
	auipc a1, %pcrel_hi(var_370)
	sb a0, %pcrel_lo(pcrel50)(a1)
	ret
