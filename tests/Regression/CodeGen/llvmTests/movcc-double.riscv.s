.data
.data
.align 4
.globl var32
var32:
	.4byte	0
.text
.globl select_and
select_and:
	sltu a0, a0, a1
	sltu a1, a2, a3
	and a1, a0, a1
	mv a0, a4
	bne a1, zero, label13
	mv a0, a5
label13:
	ret
.globl select_noopt
select_noopt:
	sltu a0, a0, a1
	sltu a1, a1, a2
	or a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
pcrel35:
	auipc a1, %pcrel_hi(var32)
	sw a0, %pcrel_lo(pcrel35)(a1)
	sltu a1, zero, a0
	mv a0, a3
	bne a1, zero, label34
	mv a0, a4
label34:
	ret
.globl select_or
select_or:
	sltu a0, a0, a1
	sltu a1, a2, a3
	or a0, a0, a1
	sltu a1, zero, a0
	mv a0, a4
	bne a1, zero, label51
	mv a0, a5
label51:
	ret