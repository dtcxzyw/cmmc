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
pcrel128:
	auipc a2, %pcrel_hi(a)
pcrel129:
	auipc a0, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel128)(a2)
	lw a2, %pcrel_lo(pcrel129)(a0)
	bne a1, a2, label17
pcrel130:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel130)(a3)
pcrel131:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(pcrel131)(a3)
	bne a1, a2, label16
pcrel132:
	auipc a2, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel132)(a2)
pcrel133:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(pcrel133)(a2)
pcrel134:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel134)(a0)
	bne a1, a2, label9
pcrel135:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel135)(a3)
pcrel136:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel136)(a3)
	bne a1, a2, label59
	j label125
label17:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(label17)(a3)
pcrel137:
	auipc a3, %pcrel_hi(z1)
	sw a0, %pcrel_lo(pcrel137)(a3)
	bne a1, a2, label16
pcrel138:
	auipc a2, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel138)(a2)
pcrel139:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(pcrel139)(a2)
pcrel140:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel140)(a0)
	bne a1, a2, label9
pcrel141:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel141)(a3)
pcrel142:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel142)(a3)
	bne a1, a2, label59
	j label125
label9:
	auipc a3, %pcrel_hi(f)
	lw a0, %pcrel_lo(label9)(a3)
pcrel143:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel143)(a3)
	bne a1, a2, label59
	j label125
label59:
	auipc a1, %pcrel_hi(f)
	lw a0, %pcrel_lo(label59)(a1)
label14:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label14)(a1)
	ret
label125:
	auipc a1, %pcrel_hi(t)
	lw a0, %pcrel_lo(label125)(a1)
	j label14
label16:
	auipc a2, %pcrel_hi(t)
	lw a0, %pcrel_lo(label16)(a2)
pcrel144:
	auipc a2, %pcrel_hi(z2)
	sw a0, %pcrel_lo(pcrel144)(a2)
pcrel145:
	auipc a0, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel145)(a0)
	bne a1, a2, label9
pcrel146:
	auipc a3, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel146)(a3)
pcrel147:
	auipc a3, %pcrel_hi(z3)
	sw a0, %pcrel_lo(pcrel147)(a3)
	bne a1, a2, label59
	j label125
