.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl c
c:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl d
d:
	.zero	4
.text
.globl fn1
fn1:
pcrel15:
	auipc a0, %pcrel_hi(c)
	li a1, 4294967295
	lw a0, %pcrel_lo(pcrel15)(a0)
	sltiu a0, a0, 1
	and a0, a0, a1
pcrel16:
	auipc a1, %pcrel_hi(d)
	sw a0, %pcrel_lo(pcrel16)(a1)
	ret
