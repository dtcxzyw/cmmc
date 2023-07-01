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
pcrel401:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel401)
	li s3, 1
	blt s1, s3, label9
	ble s0, zero, label5
	j label224
label9:
	li a0, 95
	jal _sysy_starttime
pcrel402:
	auipc a0, %pcrel_hi(sheet2)
	addi s3, a0, %pcrel_lo(pcrel402)
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
	bne a0, zero, label209
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
	blt s1, a5, label22
	li a0, 1
	blt s0, a0, label21
	j label17
label72:
	li s4, 1
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label148
	li a0, 1
	blt s1, a0, label152
	ble s0, zero, label28
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
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label304
label215:
	mv t2, s3
	bne a0, zero, label213
	mv t2, s2
label213:
	li t3, 2
	bne a0, zero, label209
	li t3, 1
label209:
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
	blt s1, a5, label22
	li a0, 1
	blt s0, a0, label21
label17:
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
	bne t6, zero, label18
	sh2add t5, a0, t4
	li t6, 1
	sw t6, 0(t5)
	addiw a0, a0, 1
	blt s0, a0, label21
	j label17
label21:
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
	blt s1, a5, label22
	li a0, 1
	blt s0, a0, label21
	j label17
label22:
	addiw t1, t1, -1
	ble t1, zero, label144
	xori a0, t3, 1
	sltiu a0, a0, 1
	mv a4, s2
	bne a0, zero, label215
	mv a4, s3
	mv t2, s3
	bne a0, zero, label213
	mv t2, s2
	li t3, 2
	bne a0, zero, label209
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
	blt s1, a5, label22
	li a0, 1
	blt s0, a0, label21
	j label17
label144:
	mv s4, t3
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label148
	li a0, 1
	blt s1, a0, label152
	ble s0, zero, label28
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
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label321
label148:
	li s3, 1
	blt s1, s3, label34
	ble s0, zero, label36
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	j label308
label152:
	li s3, 1
	blt s1, s3, label34
	ble s0, zero, label36
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	j label308
label304:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
label321:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label336
label34:
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
label308:
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
label325:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	j label340
label18:
	xori t5, t5, 3
	sltiu t5, t5, 1
	sh2add t6, a0, t4
	sw t5, 0(t6)
	addiw a0, a0, 1
	blt s0, a0, label21
	j label17
label340:
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
label357:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	j label357
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
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	j label329
label5:
	jal getch
	addiw s3, s3, 1
	blt s1, s3, label9
	ble s0, zero, label5
	j label224
label329:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
label362:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	blt s0, s6, label5
	j label362
label211:
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	j label308
label238:
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
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
label336:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
label372:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	sh2add a5, a3, a1
	sw a4, 0(a5)
	addiw a3, a3, 1
	blt s0, a3, label28
	j label372
label36:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	blt s1, s3, label34
	ble s0, zero, label36
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	blt s0, s5, label36
	sh2add a0, s5, s4
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	j label325
label28:
	addiw a0, a0, 1
	blt s1, a0, label152
	ble s0, zero, label28
	j label238
