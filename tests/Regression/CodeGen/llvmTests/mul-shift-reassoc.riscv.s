.data
.text
.globl test
test:
	slliw a0, a0, 1
	addiw a0, a0, 1
	mulw a0, a1, a0
	ret
