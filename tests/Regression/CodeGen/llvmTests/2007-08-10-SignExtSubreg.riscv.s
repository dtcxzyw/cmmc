.data
.data
.align 4
.globl X
X:
	.4byte	0
.text
.globl _Z3fooi
_Z3fooi:
	andi a1, a0, 255
	slli a1, a1, 24
	srai a1, a1, 24
	li a2, 4294967295
	and a1, a1, a2
pcrel13:
	auipc a2, %pcrel_hi(X)
	sw a0, %pcrel_lo(pcrel13)(a2)
	mv a0, a1
	ret
