.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
.text
.globl test
test:
.p2align 2
pcrel26:
	auipc a1, %pcrel_hi(i)
pcrel27:
	auipc a2, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel26)(a1)
	lw a1, %pcrel_lo(pcrel27)(a2)
	ble a0, a1, label13
label2:
	ret
label13:
	li a0, 1
pcrel28:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel28)(a1)
	j label2
