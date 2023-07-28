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
.text
.globl foo
foo:
.p2align 2
	bgt a0, zero, label2
label5:
	ret
label2:
	auipc a2, %pcrel_hi(B)
	li t0, 17
	addi a1, a2, %pcrel_lo(label2)
	lb a2, %pcrel_lo(label2)(a2)
	andi a4, a2, 255
	slliw a5, a4, 1
pcrel61:
	auipc a4, %pcrel_hi(A)
	andi a3, a5, 255
	addi a2, a4, %pcrel_lo(pcrel61)
	li a5, 1
	sb a3, %pcrel_lo(pcrel61)(a4)
pcrel62:
	auipc a4, %pcrel_hi(P)
	sb t0, %pcrel_lo(pcrel62)(a4)
	addi a3, a4, %pcrel_lo(pcrel62)
	beq a0, a5, label5
	li a4, 1
label3:
	li a5, 4294967295
	and t0, a4, a5
	add t3, a1, t0
	lb t1, 0(t3)
	andi t2, t1, 255
	slliw t3, t2, 1
	add t2, a2, t0
	andi t1, t3, 255
	sh3add t0, a4, a4
	addiw a4, a4, 1
	sb t1, 0(t2)
	and t1, t0, a5
	li t0, 17
	add a5, a3, t1
	sb t0, 0(a5)
	bne a0, a4, label3
	j label5
