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
.p2align 2
.globl fn1
fn1:
pcrel14:
	auipc a0, %pcrel_hi(c)
	lw a1, %pcrel_lo(pcrel14)(a0)
	sltiu a2, a1, 1
pcrel15:
	auipc a1, %pcrel_hi(d)
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel15)(a1)
	ret
