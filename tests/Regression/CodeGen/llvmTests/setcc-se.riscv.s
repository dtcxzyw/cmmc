.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
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
	lui a2, 1048568
	addiw a1, a2, -1
	bge a0, a1, label30
pcrel45:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel45)(a1)
label30:
	ret
.p2align 2
.globl slti_beq2
slti_beq2:
	lui a2, 8
	addiw a1, a2, -1
	bge a0, a1, label48
pcrel63:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel63)(a1)
label48:
	ret
.p2align 2
.globl slti_beq3
slti_beq3:
	lui a1, 8
	bge a0, a1, label66
pcrel80:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel80)(a1)
label66:
	ret
.p2align 2
.globl sltiu_beq0
sltiu_beq0:
	lui a2, 8
	addiw a1, a2, -1
	bgeu a0, a1, label83
pcrel97:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel97)(a1)
label83:
	ret
.p2align 2
.globl sltiu_beq1
sltiu_beq1:
	lui a1, 8
	bgeu a0, a1, label100
pcrel113:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel113)(a1)
label100:
	ret
.p2align 2
.globl sltiu_beq2
sltiu_beq2:
	lui a1, 1048568
	bgeu a0, a1, label116
pcrel129:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel129)(a1)
label116:
	ret
.p2align 2
.globl sltiu_beq3
sltiu_beq3:
	lui a2, 1048568
	addiw a1, a2, -1
	bgeu a0, a1, label132
pcrel146:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel146)(a1)
label132:
	ret
