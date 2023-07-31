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
.p2align 2
	sltiu a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl setne0
setne0:
.p2align 2
	sltu a1, zero, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl slti_beq0
slti_beq0:
.p2align 2
	lui a1, 1048568
	bge a0, a1, label15
pcrel29:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel29)(a1)
label15:
	ret
.globl slti_beq1
slti_beq1:
.p2align 2
	li a1, -32769
	bge a0, a1, label32
pcrel46:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel46)(a1)
label32:
	ret
.globl slti_beq2
slti_beq2:
.p2align 2
	li a1, 32767
	bge a0, a1, label49
pcrel63:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel63)(a1)
label49:
	ret
.globl slti_beq3
slti_beq3:
.p2align 2
	lui a1, 8
	bge a0, a1, label66
pcrel80:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel80)(a1)
label66:
	ret
.globl sltiu_beq0
sltiu_beq0:
.p2align 2
	li a1, 32767
	bgeu a0, a1, label83
pcrel96:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel96)(a1)
label83:
	ret
.globl sltiu_beq1
sltiu_beq1:
.p2align 2
	lui a1, 8
	bgeu a0, a1, label99
pcrel112:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel112)(a1)
label99:
	ret
.globl sltiu_beq2
sltiu_beq2:
.p2align 2
	lui a1, 1048568
	bgeu a0, a1, label115
pcrel128:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel128)(a1)
label115:
	ret
.globl sltiu_beq3
sltiu_beq3:
.p2align 2
	li a1, -32769
	bgeu a0, a1, label131
pcrel144:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel144)(a1)
label131:
	ret
