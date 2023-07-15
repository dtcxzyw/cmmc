.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
dp:
	.zero	52907904
.text
dfs:
	addi sp, sp, -72
	sd s1, 64(sp)
	mv s1, a0
	sd s6, 56(sp)
	mv s6, a3
	sd s3, 48(sp)
	mv s3, a1
	sd s4, 40(sp)
	li a1, 2939328
	mv s4, a2
	sd s5, 32(sp)
pcrel190:
	auipc a2, %pcrel_hi(dp)
	mv s5, a4
	addi a0, a2, %pcrel_lo(pcrel190)
	sd s0, 24(sp)
	mul a2, s1, a1
	sd s2, 16(sp)
	li a1, 163296
	add a0, a0, a2
	mv s2, a5
	sd s7, 8(sp)
	mul a2, s3, a1
	sd ra, 0(sp)
	li a1, 9072
	add a0, a0, a2
	mul a2, s4, a1
	li a1, 504
	add a0, a0, a2
	mul a3, a3, a1
	li a2, 28
	add a0, a0, a3
	mul a1, a4, a2
	add s7, a0, a1
	li a1, -1
	sh2add a2, a5, s7
	lw a0, 0(a2)
	beq a0, a1, label2
label19:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
label2:
	addw a1, s1, s3
	addw a0, s4, a1
	addw a2, s6, a0
	addw a1, s5, a2
	bne a1, zero, label3
	li a0, 1
	j label19
label3:
	beq s1, zero, label56
	j label18
label56:
	mv s0, zero
	beq s3, zero, label6
	j label17
label10:
	addiw a2, s4, 1
	addiw a3, s6, -1
	mv a0, s1
	li a5, 4
	mv a1, s3
	mv a4, s5
	jal dfs
	xori a1, s2, 5
	li a4, 1000000007
	sltiu a3, a1, 1
	subw a2, s6, a3
	li a3, 1152921497
	mulw a1, a0, a2
	addw a0, s0, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw s0, a0, a2
label11:
	beq s5, zero, label14
	addiw a3, s6, 1
	addiw a4, s5, -1
	mv a0, s1
	li a5, 5
	mv a1, s3
	mv a2, s4
	jal dfs
	li a3, 1152921497
	mulw a2, s5, a0
	addw a1, s0, a2
	mul a0, a1, a3
	li a3, 1000000007
	srli a4, a0, 63
	srai a2, a0, 60
	add a0, a4, a2
	mulw a2, a0, a3
	subw s0, a1, a2
	j label14
label16:
	addiw a1, s3, 1
	addiw a2, s4, -1
	mv a0, s1
	li a5, 3
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s2, 4
	li a4, 1000000007
	sltiu a2, a1, 1
	subw a3, s4, a2
	mulw a1, a0, a3
	li a3, 1152921497
	addw a0, s0, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw s0, a0, a2
	beq s6, zero, label11
	j label10
label17:
	addiw a0, s1, 1
	addiw a1, s3, -1
	mv a2, s4
	li a5, 2
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a3, s2, 3
	li a4, 1152921497
	sltiu a1, a3, 1
	subw a2, s3, a1
	mulw a3, a0, a2
	addw a0, s0, a3
	mul a1, a0, a4
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
	beq s4, zero, label8
	j label16
label18:
	addiw a0, s1, -1
	mv a1, s3
	li a5, 1
	mv a2, s4
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s2, 2
	sltiu a3, a1, 1
	subw a2, s1, a3
	li a3, 1152921497
	mulw a0, a0, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
	beq s3, zero, label6
	j label17
label8:
	beq s6, zero, label11
	j label10
label6:
	beq s4, zero, label8
	j label16
label14:
	li a2, 1152921497
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 60
	add a0, a2, a1
	li a1, 1000000007
	mulw a2, a0, a1
	sh2add a1, s2, s7
	subw a0, s0, a2
	sw a0, 0(a1)
	j label19
