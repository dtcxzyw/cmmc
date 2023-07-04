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
	ble a0, zero, label4
	mv a1, zero
label2:
	li a2, 4294967295
pcrel43:
	auipc a4, %pcrel_hi(B)
pcrel44:
	auipc a5, %pcrel_hi(A)
	and a3, a1, a2
	addi a4, a4, %pcrel_lo(pcrel43)
	addi a5, a5, %pcrel_lo(pcrel44)
	add a4, a4, a3
	add a3, a5, a3
	lb a4, 0(a4)
	andi a4, a4, 255
	slliw a4, a4, 1
	andi a4, a4, 255
	sb a4, 0(a3)
	sh3add a3, a1, a1
	addiw a1, a1, 1
	and a2, a3, a2
pcrel45:
	auipc a3, %pcrel_hi(P)
	addi a3, a3, %pcrel_lo(pcrel45)
	add a2, a3, a2
	li a3, 17
	sb a3, 0(a2)
	xor a2, a0, a1
	sltu a2, zero, a2
	bne a2, zero, label2
label4:
	ret
