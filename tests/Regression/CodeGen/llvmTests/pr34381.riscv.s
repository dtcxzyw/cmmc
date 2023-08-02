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
.p2align 2
.globl _Z3foov
_Z3foov:
pcrel40:
	auipc a1, %pcrel_hi(var_21)
pcrel41:
	auipc a4, %pcrel_hi(var_29)
	lw a0, %pcrel_lo(pcrel40)(a1)
	lb a2, %pcrel_lo(pcrel41)(a4)
	sext.b a3, a2
	subw a1, zero, a3
	zext.w a5, a1
	sltu a4, a0, a5
	addiw a2, a4, -1
	andi a3, a2, 255
pcrel42:
	auipc a2, %pcrel_hi(var_390)
	sltiu a1, a3, 1
pcrel43:
	auipc a3, %pcrel_hi(var_11)
	zext.w a0, a1
	sw a0, %pcrel_lo(pcrel42)(a2)
	lb a1, %pcrel_lo(pcrel43)(a3)
pcrel44:
	auipc a3, %pcrel_hi(var_370)
	sext.b a2, a1
	andi a0, a2, 255
	sb a0, %pcrel_lo(pcrel44)(a3)
	ret
