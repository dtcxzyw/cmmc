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
pcrel398:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel398)
	li s3, 1
	bgt s3, s1, label9
	ble s0, zero, label5
	j label224
label9:
	li a0, 95
	jal _sysy_starttime
pcrel399:
	auipc a0, %pcrel_hi(sheet2)
	addi s3, a0, %pcrel_lo(pcrel399)
	ble s4, zero, label72
	mv t1, s4
	li t3, 1
	xori a0, t3, 1
	sltiu a0, a0, 1
	mv a4, s2
	bne a0, zero, label215
	mv a4, s3
	mv t2, s3
	bne a0, zero, label213
	mv t2, s2
	li t3, 2
	bne a0, zero, label211
	li t3, 1
	li a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a1, a1, a0
	add a1, s3, a1
	mulw a2, a5, a0
	add a2, s3, a2
	addi a3, a2, 2000
	mulw a0, a5, a0
	add t4, s2, a0
	bgt a5, s1, label39
	li a0, 1
	bgt a0, s0, label38
	j label34
label215:
	mv t2, s3
	bne a0, zero, label213
	mv t2, s2
label213:
	li t3, 2
	bne a0, zero, label211
	li t3, 1
label211:
	li a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a1, a1, a0
	add a1, a4, a1
	mulw a2, a5, a0
	add a2, a4, a2
	addi a3, a2, 2000
	mulw a0, a5, a0
	add t4, t2, a0
	bgt a5, s1, label39
	li a0, 1
	bgt a0, s0, label38
	j label34
label39:
	addiw t1, t1, -1
	ble t1, zero, label190
	xori a0, t3, 1
	sltiu a0, a0, 1
	mv a4, s2
	bne a0, zero, label215
	mv a4, s3
	mv t2, s3
	bne a0, zero, label213
	mv t2, s2
	li t3, 2
	bne a0, zero, label211
	li t3, 1
	li a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a1, a1, a0
	add a1, s3, a1
	mulw a2, a5, a0
	add a2, s3, a2
	addi a3, a2, 2000
	mulw a0, a5, a0
	add t4, s2, a0
	bgt a5, s1, label39
	li a0, 1
	bgt a0, s0, label38
	j label34
label72:
	li s4, 1
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label76
	li a0, 1
	bgt a0, s1, label80
	ble s0, zero, label15
	j label252
label34:
	addiw t5, a0, -1
	sh2add t6, t5, a1
	lw a6, 0(t6)
	sh2add t6, a0, a1
	lw a7, 0(t6)
	addw a6, a6, a7
	lw t6, 4(t6)
	addw a6, a6, t6
	sh2add t6, t5, a2
	lw a7, 0(t6)
	addw a6, a6, a7
	lw t6, 8(t6)
	addw t6, a6, t6
	sh2add t5, t5, a3
	lw t5, 0(t5)
	addw t6, t6, t5
	sh2add t5, a0, a3
	lw a6, 0(t5)
	addw t6, t6, a6
	lw t5, 4(t5)
	addw t5, t6, t5
	xori t6, t5, 2
	sh2add a6, a0, a2
	lw a6, 0(a6)
	xori a6, a6, 1
	or t6, t6, a6
	bne t6, zero, label35
	sh2add t5, a0, t4
	li t6, 1
	sw t6, 0(t5)
	addiw a0, a0, 1
	bgt a0, s0, label38
	j label34
label38:
	addiw a5, a5, 1
	addiw a1, a5, -1
	li a0, 2000
	mulw a1, a1, a0
	add a1, a4, a1
	mulw a2, a5, a0
	add a2, a4, a2
	addi a3, a2, 2000
	mulw a0, a5, a0
	add t4, t2, a0
	bgt a5, s1, label39
	li a0, 1
	bgt a0, s0, label38
	j label34
label252:
	li a2, 2000
	mul a1, a0, a2
	add a1, s2, a1
	mul a2, a0, a2
	add a2, s3, a2
	li a3, 1
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	j label318
label76:
	li s3, 1
	bgt s3, s1, label21
	ble s0, zero, label23
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	j label306
label80:
	li s3, 1
	bgt s3, s1, label21
	ble s0, zero, label23
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	j label306
label318:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	j label333
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
label306:
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	j label322
label190:
	mv s4, t3
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label76
	li a0, 1
	bgt a0, s1, label80
	ble s0, zero, label15
	j label252
label35:
	xori t5, t5, 3
	sltiu t5, t5, 1
	sh2add t6, a0, t4
	sw t5, 0(t6)
	addiw a0, a0, 1
	bgt a0, s0, label38
	j label34
label209:
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	j label306
label337:
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	j label352
label224:
	li a0, 2000
	mul a0, s3, a0
	add s5, s2, a0
	li s6, 1
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	j label327
label5:
	jal getch
	addiw s3, s3, 1
	bgt s3, s1, label9
	ble s0, zero, label5
	j label224
label327:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
label358:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	j label358
label232:
	li a2, 2000
	mul a1, a0, a2
	add a1, s2, a1
	mul a2, a0, a2
	add a2, s3, a2
	li a3, 1
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	j label333
label15:
	addiw a0, a0, 1
	bgt a0, s1, label80
	ble s0, zero, label15
	j label232
label333:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
label365:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label15
	j label365
label352:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	j label352
label322:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	j label337
label23:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s3, s1, label21
	ble s0, zero, label23
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label23
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label209
	j label322
