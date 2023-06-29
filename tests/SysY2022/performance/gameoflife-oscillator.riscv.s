.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
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
	sd s2, 56(sp)
	sd s3, 48(sp)
	sd s4, 40(sp)
	sd s0, 32(sp)
	sd s5, 24(sp)
	sd s1, 16(sp)
	sd s6, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	jal getint
	mv s4, a0
	jal getch
pcrel369:
	auipc a0, %pcrel_hi(sheet1)
	addi s0, a0, %pcrel_lo(pcrel369)
	li s1, 1
	bgt s1, s3, label9
	ble s2, zero, label8
	j label225
label9:
	li a0, 95
	jal _sysy_starttime
pcrel370:
	auipc a0, %pcrel_hi(sheet2)
	addi s1, a0, %pcrel_lo(pcrel370)
	ble s4, zero, label72
	mv a0, s4
	li a2, 1
	xori a1, a2, 1
	sltiu a4, a1, 1
	mv a1, s0
	bne a4, zero, label216
	mv a1, s1
	mv a3, s1
	bne a4, zero, label214
	mv a3, s0
	li a2, 2
	bne a4, zero, label212
	li a2, 1
	li a4, 1
	addiw a5, a4, -1
	li t3, 2000
	mulw a5, a5, t3
	add a5, s1, a5
	mulw t1, a4, t3
	add t1, s1, t1
	addi t2, t1, 2000
	mulw t3, a4, t3
	add t3, s0, t3
	bgt a4, s3, label39
	li t4, 1
	bgt t4, s2, label38
	j label34
label72:
	li s4, 1
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label76
	li a0, 1
	bgt a0, s3, label100
	ble s2, zero, label26
label251:
	li a1, 2000
	mul a2, a0, a1
	add a2, s0, a2
	mul a1, a0, a1
	add a3, s1, a1
	li a1, 1
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	j label312
label76:
	li s1, 1
	bgt s1, s3, label14
	ble s2, zero, label16
	j label231
label100:
	li s1, 1
	bgt s1, s3, label14
	ble s2, zero, label16
	j label231
label312:
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	j label323
label216:
	mv a3, s1
	bne a4, zero, label214
	mv a3, s0
label214:
	li a2, 2
	bne a4, zero, label212
	li a2, 1
label212:
	li a4, 1
	addiw a5, a4, -1
	li t3, 2000
	mulw a5, a5, t3
	add a5, a1, a5
	mulw t1, a4, t3
	add t1, a1, t1
	addi t2, t1, 2000
	mulw t3, a4, t3
	add t3, a3, t3
	bgt a4, s3, label39
	li t4, 1
	bgt t4, s2, label38
label34:
	addiw t5, t4, -1
	slli t6, t5, 2
	add t6, a5, t6
	lw t6, 0(t6)
	slli a6, t4, 2
	add a6, a5, a6
	lw a7, 0(a6)
	addw t6, t6, a7
	lw a6, 4(a6)
	addw t6, t6, a6
	slli a6, t5, 2
	add a6, t1, a6
	lw a7, 0(a6)
	addw t6, t6, a7
	lw a6, 8(a6)
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, t2, t5
	lw t5, 0(t5)
	addw t5, t6, t5
	slli t6, t4, 2
	add t6, t2, t6
	lw a6, 0(t6)
	addw t5, t5, a6
	lw t6, 4(t6)
	addw t5, t5, t6
	xori t6, t5, 2
	sltiu t6, t6, 1
	slli a6, t4, 2
	add a6, t1, a6
	lw a6, 0(a6)
	xori a6, a6, 1
	sltiu a6, a6, 1
	and t6, a6, t6
	beq t6, zero, label35
	slli t5, t4, 2
	add t5, t3, t5
	li t6, 1
	sw t6, 0(t5)
	addiw t4, t4, 1
	bgt t4, s2, label38
	j label34
label38:
	addiw a4, a4, 1
	addiw a5, a4, -1
	li t3, 2000
	mulw a5, a5, t3
	add a5, a1, a5
	mulw t1, a4, t3
	add t1, a1, t1
	addi t2, t1, 2000
	mulw t3, a4, t3
	add t3, a3, t3
	bgt a4, s3, label39
	li t4, 1
	bgt t4, s2, label38
	j label34
label39:
	addiw a0, a0, -1
	ble a0, zero, label189
	xori a1, a2, 1
	sltiu a4, a1, 1
	mv a1, s0
	bne a4, zero, label216
	mv a1, s1
	mv a3, s1
	bne a4, zero, label214
	mv a3, s0
	li a2, 2
	bne a4, zero, label212
	li a2, 1
	li a4, 1
	addiw a5, a4, -1
	li t3, 2000
	mulw a5, a5, t3
	add a5, s1, a5
	mulw t1, a4, t3
	add t1, s1, t1
	addi t2, t1, 2000
	mulw t3, a4, t3
	add t3, s0, t3
	bgt a4, s3, label39
	li t4, 1
	bgt t4, s2, label38
	j label34
label189:
	mv s4, a2
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label76
	li a0, 1
	bgt a0, s3, label100
	ble s2, zero, label26
	j label251
label35:
	xori t5, t5, 3
	sltiu t5, t5, 1
	slli t6, t4, 2
	add t6, t3, t6
	sw t5, 0(t6)
	addiw t4, t4, 1
	bgt t4, s2, label38
	j label34
label225:
	li a0, 2000
	mul a0, s1, a0
	add s6, s0, a0
	li s5, 1
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	j label326
label8:
	jal getch
	addiw s1, s1, 1
	bgt s1, s3, label9
	ble s2, zero, label8
	j label225
label326:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
label339:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label8
	j label339
label235:
	li a1, 2000
	mul a2, a0, a1
	add a2, s0, a2
	mul a1, a0, a1
	add a3, s1, a1
	li a1, 1
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
label323:
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
label347:
	slli a4, a1, 2
	add a4, a3, a4
	lw a4, 0(a4)
	slli a5, a1, 2
	add a5, a2, a5
	sw a4, 0(a5)
	addiw a1, a1, 1
	bgt a1, s2, label26
	j label347
label231:
	li a0, 2000
	mul a0, s1, a0
	add s5, s0, a0
	li s4, 1
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	j label309
label16:
	li a0, 10
	jal putch
	addiw s1, s1, 1
	bgt s1, s3, label14
	ble s2, zero, label16
	j label231
label309:
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	j label320
label210:
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	j label309
label320:
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
label331:
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label16
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	j label331
label26:
	addiw a0, a0, 1
	bgt a0, s3, label100
	ble s2, zero, label26
	j label235
label14:
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
