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
pcrel37:
	auipc a0, %pcrel_hi(a)
	li a3, 4294967295
	lw a2, %pcrel_lo(pcrel37)(a0)
	addiw a1, a2, -1
	and a2, a1, a3
	sw a2, %pcrel_lo(pcrel37)(a0)
	beq a1, zero, label20
pcrel38:
	auipc a1, %pcrel_hi(b)
	lw a0, %pcrel_lo(pcrel38)(a1)
	j label11
label20:
	mv a0, zero
label11:
	auipc a1, %pcrel_hi(c)
	sw a0, %pcrel_lo(label11)(a1)
	ret
