.data
.text
.globl test1
test1:
	slliw a0, a0, 2
	addiw a1, a1, -5
	addw a0, a1, a0
	ret
