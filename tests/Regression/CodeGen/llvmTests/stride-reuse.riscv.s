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
	ble a0, zero, label4
	mv a1, zero
label2:
	li a2, 4294967295
pcrel38:
	auipc a3, %pcrel_hi(B)
	and a2, a1, a2
	addi a3, a3, %pcrel_lo(pcrel38)
	sh2add a3, a2, a3
	flw f10, 0(a3)
pcrel39:
	auipc a3, %pcrel_hi(A)
	fadd.s f10, f10, f10
	addi a3, a3, %pcrel_lo(pcrel39)
	sh2add a3, a2, a3
	fsw f10, 0(a3)
pcrel40:
	auipc a3, %pcrel_hi(P)
	addi a3, a3, %pcrel_lo(pcrel40)
	sh2add a2, a2, a3
	slliw a3, a1, 1
	addiw a3, a3, 64
	sw a3, 0(a2)
	addiw a1, a1, 1
	xor a2, a0, a1
	sltu a2, zero, a2
	bne a2, zero, label2
label4:
	ret
