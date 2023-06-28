.data
.align 4
.globl A
A:
	.zero	4
.text
.globl test5
test5:
	andi a1, a1, 255
	li a2, 32
	subw a2, a2, a1
	li a3, 4294967295
	and a2, a2, a3
	srlw a0, a0, a2
pcrel18:
	auipc a2, %pcrel_hi(A)
	lw a3, %pcrel_lo(pcrel18)(a2)
	sllw a1, a3, a1
	or a0, a0, a1
	sw a0, %pcrel_lo(pcrel18)(a2)
	ret
