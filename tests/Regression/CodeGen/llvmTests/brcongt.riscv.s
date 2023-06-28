.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.section .rodata
.bss
.text
.globl test
test:
pcrel26:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel26)(a0)
pcrel27:
	auipc a1, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel27)(a1)
	ble a0, a1, label14
	j label2
label14:
	li a0, 1
pcrel28:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel28)(a1)
label2:
	ret
