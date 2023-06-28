.data
.data
.align 4
.globl k
k:
	.4byte	10
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.align 4
.globl r3
r3:
	.4byte	0
.text
.globl test
test:
pcrel17:
	auipc a0, %pcrel_hi(k)
	lw a0, %pcrel_lo(pcrel17)(a0)
	li a1, -32769
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
pcrel18:
	auipc a1, %pcrel_hi(r1)
	sw a0, %pcrel_lo(pcrel18)(a1)
	ret
