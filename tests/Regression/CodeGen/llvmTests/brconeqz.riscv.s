.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
pcrel18:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel18)(a0)
	sltu a0, zero, a0
	bne a0, zero, label9
	j label2
label9:
	li a0, 1
pcrel19:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel19)(a1)
label2:
	ret
