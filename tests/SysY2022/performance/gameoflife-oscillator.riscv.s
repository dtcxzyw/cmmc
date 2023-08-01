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
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s2, 64(sp)
	sd s8, 72(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s3, a0
	jal getint
	mv s6, a0
	jal getch
	li s7, 1
	li s2, 2000
pcrel264:
	auipc a0, %pcrel_hi(sheet1)
	mv s1, s7
	addi s4, a0, %pcrel_lo(pcrel264)
	blt s3, s7, label8
.p2align 2
label4:
	mul a0, s7, s2
	add s5, s4, a0
	ble s0, zero, label7
	mv s8, s1
.p2align 2
label5:
	jal getch
	sh2add a1, s8, s5
	xori a2, a0, 35
	addiw s8, s8, 1
	sltiu a0, a2, 1
	sw a0, 0(a1)
	bge s0, s8, label5
.p2align 2
label7:
	jal getch
	addiw s7, s7, 1
	bge s3, s7, label4
label8:
	li a0, 95
	jal _sysy_starttime
pcrel265:
	auipc a1, %pcrel_hi(sheet2)
	addi s5, a1, %pcrel_lo(pcrel265)
	ble s6, zero, label66
	mv t0, s6
	mv t1, s1
.p2align 2
label9:
	xori a1, t1, 1
	mv a4, s4
	sltiu a0, a1, 1
	bne a0, zero, label225
	mv a4, s5
.p2align 2
label225:
	mv a5, s5
	bne a0, zero, label227
	mv a5, s4
.p2align 2
label227:
	addiw t1, a0, 1
	mv t3, s1
	addiw a2, s1, -1
	mulw a3, s1, s2
	addiw t2, s1, 1
	mulw a1, a2, s2
	add a0, a4, a1
	add a1, a4, a3
	add a3, a5, a3
	addi a2, a1, 2000
	bge s3, s1, label85
	j label84
label241:
	mv s6, t1
	j label20
.p2align 2
label85:
	mv t3, s1
	blt s0, s1, label88
.p2align 2
label16:
	addiw t4, t3, -1
	sh2add t5, t3, a0
	sh2add a6, t4, a0
	lw t6, 0(a6)
	lw a7, 0(t5)
	addw a6, t6, a7
	lw a7, 4(t5)
	sh2add t5, t4, a1
	addw t6, a6, a7
	sh2add t4, t4, a2
	lw a7, 0(t5)
	lw a6, 8(t5)
	addw t6, t6, a7
	addw t5, t6, a6
	lw t6, 0(t4)
	sh2add t4, t3, a2
	addw t5, t5, t6
	lw a6, 0(t4)
	lw t6, 4(t4)
	addw t5, t5, a6
	addw t4, t5, t6
	sh2add t6, t3, a1
	xori t5, t4, 2
	lw a7, 0(t6)
	xori a6, a7, 1
	or t6, t5, a6
	addiw t5, t3, 1
	beq t6, zero, label17
	xori a6, t4, 3
	sh2add t6, t3, a3
	sltiu t4, a6, 1
	mv t3, t5
	sw t4, 0(t6)
	bge s0, t5, label16
	j label249
.p2align 2
label17:
	sh2add t4, t3, a3
	mv t3, t5
	sw s1, 0(t4)
	bge s0, t5, label16
	mv t3, t2
	addiw a2, t2, -1
	mulw a3, t2, s2
	addiw t2, t2, 1
	mulw a1, a2, s2
	add a0, a4, a1
	add a1, a4, a3
	add a3, a5, a3
	addi a2, a1, 2000
	bge s3, t3, label85
	addiw t0, t0, -1
	bgt t0, zero, label9
	j label241
label20:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s6, a1, label144
label143:
	mv s6, s1
	blt s3, s1, label24
.p2align 2
label25:
	mul a1, s6, s2
	add s5, s4, a1
	ble s0, zero, label26
	mv s7, s1
	sh2add a2, s1, s5
	li a0, 35
	lw a1, 0(a2)
	beq a1, s1, label229
	li a0, 46
	j label229
.p2align 2
label26:
	li a0, 10
	jal putch
	addiw s6, s6, 1
	bge s3, s6, label25
	j label24
.p2align 2
label27:
	sh2add a2, s7, s5
	li a0, 35
	lw a1, 0(a2)
	beq a1, s1, label229
	li a0, 46
.p2align 2
label229:
	jal putch
	addiw s7, s7, 1
	bge s0, s7, label27
	j label26
label144:
	mv a2, s1
label29:
	blt s3, a2, label143
.p2align 2
label31:
	mul a3, a2, s2
	add a1, s4, a3
	add a0, s5, a3
	ble s0, zero, label174
	mv a3, s1
.p2align 2
label32:
	sh2add t0, a3, a0
	sh2add a5, a3, a1
	lw a4, 0(t0)
	addiw a3, a3, 1
	sw a4, 0(a5)
	bge s0, a3, label32
	addiw a2, a2, 1
	bge s3, a2, label31
	j label143
.p2align 2
label249:
	mv t3, t2
	addiw a2, t2, -1
	mulw a3, t2, s2
	addiw t2, t2, 1
	mulw a1, a2, s2
	add a0, a4, a1
	add a1, a4, a3
	add a3, a5, a3
	addi a2, a1, 2000
	bge s3, t3, label85
	addiw t0, t0, -1
	bgt t0, zero, label9
	j label241
label24:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label88:
	mv t3, t2
	addiw a2, t2, -1
	mulw a3, t2, s2
	addiw t2, t2, 1
	mulw a1, a2, s2
	add a0, a4, a1
	add a1, a4, a3
	add a3, a5, a3
	addi a2, a1, 2000
	bge s3, t3, label85
	addiw t0, t0, -1
	bgt t0, zero, label9
	j label241
label84:
	addiw t0, t0, -1
	bgt t0, zero, label9
	j label241
label174:
	addiw a2, a2, 1
	j label29
label66:
	mv s6, s1
	j label20
