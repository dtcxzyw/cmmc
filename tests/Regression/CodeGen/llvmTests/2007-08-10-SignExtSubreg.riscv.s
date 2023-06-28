.data
.align 4
.globl X
X:
	.4byte	0
.text
.globl _Z3fooi
_Z3fooi:
pcrel13:
	auipc a1, %pcrel_hi(X)
	sw a0, %pcrel_lo(pcrel13)(a1)
	andi a0, a0, 255
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 4294967295
	and a0, a0, a1
	ret
