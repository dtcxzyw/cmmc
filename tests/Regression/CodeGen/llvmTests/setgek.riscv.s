.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl k
k:
	.4byte	10
.p2align 2
.globl r1
r1:
	.4byte	0
.p2align 2
.globl r2
r2:
	.4byte	0
.p2align 2
.globl r3
r3:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel17:
	auipc a1, %pcrel_hi(k)
	lui a4, 1048568
	lw a0, %pcrel_lo(pcrel17)(a1)
	addiw a2, a4, -1
pcrel18:
	auipc a4, %pcrel_hi(r1)
	slt a3, a2, a0
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel18)(a4)
	ret
