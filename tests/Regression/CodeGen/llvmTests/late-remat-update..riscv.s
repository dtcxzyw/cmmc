.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 1
.globl B
B:
	.zero	1000
.align 1
.globl A
A:
	.zero	1000
.align 1
.globl P
P:
	.zero	1000
.align 1
.globl Q
Q:
	.zero	1000
.text
.globl foo
foo:
	ble a0, zero, label4
	mv a2, zero
label2:
	li a3, 4294967295
pcrel51:
	auipc a5, %pcrel_hi(B)
	and a4, a2, a3
	addi a5, a5, %pcrel_lo(pcrel51)
	add a5, a5, a4
	lb a5, 0(a5)
pcrel52:
	auipc t0, %pcrel_hi(A)
	andi a5, a5, 255
	addi t0, t0, %pcrel_lo(pcrel52)
	slliw a5, a5, 1
	add a4, t0, a4
	andi a5, a5, 255
	sb a5, 0(a4)
	li a5, 17
	sh3add a4, a2, a2
	addw a4, a1, a4
	and a3, a4, a3
pcrel53:
	auipc a4, %pcrel_hi(P)
	addi a4, a4, %pcrel_lo(pcrel53)
	add a4, a4, a3
	sb a5, 0(a4)
pcrel54:
	auipc a4, %pcrel_hi(Q)
	addi a4, a4, %pcrel_lo(pcrel54)
	add a3, a4, a3
	li a4, 19
	sb a4, 0(a3)
	addiw a2, a2, 1
	xor a3, a0, a2
	sltu a3, zero, a3
	bne a3, zero, label2
label4:
	ret
