.data
.text
.globl and_1
and_1:
	andi a1, a1, 255
	andi a0, a0, 255
	and a0, a1, a0
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a2, a0
	ret
.globl and_2
and_2:
	andi a1, a1, 255
	andi a0, a0, 255
	and a0, a1, a0
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl xor_1
xor_1:
	andi a1, a1, 255
	andi a0, a0, 255
	xor a0, a1, a0
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a2, a0
	ret
.globl xor_2
xor_2:
	andi a1, a1, 255
	andi a0, a0, 255
	xor a0, a1, a0
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
