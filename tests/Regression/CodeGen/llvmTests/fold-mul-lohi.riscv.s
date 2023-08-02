.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
.globl B
B:
	.zero	1000
.align 8
.globl A
A:
	.zero	1000
.align 8
.globl P
P:
	.zero	1000
.text
.p2align 2
.globl foo
foo:
	ble a0, zero, label5
pcrel60:
	auipc a1, %pcrel_hi(B)
pcrel61:
	auipc t0, %pcrel_hi(A)
	lb a3, %pcrel_lo(pcrel60)(a1)
	addi a2, a1, %pcrel_lo(pcrel60)
	andi a4, a3, 255
	addi a3, t0, %pcrel_lo(pcrel61)
	slliw a5, a4, 1
	andi a1, a5, 255
pcrel62:
	auipc a5, %pcrel_hi(P)
	addi a4, a5, %pcrel_lo(pcrel62)
	sb a1, %pcrel_lo(pcrel61)(t0)
	li t0, 1
	li a1, 17
	sb a1, %pcrel_lo(pcrel62)(a5)
	beq a0, t0, label5
	li a1, 1
label3:
	zext.w a5, a1
	add t0, a2, a5
	lb t2, 0(t0)
	andi t1, t2, 255
	add t2, a3, a5
	slliw t3, t1, 1
	sh3add t1, a1, a1
	andi t0, t3, 255
	addiw a1, a1, 1
	zext.w t3, t1
	add a5, a4, t3
	sb t0, 0(t2)
	li t0, 17
	sb t0, 0(a5)
	bne a0, a1, label3
label5:
	ret
