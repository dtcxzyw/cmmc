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
pcrel37:
	auipc a1, %pcrel_hi(d)
	addi a0, a1, %pcrel_lo(pcrel37)
	lw a1, %pcrel_lo(pcrel37)(a1)
	sltiu a1, a1, 1
	bne a1, zero, label10
pcrel38:
	auipc a1, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel38)(a1)
	sltu a1, zero, a1
	j label3
label10:
	mv a1, zero
label3:
	auipc a2, %pcrel_hi(c)
	lw a2, %pcrel_lo(label3)(a2)
	srliw a4, a1, 31
	sltiu a3, a2, 1
	add a1, a1, a4
	li a2, 4294967295
	sraiw a1, a1, 1
	and a3, a3, a2
	addw a1, a3, a1
	and a1, a1, a2
	sw a1, 0(a0)
	ret
