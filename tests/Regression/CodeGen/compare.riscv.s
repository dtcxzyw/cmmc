.data
.text
.globl seqz
seqz:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	sltiu s1, s0, 1
	mv t1, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl seqi
seqi:
	addi sp, sp, -56
	sd s0, 40(sp)
	sd s1, 48(sp)
	mv s0, a0
	li s1, 1
	xor t1, s0, s1
	sltiu t2, t1, 1
	mv t3, t2
	mv a0, t3
	ld s1, 48(sp)
	ld s0, 40(sp)
	addi sp, sp, 56
	jr ra
.globl seq
seq:
	addi sp, sp, -56
	sd s0, 40(sp)
	sd s1, 48(sp)
	mv s0, a0
	mv s1, a1
	xor t1, s0, s1
	sltiu t2, t1, 1
	mv t3, t2
	mv a0, t3
	ld s1, 48(sp)
	ld s0, 40(sp)
	addi sp, sp, 56
	jr ra
.globl snei
snei:
	addi sp, sp, -64
	sd s0, 48(sp)
	sd s1, 56(sp)
	mv s0, a0
	li s1, 1
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	mv a0, t4
	ld s1, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	jr ra
.globl sne
sne:
	addi sp, sp, -64
	sd s0, 48(sp)
	sd s1, 56(sp)
	mv s0, a0
	mv s1, a1
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	mv a0, t4
	ld s1, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	jr ra
.globl snez
snez:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a0
	sltiu s1, s0, 1
	xori t1, s1, 1
	mv t2, t1
	mv a0, t2
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl slti
slti:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a0
	li s1, 1
	slt t1, s0, s1
	mv t2, t1
	mv a0, t2
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl slt
slt:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a0
	mv s1, a1
	slt t1, s0, s1
	mv t2, t1
	mv a0, t2
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl sgti
sgti:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a0
	li s1, 1
	slt t1, s1, s0
	mv t2, t1
	mv a0, t2
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl sgt
sgt:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a0
	mv s1, a1
	slt t1, s1, s0
	mv t2, t1
	mv a0, t2
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl slei
slei:
	addi sp, sp, -56
	sd s0, 40(sp)
	sd s1, 48(sp)
	mv s0, a0
	li s1, 1
	slt t1, s1, s0
	xori t2, t1, 1
	mv t3, t2
	mv a0, t3
	ld s1, 48(sp)
	ld s0, 40(sp)
	addi sp, sp, 56
	jr ra
.globl sle
sle:
	addi sp, sp, -56
	sd s0, 40(sp)
	sd s1, 48(sp)
	mv s0, a0
	mv s1, a1
	slt t1, s1, s0
	xori t2, t1, 1
	mv t3, t2
	mv a0, t3
	ld s1, 48(sp)
	ld s0, 40(sp)
	addi sp, sp, 56
	jr ra
.globl sgei
sgei:
	addi sp, sp, -56
	sd s0, 40(sp)
	sd s1, 48(sp)
	mv s0, a0
	li s1, 1
	slt t1, s0, s1
	xori t2, t1, 1
	mv t3, t2
	mv a0, t3
	ld s1, 48(sp)
	ld s0, 40(sp)
	addi sp, sp, 56
	jr ra
.globl sge
sge:
	addi sp, sp, -56
	sd s0, 40(sp)
	sd s1, 48(sp)
	mv s0, a0
	mv s1, a1
	slt t1, s0, s1
	xori t2, t1, 1
	mv t3, t2
	mv a0, t3
	ld s1, 48(sp)
	ld s0, 40(sp)
	addi sp, sp, 56
	jr ra
