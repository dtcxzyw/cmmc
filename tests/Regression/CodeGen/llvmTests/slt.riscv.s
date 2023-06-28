.data
.text
.globl sgt
sgt:
	li a1, 32767
	slt a1, a1, a0
	li a0, 7
	bne a1, zero, label10
	li a0, 5
label10:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl slt
slt:
	slti a0, a0, 7
	li a1, 4
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
