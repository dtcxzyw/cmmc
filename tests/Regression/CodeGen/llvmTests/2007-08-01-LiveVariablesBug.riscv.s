.data
.text
.globl t
t:
	andi a1, a1, 255
	addiw a1, a1, -2
	andi a0, a0, 255
	addiw a0, a0, 2
	mulw a0, a1, a0
	andi a0, a0, 255
	ret
