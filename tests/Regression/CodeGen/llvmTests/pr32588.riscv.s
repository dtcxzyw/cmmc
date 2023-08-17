.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
.globl c
c:
	.zero	4
.p2align 2
.globl b
b:
	.zero	4
.p2align 2
.globl d
d:
	.zero	4
.text
.p2align 2
.globl fn1
fn1:
pcrel14:
	auipc a3, %pcrel_hi(c)
	lw a1, %pcrel_lo(pcrel14)(a3)
pcrel15:
	auipc a3, %pcrel_hi(d)
	sltiu a2, a1, 1
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel15)(a3)
	ret
