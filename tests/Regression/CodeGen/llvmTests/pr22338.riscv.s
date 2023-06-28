.data
.text
.globl fn
fn:
	xori a0, a0, 1
	sltu a2, zero, a0
	li a0, 4294967295
	and a2, a2, a0
	xori a1, a1, 1
	sltiu a1, a1, 1
	and a3, a1, a0
	and a1, a2, a0
	sltu a3, zero, a3
	li a2, 2
	bne a3, zero, label26
	mv a2, zero
label26:
	and a2, a2, a0
	sllw a1, a1, a2
	and a0, a1, a0
	ret
