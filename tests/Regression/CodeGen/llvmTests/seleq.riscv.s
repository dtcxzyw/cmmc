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
pcrel122:
	auipc a2, %pcrel_hi(a)
pcrel123:
	auipc a0, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel122)(a2)
	lw a2, %pcrel_lo(pcrel123)(a0)
	beq a1, a2, label2
pcrel124:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel124)(a3)
pcrel125:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(pcrel125)(a3)
pcrel126:
	auipc a2, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel126)(a2)
pcrel127:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(pcrel127)(a2)
pcrel128:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel128)(a0)
	beq a1, a2, label8
pcrel129:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel129)(a3)
pcrel130:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel130)(a3)
	j label120
label2:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(label2)(a3)
pcrel131:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(pcrel131)(a3)
	beq a1, a2, label5
pcrel132:
	auipc a2, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel132)(a2)
pcrel133:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(pcrel133)(a2)
pcrel134:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel134)(a0)
	beq a1, a2, label8
pcrel135:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel135)(a3)
pcrel136:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel136)(a3)
	bne a1, a2, label120
label12:
	auipc a1, %pcrel_hi(t)
	lw a0, %pcrel_lo(label12)(a1)
label14:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label14)(a1)
	ret
label120:
	auipc a1, %pcrel_hi(f)
	lw a0, %pcrel_lo(label120)(a1)
	j label14
label5:
	auipc a2, %pcrel_hi(f)
	lw a0, %pcrel_lo(label5)(a2)
pcrel137:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(pcrel137)(a2)
pcrel138:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel138)(a0)
	beq a1, a2, label8
pcrel139:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel139)(a3)
pcrel140:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel140)(a3)
	j label120
label8:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(label8)(a3)
pcrel141:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel141)(a3)
	beq a1, a2, label12
	j label120
