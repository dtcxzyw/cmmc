.data
.text
.globl function
function:
	xor a1, a0, a1
	sltu a1, zero, a1
	bne a1, zero, label3
	mulw a0, a0, a0
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
