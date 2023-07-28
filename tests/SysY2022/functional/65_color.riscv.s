.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
dp:
	.zero	52907904
.text
dfs:
.p2align 2
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
pcrel188:
	auipc a2, %pcrel_hi(dp)
	mv s5, a4
	addi a0, a2, %pcrel_lo(pcrel188)
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
	li a2, 504
	mul a3, s4, a1
	mul a1, s6, a2
	add a0, a0, a3
	li a2, 28
	add a0, a0, a1
	mul a1, a4, a2
	add s7, a0, a1
	li a1, -1
	sh2add a2, a5, s7
	lw a0, 0(a2)
	bne a0, a1, label19
	addw a1, s1, s3
	addw a0, s4, a1
	addw a2, s6, a0
	addw a1, a4, a2
	bne a1, zero, label3
	li a0, 1
	j label19
label3:
	bne s1, zero, label4
	mv s0, zero
	j label5
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
label4:
	addiw a0, s1, -1
	mv a1, s3
	li a5, 1
	mv a2, s4
	mv a3, s6
	mv a4, s5
	jal dfs
	li a3, 1152921497
	xori a2, s2, 2
	sltiu a1, a2, 1
	subw a4, s1, a1
	mulw a0, a0, a4
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
label5:
	beq s3, zero, label8
	addiw a0, s1, 1
	addiw a1, s3, -1
	mv a2, s4
	li a5, 2
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a2, s2, 3
	sltiu a1, a2, 1
	subw a3, s3, a1
	mulw a2, a0, a3
	li a3, 1152921497
	addw a0, s0, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
label8:
	bne s4, zero, label18
label10:
	bne s6, zero, label12
	j label13
label18:
	addiw a1, s3, 1
	addiw a2, s4, -1
	mv a0, s1
	li a5, 3
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s2, 4
	sltiu a2, a1, 1
	subw a3, s4, a2
	mulw a1, a0, a3
	li a3, 1152921497
	addw a0, s0, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
	j label10
label12:
	addiw a2, s4, 1
	addiw a3, s6, -1
	mv a0, s1
	li a5, 4
	mv a1, s3
	mv a4, s5
	jal dfs
	xori a1, s2, 5
	sltiu a2, a1, 1
	subw a3, s6, a2
	mulw a1, a0, a3
	li a3, 1152921497
	addw a0, s0, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw s0, a0, a3
label13:
	beq s5, zero, label16
	addiw a3, s6, 1
	addiw a4, s5, -1
	mv a0, s1
	li a5, 5
	mv a1, s3
	mv a2, s4
	jal dfs
	li a4, 1000000007
	li a3, 1152921497
	mulw a2, s5, a0
	addw a1, s0, a2
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 60
	add a0, a3, a2
	mulw a2, a0, a4
	subw s0, a1, a2
label16:
	li a2, 1152921497
	li a3, 1000000007
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 60
	add a0, a2, a1
	sh2add a2, s2, s7
	mulw a1, a0, a3
	subw a0, s0, a1
	sw a0, 0(a2)
	j label19
.globl main
main:
.p2align 2
	addi sp, sp, -112
	sd s1, 104(sp)
	addi s1, sp, 0
	sd s0, 96(sp)
	sd s2, 80(sp)
	sd ra, 88(sp)
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
pcrel422:
	auipc a1, %pcrel_hi(dp)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel422)
	mv a1, zero
	li a3, 2939328
	mv a4, zero
	li a3, 18
	mv a2, a0
	blt zero, a3, label236
	bgt s0, zero, label311
	j label207
label236:
	mv a3, zero
	li a5, 163296
	mv t0, zero
	li a5, 18
	mv a4, a2
	blt zero, a5, label242
	addiw a1, a1, 1
	li a3, 2939328
	mul a4, a1, a3
	li a3, 18
	add a2, a0, a4
	blt a1, a3, label236
	bgt s0, zero, label311
	j label207
.p2align 2
label199:
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
	blt t5, t3, label199
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
	li t3, 504
	mul t4, t1, t3
	li t3, 18
	add t2, t0, t4
	blt t1, t3, label255
	addiw a5, a5, 1
	li t2, 9072
	mul t1, a5, t2
	li t2, 18
	add t0, a4, t1
	blt a5, t2, label248
	addiw a3, a3, 1
	li a5, 163296
	mul t0, a3, a5
	li a5, 18
	add a4, a2, t0
	blt a3, a5, label242
	addiw a1, a1, 1
	li a3, 2939328
	mul a4, a1, a3
	li a3, 18
	add a2, a0, a4
	blt a1, a3, label236
	bgt s0, zero, label311
	j label207
.p2align 2
label242:
	mv a5, zero
	li t2, 9072
	mv t1, zero
	li t2, 18
	mv t0, a4
	blt zero, t2, label248
	addiw a3, a3, 1
	li a5, 163296
	mul t0, a3, a5
	li a5, 18
	add a4, a2, t0
	blt a3, a5, label242
	addiw a1, a1, 1
	li a3, 2939328
	mul a4, a1, a3
	li a3, 18
	add a2, a0, a4
	blt a1, a3, label236
	bgt s0, zero, label311
	j label207
.p2align 2
label248:
	mv t1, zero
	li t3, 504
	mv t4, zero
	li t3, 18
	mv t2, t0
	blt zero, t3, label255
	addiw a5, a5, 1
	li t2, 9072
	mul t1, a5, t2
	li t2, 18
	add t0, a4, t1
	blt a5, t2, label248
	addiw a3, a3, 1
	li a5, 163296
	mul t0, a3, a5
	li a5, 18
	add a4, a2, t0
	blt a3, a5, label242
	addiw a1, a1, 1
	li a3, 2939328
	mul a4, a1, a3
	li a3, 18
	add a2, a0, a4
	blt a1, a3, label236
	bgt s0, zero, label311
	j label207
.p2align 2
label255:
	mv t5, zero
	j label199
label311:
	mv s2, zero
.p2align 2
label205:
	jal getint
	addiw s2, s2, 1
	sh2add a0, a0, s1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	bgt s0, s2, label205
label207:
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
	ld ra, 88(sp)
	ld s2, 80(sp)
	ld s0, 96(sp)
	ld s1, 104(sp)
	addi sp, sp, 112
	ret
