.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.align 4
.globl z
z:
	.zero	4
.text
.p2align 2
.globl main
main:
	li a0, 1
pcrel19:
	auipc a1, %pcrel_hi(x)
	li a2, 537
	sw a0, %pcrel_lo(pcrel19)(a1)
pcrel20:
	auipc a1, %pcrel_hi(y)
	slli a0, a2, 2
	lui a2, 8
	sw a0, %pcrel_lo(pcrel20)(a1)
pcrel21:
	auipc a1, %pcrel_hi(z)
	addiw a0, a2, 564
	sw a0, %pcrel_lo(pcrel21)(a1)
	mv a0, zero
	ret
