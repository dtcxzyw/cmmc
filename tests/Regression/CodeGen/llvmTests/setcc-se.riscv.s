.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl g1
g1:
	.zero	4
.text
.p2align 2
.globl seteq0
seteq0:
	sltiu a1, a0, 1
	zext.w a0, a1
	ret
.p2align 2
.globl setne0
setne0:
	sltu a1, zero, a0
	zext.w a0, a1
	ret
.p2align 2
.globl slti_beq0
slti_beq0:
	lui a1, 1048568
	bge a0, a1, label13
pcrel27:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel27)(a1)
label13:
	ret
.p2align 2
.globl slti_beq1
slti_beq1:
	li a1, -32769
	bge a0, a1, label30
pcrel44:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel44)(a1)
label30:
	ret
.p2align 2
.globl slti_beq2
slti_beq2:
	li a1, 32767
	bge a0, a1, label47
pcrel61:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel61)(a1)
label47:
	ret
.p2align 2
.globl slti_beq3
slti_beq3:
	lui a1, 8
	bge a0, a1, label64
pcrel78:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel78)(a1)
label64:
	ret
.p2align 2
.globl sltiu_beq0
sltiu_beq0:
	li a1, 32767
	bgeu a0, a1, label81
pcrel94:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel94)(a1)
label81:
	ret
.p2align 2
.globl sltiu_beq1
sltiu_beq1:
	lui a1, 8
	bgeu a0, a1, label97
pcrel110:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel110)(a1)
label97:
	ret
.p2align 2
.globl sltiu_beq2
sltiu_beq2:
	lui a1, 1048568
	bgeu a0, a1, label113
pcrel126:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel126)(a1)
label113:
	ret
.p2align 2
.globl sltiu_beq3
sltiu_beq3:
	li a1, -32769
	bgeu a0, a1, label129
pcrel142:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel142)(a1)
label129:
	ret
