.data
.text
.globl test
test:
	addiw a0, a0, -1
	addiw a1, a1, 1
	mulw a0, a0, a1
	ret
