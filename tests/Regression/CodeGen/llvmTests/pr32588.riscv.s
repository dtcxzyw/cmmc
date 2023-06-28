.data
.align 4
.globl c
c:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl d
d:
	.zero	4
.text
.globl fn1
fn1:
pcrel37:
	auipc a1, %pcrel_hi(d)
	addi a0, a1, %pcrel_lo(pcrel37)
	lw a1, %pcrel_lo(pcrel37)(a1)
	sltiu a1, a1, 1
	bne a1, zero, label10
pcrel38:
	auipc a1, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel38)(a1)
	sltu a1, zero, a1
	j label3
label10:
	mv a1, zero
label3:
	srliw a2, a1, 31
	add a1, a1, a2
	sraiw a1, a1, 1
pcrel39:
	auipc a2, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel39)(a2)
	sltiu a3, a2, 1
	li a2, 4294967295
	and a3, a3, a2
	addw a1, a1, a3
	and a1, a1, a2
	sw a1, 0(a0)
	ret
