.data
.align 2
.globl s
s:
	.byte	0
	.byte	0
.align 4
.globl g1
g1:
	.4byte	0
.align 4
.globl g2
g2:
	.4byte	0
.align 4
.globl g0
g0:
	.4byte	0
.section .rodata
.bss
.text
.globl func
func:
pcrel137:
	auipc a0, %pcrel_hi(s)
	addi a3, a0, %pcrel_lo(pcrel137)
	lh a0, %pcrel_lo(pcrel137)(a0)
pcrel138:
	auipc a1, %pcrel_hi(g1)
	addi a4, a1, %pcrel_lo(pcrel138)
	lw a1, %pcrel_lo(pcrel138)(a1)
pcrel139:
	auipc a2, %pcrel_hi(g2)
	lw a2, %pcrel_lo(pcrel139)(a2)
	sltu a2, zero, a2
	bne a2, zero, label17
	mv a5, zero
	li a2, 1
label2:
	sltu t1, zero, a2
	li t2, 4294967295
	and t2, t1, t2
	li t1, 65535
	and t3, t2, t1
	and t3, t3, t1
	xori t3, t3, 1
	and a0, a0, t1
	addw a0, t3, a0
	and a0, a0, t1
	and t1, a0, t1
	subw t3, zero, a1
	xor t3, t1, t3
	sltu t3, zero, t3
	bne t3, zero, label10
	addiw a5, a5, 1
	li t1, 12
	divuw a2, a2, t1
	sltu t1, zero, a5
	bne t1, zero, label2
	j label15
label10:
	addiw a0, t1, -1
	li t1, 65535
	and t1, a0, t1
	beq t2, zero, label14
	mv a0, a2
pcrel140:
	auipc t2, %pcrel_hi(g0)
	sw a2, %pcrel_lo(pcrel140)(t2)
	mv a0, t1
	addiw a5, a5, 1
	li t1, 12
	divuw a2, a2, t1
	sltu t1, zero, a5
	bne t1, zero, label2
	j label15
label17:
	li a2, 65535
	and a0, a0, a2
	and a0, a0, a2
	and a0, a0, a2
	subw a4, zero, a1
	xor a1, a0, a4
	sltu a1, zero, a1
	slli a1, a1, 16
	srai a1, a1, 16
	and a1, a1, a2
	and a1, a1, a2
	addw a0, a0, a1
	and a0, a0, a2
	li a2, 1
	mv a1, zero
	j label18
label15:
	sh a0, 0(a3)
	ret
label18:
	sltiu t1, a1, 1
	li a5, 65535
	and t1, t1, a5
	and t1, t1, a5
	and a0, a0, a5
	addw a0, a0, t1
	and a0, a0, a5
	and a0, a0, a5
	xor t1, a0, a4
	sltu t1, zero, t1
	slli t1, t1, 16
	srai t1, t1, 16
	and t1, t1, a5
	and t1, t1, a5
	addw a0, a0, t1
	and a0, a0, a5
	addiw a2, a2, 1
	li a5, 12
	divuw a1, a1, a5
	sltu a5, zero, a2
	bne a5, zero, label18
	j label15
label14:
	sw zero, 0(a4)
	mv a0, zero
	mv a1, zero
pcrel141:
	auipc t2, %pcrel_hi(g0)
	sw zero, %pcrel_lo(pcrel141)(t2)
	mv a0, t1
	addiw a5, a5, 1
	li t1, 12
	divuw a2, a2, t1
	sltu t1, zero, a5
	bne t1, zero, label2
	j label15
