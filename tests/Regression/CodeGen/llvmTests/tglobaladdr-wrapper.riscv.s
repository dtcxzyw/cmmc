.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.globl foo
foo:
pcrel25:
	auipc a0, %pcrel_hi(x)
	addi a1, a0, %pcrel_lo(pcrel25)
	lw a0, %pcrel_lo(pcrel25)(a0)
	sltu a0, zero, a0
	bne a0, zero, label11
pcrel26:
	auipc a0, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel26)(a0)
	j label3
label11:
	auipc a0, %pcrel_hi(b)
	lw a0, %pcrel_lo(label11)(a0)
label3:
	sw a0, 0(a1)
	ret
