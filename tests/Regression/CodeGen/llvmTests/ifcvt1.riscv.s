.data
.text
.globl t1
t1:
	sltu a0, zero, a0
	bne a0, zero, label10
	addiw a0, a1, -1
	j label3
label10:
	addiw a0, a1, 1
label3:
	ret
