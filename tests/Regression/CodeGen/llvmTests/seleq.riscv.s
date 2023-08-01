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
.p2align 2
.globl calc_seleq
calc_seleq:
pcrel95:
	auipc a0, %pcrel_hi(a)
pcrel96:
	auipc a3, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel95)(a0)
	lw a2, %pcrel_lo(pcrel96)(a3)
	bne a1, a2, label29
pcrel97:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel97)(a3)
	j label2
label29:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(label29)(a3)
label2:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(label2)(a3)
	bne a1, a2, label35
pcrel98:
	auipc a2, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel98)(a2)
	j label5
label35:
	auipc a2, %pcrel_hi(t)
	lw a0, %pcrel_lo(label35)(a2)
label5:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(label5)(a2)
pcrel99:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel99)(a0)
	bne a1, a2, label45
pcrel100:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel100)(a3)
	j label8
label45:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(label45)(a3)
label8:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(label8)(a3)
	bne a1, a2, label52
pcrel101:
	auipc a1, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel101)(a1)
	j label11
label52:
	auipc a1, %pcrel_hi(f)
	lw a0, %pcrel_lo(label52)(a1)
label11:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label11)(a1)
	ret
