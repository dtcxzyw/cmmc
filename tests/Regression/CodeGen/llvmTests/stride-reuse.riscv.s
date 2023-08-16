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
pcrel53:
	auipc a5, %pcrel_hi(A)
	li t0, 64
	addi a2, a1, %pcrel_lo(pcrel52)
	addi a3, a5, %pcrel_lo(pcrel53)
	flw f11, %pcrel_lo(pcrel52)(a1)
pcrel54:
	auipc a1, %pcrel_hi(P)
	fadd.s f10, f11, f11
	addi a4, a1, %pcrel_lo(pcrel54)
	fsw f10, %pcrel_lo(pcrel53)(a5)
	li a5, 1
	sw t0, %pcrel_lo(pcrel54)(a1)
	beq a0, a5, label5
	li a1, 1
label3:
	zext.w a5, a1
	slliw t1, a1, 1
	sh2add t2, a5, a3
	addiw a1, a1, 1
	sh2add t0, a5, a2
	flw f11, 0(t0)
	sh2add t0, a5, a4
	fadd.s f10, f11, f11
	fsw f10, 0(t2)
	addi t2, t1, 64
	sw t2, 0(t0)
	bne a0, a1, label3
label5:
	ret
