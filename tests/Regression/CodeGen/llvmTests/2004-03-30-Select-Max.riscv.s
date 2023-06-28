.data
.text
.globl max
max:
	slt a2, a1, a0
	bne a2, zero, label9
	mv a0, a1
label9:
	ret
