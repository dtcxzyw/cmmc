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
pcrel389:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel389)
	li s3, 1
	bgt s3, s1, label9
	ble s0, zero, label5
	j label224
label9:
	li a0, 95
	jal _sysy_starttime
pcrel390:
	auipc a0, %pcrel_hi(sheet2)
	addi s3, a0, %pcrel_lo(pcrel390)
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
	bgt a5, s1, label22
	li a0, 1
	bgt a0, s0, label21
label17:
	addiw t5, a0, -1
	slli t6, t5, 2
	add t6, a1, t6
	lw t6, 0(t6)
	slli a6, a0, 2
	add a6, a1, a6
	lw a7, 0(a6)
	addw t6, t6, a7
	lw a6, 4(a6)
	addw t6, t6, a6
	slli a6, t5, 2
	add a6, a2, a6
	lw a7, 0(a6)
	addw t6, t6, a7
	lw a6, 8(a6)
	addw t6, t6, a6
	slli t5, t5, 2
	add t5, a3, t5
	lw t5, 0(t5)
	addw t5, t6, t5
	slli t6, a0, 2
	add t6, a3, t6
	lw a6, 0(t6)
	addw t5, t5, a6
	lw t6, 4(t6)
	addw t5, t5, t6
	xori t6, t5, 2
	slli a6, a0, 2
	add a6, a2, a6
	lw a6, 0(a6)
	xori a6, a6, 1
	or t6, t6, a6
	bne t6, zero, label18
	slli t5, a0, 2
	add t5, t4, t5
	li t6, 1
	sw t6, 0(t5)
	addiw a0, a0, 1
	bgt a0, s0, label21
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
	bgt a5, s1, label22
	li a0, 1
	bgt a0, s0, label21
	j label17
label72:
	li s4, 1
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label148
	li a0, 1
	bgt a0, s1, label152
	ble s0, zero, label28
	li a2, 2000
	mul a1, a0, a2
	add a1, s2, a1
	mul a2, a0, a2
	add a2, s3, a2
	li a3, 1
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	j label302
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
	bgt a5, s1, label22
	li a0, 1
	bgt a0, s0, label21
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
	bgt a5, s1, label22
	li a0, 1
	bgt a0, s0, label21
	j label17
label302:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	j label317
label144:
	mv s4, t3
	li a0, 106
	jal _sysy_stoptime
	li a0, 2
	bne s4, a0, label148
	li a0, 1
	bgt a0, s1, label152
	ble s0, zero, label28
	li a2, 2000
	mul a1, a0, a2
	add a1, s2, a1
	mul a2, a0, a2
	add a2, s3, a2
	li a3, 1
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	j label317
label148:
	li s3, 1
	bgt s3, s1, label34
	ble s0, zero, label36
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	j label305
label317:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	j label330
label18:
	xori t5, t5, 3
	sltiu t5, t5, 1
	slli t6, a0, 2
	add t6, t4, t6
	sw t5, 0(t6)
	addiw a0, a0, 1
	bgt a0, s0, label21
	j label17
label152:
	li s3, 1
	bgt s3, s1, label34
	ble s0, zero, label36
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
label305:
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
label320:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
label348:
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	j label348
label224:
	li a0, 2000
	mul a0, s3, a0
	add s5, s2, a0
	li s6, 1
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	j label323
label5:
	jal getch
	addiw s3, s3, 1
	bgt s3, s1, label9
	ble s0, zero, label5
	j label224
label323:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
label352:
	jal getch
	xori a0, a0, 35
	sltiu a0, a0, 1
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bgt s6, s0, label5
	j label352
label211:
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	j label305
label238:
	li a2, 2000
	mul a1, a0, a2
	add a1, s2, a1
	mul a2, a0, a2
	add a2, s3, a2
	li a3, 1
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	j label330
label28:
	addiw a0, a0, 1
	bgt a0, s1, label152
	ble s0, zero, label28
	j label238
label330:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
label362:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	slli a5, a3, 2
	add a5, a1, a5
	sw a4, 0(a5)
	addiw a3, a3, 1
	bgt a3, s0, label28
	j label362
label36:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s3, s1, label34
	ble s0, zero, label36
	li a0, 2000
	mul a0, s3, a0
	add s4, s2, a0
	li s5, 1
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	li a0, 46
	jal putch
	addiw s5, s5, 1
	bgt s5, s0, label36
	slli a0, s5, 2
	add a0, s4, a0
	lw a0, 0(a0)
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 35
	bne a1, zero, label211
	j label320
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
