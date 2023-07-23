.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl g1
g1:
	.zero	4
.text
.globl seteq0
seteq0:
	sltiu a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl setne0
setne0:
	sltu a1, zero, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl slti_beq0
slti_beq0:
	lui a1, 1048568
	blt a0, a1, label14
label15:
	ret
label14:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label14)(a1)
	j label15
.globl slti_beq1
slti_beq1:
	li a1, -32769
	blt a0, a1, label29
label30:
	ret
label29:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label29)(a1)
	j label30
.globl slti_beq2
slti_beq2:
	li a1, 32767
	blt a0, a1, label44
label45:
	ret
label44:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label44)(a1)
	j label45
.globl slti_beq3
slti_beq3:
	lui a1, 8
	blt a0, a1, label59
label60:
	ret
label59:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label59)(a1)
	j label60
.globl sltiu_beq0
sltiu_beq0:
	li a1, 32767
	bltu a0, a1, label74
label75:
	ret
label74:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label74)(a1)
	j label75
.globl sltiu_beq1
sltiu_beq1:
	lui a1, 8
	bltu a0, a1, label88
label89:
	ret
label88:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label88)(a1)
	j label89
.globl sltiu_beq2
sltiu_beq2:
	lui a1, 1048568
	bltu a0, a1, label102
label103:
	ret
label102:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label102)(a1)
	j label103
.globl sltiu_beq3
sltiu_beq3:
	li a1, -32769
	bltu a0, a1, label116
label117:
	ret
label116:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label116)(a1)
	j label117
