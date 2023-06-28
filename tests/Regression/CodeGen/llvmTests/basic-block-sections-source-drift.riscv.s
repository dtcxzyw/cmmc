.data
.text
.globl foo
foo:
	beq a0, zero, label4
	li a0, 1
label2:
	ret
label4:
	sltu a1, zero, a1
	li a0, 2
	bne a1, zero, label16
	mv a0, zero
label16:
	li a1, 4294967295
	and a0, a0, a1
	j label2
