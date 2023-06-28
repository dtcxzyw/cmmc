.data
.data
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
pcrel19:
	auipc a0, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel19)(a0)
	xori a0, a0, 5
	sltu a0, zero, a0
	bne a0, zero, label3
	li a0, 1
pcrel20:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel20)(a1)
label3:
	ret
