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
.globl foo
foo:
	beq a0, zero, label9
pcrel27:
	auipc a0, %pcrel_hi(u)
	lb a0, %pcrel_lo(pcrel27)(a0)
	andi a0, a0, 255
	j label3
label9:
	auipc a0, %pcrel_hi(s)
	lb a0, %pcrel_lo(label9)(a0)
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
