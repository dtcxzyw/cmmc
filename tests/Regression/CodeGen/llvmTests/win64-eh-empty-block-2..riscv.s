.data
.data
.align 1
.globl x
x:
	.byte	0
.align 4
.globl y
y:
	.4byte	0
.align 4
.globl z
z:
	.4byte	0
.text
.globl PR35761
PR35761:
pcrel26:
	auipc a1, %pcrel_hi(x)
	lb a1, %pcrel_lo(pcrel26)(a1)
pcrel27:
	auipc a2, %pcrel_hi(y)
	lw a2, %pcrel_lo(pcrel27)(a2)
	li a3, 32767
	or a0, a0, a3
	xor a0, a0, a2
	andi a1, a1, 255
	or a0, a0, a1
	andi a0, a0, 255
	andi a0, a0, 255
	li a1, 4194303
	and a0, a0, a1
pcrel28:
	auipc a1, %pcrel_hi(z)
	sw a0, %pcrel_lo(pcrel28)(a1)
	ret
