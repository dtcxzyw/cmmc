.data
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
	and a2, a1, a2
pcrel38:
	auipc a3, %pcrel_hi(B)
	addi a3, a3, %pcrel_lo(pcrel38)
	slli a4, a2, 2
	add a3, a3, a4
	flw f10, 0(a3)
	fadd.s f10, f10, f10
pcrel39:
	auipc a3, %pcrel_hi(A)
	addi a3, a3, %pcrel_lo(pcrel39)
	add a3, a3, a4
	fsw f10, 0(a3)
pcrel40:
	auipc a3, %pcrel_hi(P)
	addi a3, a3, %pcrel_lo(pcrel40)
	slli a2, a2, 2
	add a2, a3, a2
	slliw a3, a1, 1
	addiw a3, a3, 64
	sw a3, 0(a2)
	addiw a1, a1, 1
	xor a2, a1, a0
	sltu a2, zero, a2
	bne a2, zero, label2
label4:
	ret
