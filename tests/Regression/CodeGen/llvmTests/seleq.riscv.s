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
pcrel133:
	auipc a1, %pcrel_hi(a)
pcrel134:
	auipc a3, %pcrel_hi(b)
	addi a0, a1, %pcrel_lo(pcrel133)
	addi a2, a3, %pcrel_lo(pcrel134)
	lw a1, %pcrel_lo(pcrel133)(a1)
	lw a3, %pcrel_lo(pcrel134)(a3)
	bne a1, a3, label17
pcrel135:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel135)(a1)
pcrel136:
	auipc a3, %pcrel_hi(z1)
	sw a1, %pcrel_lo(pcrel136)(a3)
	lw a1, 0(a2)
	lw a2, 0(a0)
	bne a1, a2, label16
pcrel137:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel137)(a1)
pcrel138:
	auipc a2, %pcrel_hi(z2)
	sw a1, %pcrel_lo(pcrel138)(a2)
pcrel139:
	auipc a1, %pcrel_hi(c)
	addi a2, a1, %pcrel_lo(pcrel139)
	lw a1, %pcrel_lo(pcrel139)(a1)
	lw a3, 0(a0)
	bne a1, a3, label9
pcrel140:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel140)(a1)
pcrel141:
	auipc a3, %pcrel_hi(z3)
	sw a1, %pcrel_lo(pcrel141)(a3)
	lw a0, 0(a0)
	lw a1, 0(a2)
	bne a0, a1, label64
	j label130
label17:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(label17)(a1)
pcrel142:
	auipc a3, %pcrel_hi(z1)
	sw a1, %pcrel_lo(pcrel142)(a3)
	lw a1, 0(a2)
	lw a2, 0(a0)
	bne a1, a2, label16
pcrel143:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel143)(a1)
pcrel144:
	auipc a2, %pcrel_hi(z2)
	sw a1, %pcrel_lo(pcrel144)(a2)
pcrel145:
	auipc a1, %pcrel_hi(c)
	addi a2, a1, %pcrel_lo(pcrel145)
	lw a1, %pcrel_lo(pcrel145)(a1)
	lw a3, 0(a0)
	bne a1, a3, label9
pcrel146:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel146)(a1)
pcrel147:
	auipc a3, %pcrel_hi(z3)
	sw a1, %pcrel_lo(pcrel147)(a3)
	lw a0, 0(a0)
	lw a1, 0(a2)
	bne a0, a1, label64
	j label130
label9:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(label9)(a1)
pcrel148:
	auipc a3, %pcrel_hi(z3)
	sw a1, %pcrel_lo(pcrel148)(a3)
	lw a0, 0(a0)
	lw a1, 0(a2)
	bne a0, a1, label64
	j label130
label64:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(label64)(a0)
label14:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label14)(a1)
	ret
label130:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(label130)(a0)
	j label14
label16:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(label16)(a1)
pcrel149:
	auipc a2, %pcrel_hi(z2)
	sw a1, %pcrel_lo(pcrel149)(a2)
pcrel150:
	auipc a1, %pcrel_hi(c)
	addi a2, a1, %pcrel_lo(pcrel150)
	lw a1, %pcrel_lo(pcrel150)(a1)
	lw a3, 0(a0)
	bne a1, a3, label9
pcrel151:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel151)(a1)
pcrel152:
	auipc a3, %pcrel_hi(z3)
	sw a1, %pcrel_lo(pcrel152)(a3)
	lw a0, 0(a0)
	lw a1, 0(a2)
	bne a0, a1, label64
	j label130
