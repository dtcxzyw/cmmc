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
pcrel390:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel390)
	blt s1, s3, label9
	ble s0, zero, label5
	j label223
label9:
	li a0, 95
	jal _sysy_starttime
pcrel391:
	auipc a0, %pcrel_hi(sheet2)
	addi s3, a0, %pcrel_lo(pcrel391)
	ble s4, zero, label71
	mv t0, s4
	li t2, 1
	xori a0, t2, 1
	mv a4, s2
	sltiu a0, a0, 1
	bne a0, zero, label214
	mv a4, s3
	mv t1, s3
	bne a0, zero, label212
	mv t1, s2
	addiw t2, a0, 1
	li a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a2, a5, a0
	mulw a1, a1, a0
	add a2, s3, a2
	mulw a0, a5, a0
	add a1, s3, a1
	addi a3, a2, 2000
	add t3, s2, a0
	blt s1, a5, label38
	li a0, 1
	blt s0, a0, label37
label34:
	addiw t4, a0, -1
	sh2add t5, t4, a1
	lw t6, 0(t5)
	sh2add t5, a0, a1
	lw a6, 0(t5)
	lw t5, 4(t5)
	addw t6, t6, a6
	addw t6, t6, t5
	sh2add t5, t4, a2
	sh2add t4, t4, a3
	lw a6, 0(t5)
	lw t5, 8(t5)
	addw t6, t6, a6
	lw t4, 0(t4)
	addw t5, t6, t5
	addw t5, t5, t4
	sh2add t4, a0, a3
	lw t6, 0(t4)
	lw t4, 4(t4)
	addw t5, t5, t6
	sh2add t6, a0, a2
	addw t4, t5, t4
	lw t6, 0(t6)
	xori t5, t4, 2
	xori t6, t6, 1
	or t5, t5, t6
	bne t5, zero, label36
	sh2add t4, a0, t3
	li t5, 1
	addiw a0, a0, 1
	sw t5, 0(t4)
	blt s0, a0, label37
	j label34
label36:
	xori t4, t4, 3
	sh2add t5, a0, t3
	sltiu t4, t4, 1
	addiw a0, a0, 1
	sw t4, 0(t5)
	blt s0, a0, label37
	j label34
label71:
	li s4, 1
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label75
	li a0, 1
	blt s1, a0, label79
	ble s0, zero, label15
label252:
	li a2, 2000
	li a3, 1
	mul a1, a0, a2
	mul a2, a0, a2
	add a1, s2, a1
	add a2, s3, a2
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	j label316
label75:
	li s3, 1
	blt s1, s3, label21
	ble s0, zero, label23
	li a0, 2000
	li s5, 1
	mul a0, s3, a0
	add s4, s2, a0
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	j label305
label316:
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	j label333
label214:
	mv t1, s3
	bne a0, zero, label212
	mv t1, s2
label212:
	addiw t2, a0, 1
	li a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a2, a5, a0
	mulw a1, a1, a0
	add a2, a4, a2
	mulw a0, a5, a0
	add a1, a4, a1
	addi a3, a2, 2000
	add t3, t1, a0
	blt s1, a5, label38
	li a0, 1
	blt s0, a0, label37
	j label34
label37:
	addiw a5, a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a2, a5, a0
	mulw a1, a1, a0
	add a2, a4, a2
	mulw a0, a5, a0
	add a1, a4, a1
	addi a3, a2, 2000
	add t3, t1, a0
	blt s1, a5, label38
	li a0, 1
	blt s0, a0, label37
	j label34
label38:
	addiw t0, t0, -1
	ble t0, zero, label191
	xori a0, t2, 1
	mv a4, s2
	sltiu a0, a0, 1
	bne a0, zero, label214
	mv a4, s3
	mv t1, s3
	bne a0, zero, label212
	mv t1, s2
	addiw t2, a0, 1
	li a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a2, a5, a0
	mulw a1, a1, a0
	add a2, s3, a2
	mulw a0, a5, a0
	add a1, s3, a1
	addi a3, a2, 2000
	add t3, s2, a0
	blt s1, a5, label38
	li a0, 1
	blt s0, a0, label37
	j label34
label191:
	mv s4, t2
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label75
	li a0, 1
	blt s1, a0, label79
	ble s0, zero, label15
	j label252
label231:
	li a2, 2000
	li a3, 1
	mul a1, a0, a2
	mul a2, a0, a2
	add a1, s2, a1
	add a2, s3, a2
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	j label333
label79:
	li s3, 1
	blt s1, s3, label21
	ble s0, zero, label23
	li a0, 2000
	li s5, 1
	mul a0, s3, a0
	add s4, s2, a0
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	j label305
label333:
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	j label350
label210:
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
label305:
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
label320:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
label354:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	j label354
label223:
	li a0, 2000
	li s6, 1
	mul a0, s3, a0
	add s5, s2, a0
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	j label326
label5:
	jal getch
	addiw s3, s3, 1
	blt s1, s3, label9
	ble s0, zero, label5
	j label223
label326:
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
label359:
	jal getch
	sh2add a1, s6, s5
	xori a0, a0, 35
	addiw s6, s6, 1
	sltiu a0, a0, 1
	sw a0, 0(a1)
	blt s0, s6, label5
	j label359
label350:
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
label365:
	sh2add a4, a3, a2
	sh2add a5, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	sw a4, 0(a5)
	blt s0, a3, label15
	j label365
label21:
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
label23:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	blt s1, s3, label21
	ble s0, zero, label23
	li a0, 2000
	li s5, 1
	mul a0, s3, a0
	add s4, s2, a0
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label210
	j label320
label15:
	addiw a0, a0, 1
	blt s1, a0, label79
	ble s0, zero, label15
	j label231
