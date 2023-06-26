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
	addi sp, sp, -72
	sd s2, 64(sp)
	sd s3, 56(sp)
	sd s4, 48(sp)
	sd s0, 40(sp)
	sd s5, 32(sp)
	sd s1, 24(sp)
	sd s6, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	jal getint
	mv s4, a0
	jal getch
pcrel380:
	auipc a0, %pcrel_hi(sheet1)
	addi s0, a0, %pcrel_lo(pcrel380)
	li s1, 1
	bgt s1, s3, label4
	ble s2, zero, label39
	j label232
label4:
	li a0, 95
	jal _sysy_starttime
pcrel381:
	auipc a0, %pcrel_hi(sheet2)
	addi s1, a0, %pcrel_lo(pcrel381)
	ble s4, zero, label58
	mv a0, s4
	li a2, 1
	xori a1, a2, 1
	sltiu a4, a1, 1
	mv a1, s0
	bne a4, zero, label222
	mv a1, s1
	mv a3, s1
	bne a4, zero, label220
	mv a3, s0
	li a2, 2
	bne a4, zero, label216
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
	bgt a4, s3, label20
	li t4, 1
	bgt t4, s2, label12
	j label13
label58:
	li s4, 1
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label135
	li a0, 1
	bgt a0, s3, label159
	ble s2, zero, label37
	li a1, 2000
	mul a2, a0, a1
	add a2, s0, a2
	mul a1, a0, a1
	add a3, s1, a1
	li a1, 1
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	j label307
label222:
	mv a3, s1
	bne a4, zero, label220
	mv a3, s0
label220:
	li a2, 2
	bne a4, zero, label216
	li a2, 1
label216:
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
	bgt a4, s3, label20
	li t4, 1
	bgt t4, s2, label12
	j label13
label12:
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
	bgt a4, s3, label20
	li t4, 1
	bgt t4, s2, label12
label13:
	addiw a7, t4, -1
	slli t5, a7, 2
	add t5, a5, t5
	lw t5, 0(t5)
	slli t6, t4, 2
	add a6, a5, t6
	lw t6, 0(a6)
	lw a6, 4(a6)
	slli s4, a7, 2
	add s5, t1, s4
	lw s4, 0(s5)
	lw s5, 8(s5)
	slli a7, a7, 2
	add a7, t2, a7
	lw a7, 0(a7)
	slli s6, t4, 2
	add s6, t2, s6
	lw s7, 0(s6)
	lw s6, 4(s6)
	addw t5, t5, t6
	addw t5, t5, a6
	addw t5, t5, s4
	addw t5, t5, s5
	addw t5, t5, a7
	addw t5, t5, s7
	addw t5, t5, s6
	slli t6, t4, 2
	add t6, t1, t6
	lw t6, 0(t6)
	li a6, 1
	bne t6, a6, label115
	xori t6, t5, 2
	sltiu t6, t6, 1
	beq t6, zero, label18
	slli t5, t4, 2
	add t5, t3, t5
	li t6, 1
	sw t6, 0(t5)
	addiw t4, t4, 1
	bgt t4, s2, label12
	j label13
label115:
	mv t6, zero
label18:
	xori t5, t5, 3
	sltiu t5, t5, 1
	slli t6, t4, 2
	add t6, t3, t6
	sw t5, 0(t6)
	addiw t4, t4, 1
	bgt t4, s2, label12
	j label13
label20:
	addiw a0, a0, -1
	ble a0, zero, label131
	xori a1, a2, 1
	sltiu a4, a1, 1
	mv a1, s0
	bne a4, zero, label222
	mv a1, s1
	mv a3, s1
	bne a4, zero, label220
	mv a3, s0
	li a2, 2
	bne a4, zero, label216
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
	bgt a4, s3, label20
	li t4, 1
	bgt t4, s2, label12
	j label13
label307:
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	j label319
label131:
	mv s4, a2
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label135
	li a0, 1
	bgt a0, s3, label159
	ble s2, zero, label37
	li a1, 2000
	mul a2, a0, a1
	add a2, s0, a2
	mul a1, a0, a1
	add a3, s1, a1
	li a1, 1
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	j label319
label135:
	li s1, 1
	bgt s1, s3, label25
	ble s2, zero, label27
	j label243
label159:
	li s1, 1
	bgt s1, s3, label25
	ble s2, zero, label27
	j label243
label319:
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	j label330
label232:
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
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
label359:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bgt s5, s2, label39
	j label359
label243:
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
	bne a1, zero, label218
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	j label316
label27:
	li a0, 10
	jal putch
	addiw s1, s1, 1
	bgt s1, s3, label25
	ble s2, zero, label27
	j label243
label218:
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
label316:
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	j label340
label247:
	li a1, 2000
	mul a2, a0, a1
	add a2, s0, a2
	mul a1, a0, a1
	add a3, s1, a1
	li a1, 1
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
label330:
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	j label343
label37:
	addiw a0, a0, 1
	bgt a0, s3, label159
	ble s2, zero, label37
	j label247
label343:
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
label357:
	slli a4, a1, 2
	add a4, a2, a4
	slli a5, a1, 2
	add a5, a3, a5
	lw a5, 0(a5)
	sw a5, 0(a4)
	addiw a1, a1, 1
	bgt a1, s2, label37
	j label357
label340:
	li a0, 46
	jal putch
	addiw s4, s4, 1
	bgt s4, s2, label27
	slli a0, s4, 2
	add a0, s5, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label218
	j label340
label39:
	jal getch
	addiw s1, s1, 1
	bgt s1, s3, label4
	ble s2, zero, label39
	j label232
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	addi sp, sp, 72
	ret
