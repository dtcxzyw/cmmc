.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
sheet1:
	.zero	1000000
.align 8
sheet2:
	.zero	1000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s3, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s3, a0
	jal getch
	li s4, 1
pcrel258:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel258)
	blt s1, s4, label8
.p2align 2
label4:
	li a0, 2000
	mul a1, s4, a0
	add s5, s2, a1
	ble s0, zero, label7
	li s6, 1
.p2align 2
label5:
	jal getch
	sh2add a1, s6, s5
	xori a2, a0, 35
	addiw s6, s6, 1
	sltiu a0, a2, 1
	sw a0, 0(a1)
	bge s0, s6, label5
.p2align 2
label7:
	jal getch
	addiw s4, s4, 1
	bge s1, s4, label4
label8:
	li a0, 95
	jal _sysy_starttime
	bgt s3, zero, label9
	li s3, 1
	j label21
.p2align 2
label10:
	xori a4, a2, 1
	mv a3, s2
	sltiu a2, a4, 1
	bne a2, zero, label224
	mv a3, a0
.p2align 2
label224:
	mv a4, a0
	bne a2, zero, label226
	mv a4, s2
.p2align 2
label226:
	addiw a2, a2, 1
	li t4, 1
	addiw a5, t4, -1
	li t0, 2000
	mulw t2, t4, t0
	mulw t1, a5, t0
	add t3, a4, t2
	add t0, a3, t2
	add a5, a3, t1
	addiw t2, t4, 1
	addi t1, t0, 2000
	bge s1, t4, label87
	addiw a1, a1, -1
	bgt a1, zero, label10
.p2align 2
label238:
	mv s3, a2
	j label21
.p2align 2
label87:
	li t4, 1
	bge s0, t4, label17
.p2align 2
label90:
	mv t4, t2
	addiw a5, t2, -1
	li t0, 2000
	mulw t2, t2, t0
	mulw t1, a5, t0
	add t3, a4, t2
	add t0, a3, t2
	add a5, a3, t1
	addiw t2, t4, 1
	addi t1, t0, 2000
	bge s1, t4, label87
	addiw a1, a1, -1
	bgt a1, zero, label10
	j label238
.p2align 2
label17:
	addiw t5, t4, -1
	sh2add t6, t4, a5
	sh2add a7, t5, a5
	lw a6, 0(a7)
	lw s3, 0(t6)
	lw t6, 4(t6)
	addw a7, a6, s3
	addw a6, a7, t6
	sh2add t6, t5, t0
	sh2add t5, t5, t1
	lw a7, 0(t6)
	addw a6, a6, a7
	lw a7, 8(t6)
	addw t6, a6, a7
	lw a6, 0(t5)
	sh2add t5, t4, t1
	addw t6, t6, a6
	lw a6, 0(t5)
	lw a7, 4(t5)
	addw t6, t6, a6
	addw t5, t6, a7
	sh2add a7, t4, t0
	xori t6, t5, 2
	lw a6, 0(a7)
	xori a7, a6, 1
	or a6, t6, a7
	addiw t6, t4, 1
	beq a6, zero, label19
	xori a7, t5, 3
	sh2add a6, t4, t3
	sltiu t5, a7, 1
	mv t4, t6
	sw t5, 0(a6)
	bge s0, t6, label17
	j label90
.p2align 2
label19:
	sh2add t5, t4, t3
	li a6, 1
	mv t4, t6
	sw a6, 0(t5)
	bge s0, t6, label17
	j label90
label21:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s3, a1, label23
	li s3, 1
	bge s1, s3, label33
label32:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label33:
	li a1, 2000
	mul a0, s3, a1
	add s4, s2, a0
	ble s0, zero, label34
	li s5, 1
	sh2add a1, s5, s4
	li a2, 1
	lw a0, 0(a1)
	li a1, 35
	beq a0, a2, label228
.p2align 2
label245:
	li a1, 46
	j label228
.p2align 2
label34:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bge s1, s3, label33
	j label32
.p2align 2
label35:
	sh2add a1, s5, s4
	li a2, 1
	lw a0, 0(a1)
	li a1, 35
	bne a0, a2, label245
.p2align 2
label228:
	mv a0, a1
	jal putch
	addiw s5, s5, 1
	bge s0, s5, label35
	j label34
label23:
	auipc a1, %pcrel_hi(sheet2)
	addi a0, a1, %pcrel_lo(label23)
	li a1, 1
	bge s1, a1, label26
	li s3, 1
	bge s1, s3, label33
	j label32
.p2align 2
label26:
	li a3, 2000
	mul a4, a1, a3
	add a3, s2, a4
	add a2, a0, a4
	bgt s0, zero, label159
	addiw a1, a1, 1
	bge s1, a1, label26
	li s3, 1
	bge s1, s3, label33
	j label32
.p2align 2
label159:
	li a4, 1
.p2align 2
label27:
	sh2add t1, a4, a2
	sh2add t0, a4, a3
	lw a5, 0(t1)
	addiw a4, a4, 1
	sw a5, 0(t0)
	bge s0, a4, label27
	addiw a1, a1, 1
	bge s1, a1, label26
	li s3, 1
	bge s1, s3, label33
	j label32
label9:
	auipc a1, %pcrel_hi(sheet2)
	li a2, 1
	addi a0, a1, %pcrel_lo(label9)
	mv a1, s3
	j label10
