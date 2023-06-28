.data
.align 4
.globl i
i:
	.4byte	4294967291
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	4294967291
.align 4
.globl result1
result1:
	.4byte	0
.align 4
.globl result2
result2:
	.4byte	1
.text
.globl test
test:
pcrel45:
	auipc a0, %pcrel_hi(i)
	lw a1, %pcrel_lo(pcrel45)(a0)
pcrel46:
	auipc a0, %pcrel_hi(j)
	lw a2, %pcrel_lo(pcrel46)(a0)
	mv a0, a1
	ble a2, a1, label2
	li a1, 1
pcrel47:
	auipc a2, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel47)(a2)
pcrel48:
	auipc a1, %pcrel_hi(k)
	lw a1, %pcrel_lo(pcrel48)(a1)
	ble a0, a1, label4
label44:
	auipc a0, %pcrel_hi(result1)
	sw zero, %pcrel_lo(label44)(a0)
	j label4
label2:
	auipc a1, %pcrel_hi(k)
	lw a1, %pcrel_lo(label2)(a1)
	ble a0, a1, label4
	j label44
label4:
	ret
