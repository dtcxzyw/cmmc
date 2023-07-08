.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
sheet1:
	.zero	1000000
.align 4
sheet2:
	.zero	1000000
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s4, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s4, a0
	jal getch
	li s3, 1
pcrel297:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel297)
	blt s1, s3, label8
	li a0, 2000
	mul a0, s3, a0
	add s5, s2, a0
	ble s0, zero, label5
label219:
	li s6, 1
label6:
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	j label6
label5:
	jal getch
	addiw s3, s3, 1
	blt s1, s3, label8
	li a0, 2000
	mul a0, s3, a0
	add s5, s2, a0
	ble s0, zero, label5
	j label219
label8:
	li a0, 95
	jal _sysy_starttime
pcrel298:
	auipc a0, %pcrel_hi(sheet2)
	addi s3, a0, %pcrel_lo(pcrel298)
	ble s4, zero, label67
	mv a4, s4
	li t0, 1
	xori a0, t0, 1
	mv a3, s2
	sltiu a0, a0, 1
	bne a0, zero, label208
	mv a3, s3
	mv a5, s3
	bne a0, zero, label210
	j label249
label67:
	li s4, 1
	j label9
label249:
	mv a5, s2
	addiw t0, a0, 1
	li t3, 1
	j label27
label9:
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label71
	li a0, 1
	blt s1, a0, label95
	li a2, 2000
	mul a1, a0, a2
	mul a2, a0, a2
	add a1, s3, a1
	add a2, s2, a2
	ble s0, zero, label21
	li a3, 1
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	j label285
label71:
	li s3, 1
	blt s1, s3, label13
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	ble s0, zero, label17
	li s5, 1
	sh2add a0, s5, s4
	li a2, 1
	li a1, 35
	lw a0, 0(a0)
	beq a0, a2, label206
	j label239
label206:
	mv a0, a1
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label17
	sh2add a0, s5, s4
	li a2, 1
	li a1, 35
	lw a0, 0(a0)
	beq a0, a2, label206
	j label239
label186:
	mv s4, t0
	j label9
label27:
	addiw a0, t3, -1
	li t1, 2000
	addiw t2, t3, 1
	mulw a1, t3, t1
	mulw a0, a0, t1
	add a1, a3, a1
	mulw t1, t3, t1
	add a0, a3, a0
	addi a2, a1, 2000
	add t1, a5, t1
	blt s1, t3, label34
	li t3, 1
	blt s0, t3, label135
	j label31
label135:
	mv t3, t2
	j label27
label34:
	addiw a4, a4, -1
	ble a4, zero, label186
	xori a0, t0, 1
	mv a3, s2
	sltiu a0, a0, 1
	bne a0, zero, label208
	mv a3, s3
	mv a5, s3
	bne a0, zero, label210
	j label249
label31:
	addiw t4, t3, -1
	sh2add t5, t4, a0
	lw t6, 0(t5)
	sh2add t5, t3, a0
	lw a6, 0(t5)
	lw t5, 4(t5)
	addw t6, t6, a6
	addw t6, t6, t5
	sh2add t5, t4, a1
	sh2add t4, t4, a2
	lw a6, 0(t5)
	lw t5, 8(t5)
	addw t6, t6, a6
	lw t4, 0(t4)
	addw t5, t6, t5
	addw t5, t5, t4
	sh2add t4, t3, a2
	lw t6, 0(t4)
	lw t4, 4(t4)
	addw t5, t5, t6
	sh2add t6, t3, a1
	addw t4, t5, t4
	lw t6, 0(t6)
	xori t5, t4, 2
	xori t6, t6, 1
	or t6, t5, t6
	addiw t5, t3, 1
	bne t6, zero, label33
	sh2add t3, t3, t1
	li t4, 1
	sw t4, 0(t3)
	mv t3, t5
	blt s0, t5, label135
	j label31
label33:
	xori t4, t4, 3
	sh2add t3, t3, t1
	sltiu t4, t4, 1
	sw t4, 0(t3)
	mv t3, t5
	blt s0, t5, label135
	j label31
label285:
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	j label22
label21:
	addiw a0, a0, 1
	blt s1, a0, label95
	li a2, 2000
	mul a1, a0, a2
	mul a2, a0, a2
	add a1, s3, a1
	add a2, s2, a2
	ble s0, zero, label21
	li a3, 1
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	j label285
label22:
	sh2add a4, a3, a1
	sh2add a5, a3, a2
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label21
	j label22
label239:
	li a1, 46
	j label206
label17:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	blt s1, s3, label13
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	ble s0, zero, label17
	li s5, 1
	sh2add a0, s5, s4
	li a2, 1
	li a1, 35
	lw a0, 0(a0)
	beq a0, a2, label206
	j label239
label13:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label95:
	li s3, 1
	blt s1, s3, label13
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	ble s0, zero, label17
	li s5, 1
	sh2add a0, s5, s4
	li a2, 1
	li a1, 35
	lw a0, 0(a0)
	beq a0, a2, label206
	j label239
label208:
	mv a5, s3
	bne a0, zero, label210
	mv a5, s2
label210:
	addiw t0, a0, 1
	li t3, 1
	j label27
