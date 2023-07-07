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
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl setne0
setne0:
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl slti_beq0
slti_beq0:
	lui a1, 1048568
	bge a0, a1, label15
pcrel28:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel28)(a1)
label15:
	ret
.globl slti_beq1
slti_beq1:
	li a1, -32769
	bge a0, a1, label31
pcrel44:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel44)(a1)
label31:
	ret
.globl slti_beq2
slti_beq2:
	li a1, 32767
	bge a0, a1, label47
pcrel60:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel60)(a1)
label47:
	ret
.globl slti_beq3
slti_beq3:
	lui a1, 8
	bge a0, a1, label63
pcrel76:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel76)(a1)
label63:
	ret
.globl sltiu_beq0
sltiu_beq0:
	li a1, 32767
	bgeu a0, a1, label79
pcrel91:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel91)(a1)
label79:
	ret
.globl sltiu_beq1
sltiu_beq1:
	lui a1, 8
	bgeu a0, a1, label94
pcrel106:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel106)(a1)
label94:
	ret
.globl sltiu_beq2
sltiu_beq2:
	lui a1, 1048568
	bgeu a0, a1, label109
pcrel121:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel121)(a1)
label109:
	ret
.globl sltiu_beq3
sltiu_beq3:
	li a1, -32769
	bgeu a0, a1, label124
pcrel136:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(pcrel136)(a1)
label124:
	ret
