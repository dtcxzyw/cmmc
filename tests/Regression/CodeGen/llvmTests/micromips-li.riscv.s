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
	li a1, 1
pcrel19:
	auipc a2, %pcrel_hi(x)
	li a3, 537
	sw a1, %pcrel_lo(pcrel19)(a2)
	slli a0, a3, 2
pcrel20:
	auipc a2, %pcrel_hi(y)
	lui a3, 8
	sw a0, %pcrel_lo(pcrel20)(a2)
	addiw a1, a3, 564
	mv a0, zero
pcrel21:
	auipc a2, %pcrel_hi(z)
	sw a1, %pcrel_lo(pcrel21)(a2)
	ret
