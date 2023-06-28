.data
.text
.globl test
test:
	beq a0, zero, label11
	mv a0, a1
	j label2
label11:
	slt a0, a2, a3
	li a1, 4294967295
	and a0, a0, a1
label2:
	ret
