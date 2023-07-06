.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl B
B:
	.zero	4000
.align 4
.globl A
A:
	.zero	4000
.align 4
.globl P
P:
	.zero	4000
.text
.globl foo
foo:
	ble a0, zero, label5
pcrel51:
	auipc a2, %pcrel_hi(B)
pcrel52:
	auipc a3, %pcrel_hi(A)
pcrel53:
	auipc a4, %pcrel_hi(P)
	li a5, 64
	flw f10, %pcrel_lo(pcrel51)(a2)
	addi a1, a2, %pcrel_lo(pcrel51)
	addi a2, a3, %pcrel_lo(pcrel52)
	fadd.s f10, f10, f10
	fsw f10, %pcrel_lo(pcrel52)(a3)
	sw a5, %pcrel_lo(pcrel53)(a4)
	addi a3, a4, %pcrel_lo(pcrel53)
	li a4, 1
	bne a0, a4, label22
	j label5
label22:
	li a4, 1
label3:
	li a5, 4294967295
	and a5, a4, a5
	sh2add t0, a5, a1
	flw f10, 0(t0)
	sh2add t0, a5, a2
	fadd.s f10, f10, f10
	sh2add a5, a5, a3
	fsw f10, 0(t0)
	slliw t0, a4, 1
	addiw a4, a4, 1
	addiw t0, t0, 64
	sw t0, 0(a5)
	bne a0, a4, label3
label5:
	ret
