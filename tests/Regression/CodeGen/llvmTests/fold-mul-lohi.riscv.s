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
	ble a0, zero, label5
pcrel58:
	auipc a2, %pcrel_hi(B)
pcrel59:
	auipc a4, %pcrel_hi(A)
	li a5, 17
	addi a1, a2, %pcrel_lo(pcrel58)
	lb a2, %pcrel_lo(pcrel58)(a2)
	andi a2, a2, 255
	slliw a2, a2, 1
	andi a3, a2, 255
	addi a2, a4, %pcrel_lo(pcrel59)
	sb a3, %pcrel_lo(pcrel59)(a4)
pcrel60:
	auipc a4, %pcrel_hi(P)
	sb a5, %pcrel_lo(pcrel60)(a4)
	addi a3, a4, %pcrel_lo(pcrel60)
	li a4, 1
	bne a0, a4, label24
	j label5
label24:
	li a4, 1
label3:
	li a5, 4294967295
	and t0, a4, a5
	add t1, a1, t0
	add t0, a2, t0
	lb t1, 0(t1)
	andi t1, t1, 255
	slliw t1, t1, 1
	andi t1, t1, 255
	sb t1, 0(t0)
	sh3add t0, a4, a4
	addiw a4, a4, 1
	and a5, t0, a5
	li t0, 17
	add a5, a3, a5
	sb t0, 0(a5)
	bne a0, a4, label3
label5:
	ret
