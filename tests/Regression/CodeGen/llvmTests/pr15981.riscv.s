.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl a
a:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
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
pcrel33:
	auipc a1, %pcrel_hi(b)
pcrel34:
	auipc a0, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel33)(a1)
	mv a1, a2
	lw a4, %pcrel_lo(pcrel34)(a0)
	addiw a3, a4, -1
	bne a3, zero, label31
	mv a1, zero
label31:
	zext.w a2, a3
pcrel35:
	auipc a4, %pcrel_hi(c)
pcrel36:
	auipc a0, %pcrel_hi(a)
	sw a2, %pcrel_lo(pcrel36)(a0)
	sw a1, %pcrel_lo(pcrel35)(a4)
	ret
