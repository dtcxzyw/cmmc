.data
.align 4
.globl var32
var32:
	.4byte	0
.text
.globl select_and
select_and:
	sltu a0, a0, a1
	xori a0, a0, 1
	bne a0, zero, label13
	sltu a1, a2, a3
	mv a0, a4
	bne a1, zero, label19
	j label21
label13:
	mv a1, zero
	mv a0, a4
	mv a0, a5
label19:
	ret
label21:
	mv a0, a5
	j label19
.globl select_noopt
select_noopt:
	sltu a0, a0, a1
	sltu a1, a1, a2
	or a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
pcrel44:
	auipc a1, %pcrel_hi(var32)
	sw a0, %pcrel_lo(pcrel44)(a1)
	sltu a1, zero, a0
	mv a0, a3
	bne a1, zero, label43
	mv a0, a4
label43:
	ret
.globl select_or
select_or:
	sltu a0, a0, a1
	sltu a1, a2, a3
	or a0, a0, a1
	sltu a1, zero, a0
	mv a0, a4
	bne a1, zero, label60
	mv a0, a5
label60:
	ret
