.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
.globl a
a:
	.zero	4
.p2align 2
.globl b
b:
	.zero	4
.p2align 2
.globl c
c:
	.zero	4
.text
.p2align 2
.globl fn1
fn1:
	bne a1, zero, label7
	mv a0, zero
label7:
	ret
.p2align 2
.globl fn2
fn2:
pcrel31:
	auipc a1, %pcrel_hi(b)
pcrel32:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel31)(a1)
	mv a1, a3
	lw a4, %pcrel_lo(pcrel32)(a0)
	addiw a2, a4, -1
	bne a2, zero, label30
	mv a1, zero
label30:
	zext.w a3, a2
pcrel33:
	auipc a4, %pcrel_hi(c)
pcrel34:
	auipc a0, %pcrel_hi(a)
	sw a3, %pcrel_lo(pcrel34)(a0)
	sw a1, %pcrel_lo(pcrel33)(a4)
	ret