.globl main
main:
	addi sp, sp, -112
	sd s1, 104(sp)
	addi s1, sp, 0
	sd s0, 96(sp)
	sd s2, 88(sp)
	sd ra, 80(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	jal getint
	mv a4, zero
	mv s0, a0
pcrel428:
	auipc a0, %pcrel_hi(dp)
	addi a3, a0, %pcrel_lo(pcrel428)
	li a1, 2939328
	mv a0, zero
	li a1, 18
	mv a2, a3
	bge zero, a1, label207
	mv a5, zero
	li a0, 163296
	mv t0, zero
	li a0, 18
	mv a1, a3
	bge zero, a0, label206
	li t1, 9072
	li t2, 18
	mv t3, zero
	mv a0, a3
	bge zero, t2, label205
	mv t1, zero
	j label417
label402:
	mv s2, zero
	j label208
label204:
	addiw t0, t0, 1
	li t1, 9072
	li t2, 18
	mul t3, t0, t1
	add a0, a1, t3
	bge t0, t2, label205
	mv t1, zero
	bge zero, t2, label204
	j label417
label205:
	addiw a5, a5, 1
	li a0, 163296
	mul t0, a5, a0
	li a0, 18
	add a1, a2, t0
	bge a5, a0, label206
	mv t0, zero
	li t1, 9072
	li t2, 18
	mv t3, zero
	mv a0, a1
	bge zero, t2, label205
	mv t1, zero
	j label417
label207:
	ble s0, zero, label210
	j label402
label417:
	li t4, 504
	mv t5, zero
	mul t3, t1, t4
	add t2, a0, t3
label201:
	li t4, 28
	mul t6, t5, t4
	addiw t5, t5, 4
	li t4, -1
	add t3, t2, t6
	sw t4, 0(t3)
	sw t4, 4(t3)
	sw t4, 8(t3)
	sw t4, 12(t3)
	sw t4, 16(t3)
	sw t4, 20(t3)
	sw t4, 24(t3)
	sw t4, 28(t3)
	sw t4, 32(t3)
	sw t4, 36(t3)
	sw t4, 40(t3)
	sw t4, 44(t3)
	sw t4, 48(t3)
	sw t4, 52(t3)
	sw t4, 56(t3)
	sw t4, 60(t3)
	sw t4, 64(t3)
	sw t4, 68(t3)
	sw t4, 72(t3)
	sw t4, 76(t3)
	sw t4, 80(t3)
	sw t4, 84(t3)
	sw t4, 88(t3)
	sw t4, 92(t3)
	sw t4, 96(t3)
	sw t4, 100(t3)
	sw t4, 104(t3)
	sw t4, 108(t3)
	li t3, 16
	bge t5, t3, label203
	j label201
label203:
	li t3, 28
	addiw t1, t1, 1
	mul t4, t5, t3
	li t3, -1
	add t2, t2, t4
	sw t3, 0(t2)
	sw t3, 4(t2)
	sw t3, 8(t2)
	sw t3, 12(t2)
	sw t3, 16(t2)
	sw t3, 20(t2)
	sw t3, 24(t2)
	sw t3, 28(t2)
	sw t3, 32(t2)
	sw t3, 36(t2)
	sw t3, 40(t2)
	sw t3, 44(t2)
	sw t3, 48(t2)
	sw t3, 52(t2)
	li t2, 18
	bge t1, t2, label204
	j label417
label206:
	addiw a4, a4, 1
	li a1, 2939328
	mul a0, a4, a1
	li a1, 18
	add a2, a3, a0
	bge a4, a1, label207
	mv a5, zero
	li a0, 163296
	mv t0, zero
	li a0, 18
	mv a1, a2
	bge zero, a0, label206
	li t1, 9072
	li t2, 18
	mv t3, zero
	mv a0, a2
	bge zero, t2, label205
	mv t1, zero
	j label417
label208:
	jal getint
	addiw s2, s2, 1
	sh2add a0, a0, s1
	lw a2, 0(a0)
	addiw a1, a2, 1
	sw a1, 0(a0)
	ble s0, s2, label210
	j label208
label210:
	lw a0, 4(sp)
	mv a5, zero
	lw a1, 8(sp)
	lw a2, 12(sp)
	lw a3, 16(sp)
	lw a4, 20(sp)
	jal dfs
	mv s0, a0
	jal putint
	mv a0, s0
	ld ra, 80(sp)
	ld s2, 88(sp)
	ld s0, 96(sp)
	ld s1, 104(sp)
	addi sp, sp, 112
	ret
