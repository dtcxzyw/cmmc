.data
.text
.globl f1
f1:
	and a0, a0, a1
	ret
.globl f2
f2:
	or a0, a0, a1
	ret
.globl f3
f3:
	xor a0, a0, a1
	ret
.globl f4
f4:
	sllw a0, a0, a1
	ret
.globl f5
f5:
	srlw a0, a0, a1
	ret
