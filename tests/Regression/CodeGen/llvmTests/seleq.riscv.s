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
.p2align 2
pcrel111:
	auipc a2, %pcrel_hi(a)
pcrel112:
	auipc a0, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel111)(a2)
	lw a2, %pcrel_lo(pcrel112)(a0)
	bne a1, a2, label25
pcrel113:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel113)(a3)
label3:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(label3)(a3)
	beq a1, a2, label5
	j label34
label25:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(label25)(a3)
	j label3
label34:
	auipc a2, %pcrel_hi(t)
	lw a0, %pcrel_lo(label34)(a2)
	j label6
label5:
	auipc a2, %pcrel_hi(f)
	lw a0, %pcrel_lo(label5)(a2)
label6:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(label6)(a2)
pcrel114:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel114)(a0)
	beq a1, a2, label8
pcrel115:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel115)(a3)
label10:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(label10)(a3)
	beq a1, a2, label12
pcrel116:
	auipc a1, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel116)(a1)
	j label14
label12:
	auipc a1, %pcrel_hi(t)
	lw a0, %pcrel_lo(label12)(a1)
label14:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label14)(a1)
	ret
label8:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(label8)(a3)
	j label10
