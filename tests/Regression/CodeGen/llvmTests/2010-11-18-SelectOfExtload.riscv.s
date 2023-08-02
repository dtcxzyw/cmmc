.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 1
.globl u
u:
	.zero	1
.align 1
.globl s
s:
	.zero	1
.text
.p2align 2
.globl foo
foo:
	beq a0, zero, label8
pcrel26:
	auipc a2, %pcrel_hi(u)
	lb a1, %pcrel_lo(pcrel26)(a2)
	andi a0, a1, 255
	j label3
label8:
	auipc a3, %pcrel_hi(s)
	lb a1, %pcrel_lo(label8)(a3)
	sext.b a2, a1
	zext.w a0, a2
label3:
	ret
