.data
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
	and a3, a1, a2
pcrel43:
	auipc a4, %pcrel_hi(B)
	addi a4, a4, %pcrel_lo(pcrel43)
	add a4, a4, a3
	lb a4, 0(a4)
	andi a4, a4, 255
	slliw a4, a4, 1
	andi a4, a4, 255
pcrel44:
	auipc a5, %pcrel_hi(A)
	addi a5, a5, %pcrel_lo(pcrel44)
	add a3, a5, a3
	sb a4, 0(a3)
	li a3, 9
	mulw a3, a1, a3
	and a2, a3, a2
pcrel45:
	auipc a3, %pcrel_hi(P)
	addi a3, a3, %pcrel_lo(pcrel45)
	add a2, a3, a2
	li a3, 17
	sb a3, 0(a2)
	addiw a1, a1, 1
	xor a2, a1, a0
	sltu a2, zero, a2
	bne a2, zero, label2
label4:
	ret
