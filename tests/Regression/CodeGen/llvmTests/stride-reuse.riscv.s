.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
.globl B
B:
	.zero	4000
.align 8
.globl A
A:
	.zero	4000
.align 8
.globl P
P:
	.zero	4000
.text
.p2align 2
.globl foo
foo:
	ble a0, zero, label5
pcrel52:
	auipc a1, %pcrel_hi(B)
	li t0, 64
	li a5, 1
	addi a2, a1, %pcrel_lo(pcrel52)
	flw f11, %pcrel_lo(pcrel52)(a1)
pcrel53:
	auipc a1, %pcrel_hi(A)
	fadd.s f10, f11, f11
	addi a3, a1, %pcrel_lo(pcrel53)
	fsw f10, %pcrel_lo(pcrel53)(a1)
pcrel54:
	auipc a1, %pcrel_hi(P)
	sw t0, %pcrel_lo(pcrel54)(a1)
	addi a4, a1, %pcrel_lo(pcrel54)
	beq a0, a5, label5
	li a1, 1
label3:
	zext.w a5, a1
	sh2add t0, a5, a2
	flw f11, 0(t0)
	sh2add t0, a5, a3
	fadd.s f10, f11, f11
	sh2add a5, a5, a4
	fsw f10, 0(t0)
	slliw t0, a1, 1
	addiw a1, a1, 1
	addi t1, t0, 64
	sw t1, 0(a5)
	bne a0, a1, label3
label5:
	ret
