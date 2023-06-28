.data
.text
.globl function
function:
	mv a2, a0
	mulw a0, a0, a0
	li a3, 4294967295
	and a0, a0, a3
	xor a1, a2, a1
	sltiu a1, a1, 1
	bne a1, zero, label12
	mv a0, a2
label12:
	ret
