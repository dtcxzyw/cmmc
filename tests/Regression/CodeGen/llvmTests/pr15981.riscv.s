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
.globl fn1
fn1:
.p2align 2
	bne a1, zero, label7
	mv a0, zero
label7:
	ret
.globl fn2
fn2:
.p2align 2
pcrel34:
	auipc a2, %pcrel_hi(b)
pcrel35:
	auipc a0, %pcrel_hi(a)
	lw a1, %pcrel_lo(pcrel34)(a2)
	lw a3, %pcrel_lo(pcrel35)(a0)
	addiw a2, a3, -1
	bne a2, zero, label32
	mv a1, zero
label32:
	li a3, 4294967295
	and a2, a2, a3
pcrel36:
	auipc a0, %pcrel_hi(a)
	sw a2, %pcrel_lo(pcrel36)(a0)
pcrel37:
	auipc a0, %pcrel_hi(c)
	sw a1, %pcrel_lo(pcrel37)(a0)
	ret
