.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl t
t:
	.4byte	10
.align 4
.globl f
f:
	.4byte	199
.align 4
.globl a
a:
	.4byte	1
.align 4
.globl b
b:
	.4byte	10
.align 4
.globl c
c:
	.4byte	1
.align 4
.globl z1
z1:
	.4byte	0
.align 4
.globl z2
z2:
	.4byte	0
.align 4
.globl z3
z3:
	.4byte	0
.align 4
.globl z4
z4:
	.4byte	0
.text
.globl calc_seleq
calc_seleq:
pcrel78:
	auipc a0, %pcrel_hi(a)
pcrel79:
	auipc a3, %pcrel_hi(b)
	addi a1, a0, %pcrel_lo(pcrel78)
	addi a2, a3, %pcrel_lo(pcrel79)
	lw a0, %pcrel_lo(pcrel78)(a0)
	lw a3, %pcrel_lo(pcrel79)(a3)
	bne a0, a3, label14
pcrel80:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel80)(a0)
	j label3
label14:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(label14)(a0)
label3:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(label3)(a3)
	lw a0, 0(a2)
	lw a3, 0(a1)
pcrel81:
	auipc a1, %pcrel_hi(t)
	xor a0, a0, a3
	addi a1, a1, %pcrel_lo(pcrel81)
	sltiu a4, a0, 1
pcrel82:
	auipc a0, %pcrel_hi(f)
	addi a0, a0, %pcrel_lo(pcrel82)
	mv a2, a0
	bne a4, zero, label77
	mv a2, a1
label77:
	lw a2, 0(a2)
pcrel83:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(pcrel83)(a4)
pcrel84:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel84)(a2)
	xor a2, a3, a4
	sltiu a5, a2, 1
	mv a2, a1
	bne a5, zero, label75
	mv a2, a0
label75:
	lw a2, 0(a2)
pcrel85:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(pcrel85)(a5)
	xor a2, a3, a4
	sltiu a2, a2, 1
	bne a2, zero, label73
	mv a1, a0
label73:
	lw a0, 0(a1)
pcrel86:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(pcrel86)(a1)
	ret
