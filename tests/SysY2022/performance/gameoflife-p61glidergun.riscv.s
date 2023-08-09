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
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s3, 48(sp)
	sd s7, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s2, a0
	jal getint
	mv s6, a0
	jal getch
	li s4, 2000
	li s7, 1
pcrel287:
	auipc a1, %pcrel_hi(sheet1)
	mv s1, s7
	addi s3, a1, %pcrel_lo(pcrel287)
	addi s5, s3, 2000
	bge s2, s7, label52
	j label5
.p2align 2
label58:
	addi s8, s8, 4
.p2align 2
label55:
	jal getch
	addiw s9, s9, 1
	xori a2, a0, 35
	sltiu a1, a2, 1
	sw a1, 0(s8)
	bge s0, s9, label58
.p2align 2
label53:
	jal getch
	addi s5, s5, 2000
	addiw s7, s7, 1
	blt s2, s7, label5
.p2align 2
label52:
	ble s0, zero, label53
	addi s8, s5, 4
	mv s9, s1
	j label55
label5:
	li a0, 95
	jal _sysy_starttime
pcrel288:
	auipc a1, %pcrel_hi(sheet2)
	addi s5, a1, %pcrel_lo(pcrel288)
	ble s6, zero, label74
	mv a5, s6
	mv t0, s1
	j label34
.p2align 2
label270:
	addiw a5, a5, -1
	ble a5, zero, label136
.p2align 2
label34:
	xori a0, t0, 1
	mv a2, s3
	sltiu a1, a0, 1
	bne a1, zero, label246
	mv a2, s5
.p2align 2
label246:
	mv a4, s5
	bne a1, zero, label248
	mv a4, s3
.p2align 2
label248:
	addiw t0, a1, 1
	addi a0, a2, 2000
	mv t1, s1
	bge s2, s1, label41
label40:
	addiw a5, a5, -1
	bgt a5, zero, label34
	j label136
.p2align 2
label185:
	xori a7, t5, 3
	sh2add a6, t3, a3
	sltiu t6, a7, 1
	sw t6, 0(a6)
	blt s0, t4, label189
.p2align 2
label48:
	addi t2, t2, 4
	mv t3, t4
.p2align 2
label44:
	addiw t4, t3, -1
	sh2add a6, t4, a2
	lw t5, 0(a6)
	lw a7, 0(t2)
	lw s6, 4(t2)
	addw t6, t5, a7
	sh2add t5, t4, a0
	addw a6, t6, s6
	lw t6, 0(t5)
	lw s6, 8(t5)
	addw a7, a6, t6
	sh2add t5, t4, a1
	addw t6, a7, s6
	sh2add t4, t3, a1
	lw a7, 0(t5)
	lw t5, 0(t4)
	addw a6, t6, a7
	lw s6, 4(t4)
	addw a7, a6, t5
	sh2add t4, t3, a0
	addw t5, a7, s6
	lw s6, 0(t4)
	xori t6, t5, 2
	addiw t4, t3, 1
	xori a7, s6, 1
	or a6, t6, a7
	bne a6, zero, label185
	sh2add t5, t3, a3
	sw s1, 0(t5)
	bge s0, t4, label48
	addi a0, a0, 2000
	blt s2, t1, label270
.p2align 2
label41:
	addi a2, a0, -2000
	addi a1, a0, 2000
	mulw t2, t1, s4
	addiw t1, t1, 1
	add a3, a4, t2
	ble s0, zero, label42
	addi t2, a2, 4
	mv t3, s1
	j label44
.p2align 2
label42:
	addi a0, a0, 2000
	bge s2, t1, label41
	j label40
.p2align 2
label189:
	addi a0, a0, 2000
	bge s2, t1, label41
	addiw a5, a5, -1
	bgt a5, zero, label34
label136:
	mv s4, t0
label6:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s4, a1, label20
label8:
	addi s3, s3, 2000
	mv s4, s1
	bge s2, s1, label13
	j label12
.p2align 2
label19:
	li a0, 10
	jal putch
	addi s3, s3, 2000
	addiw s4, s4, 1
	blt s2, s4, label12
.p2align 2
label13:
	ble s0, zero, label19
	addi s5, s3, 4
	mv s6, s1
	lw a1, 0(s5)
	li a0, 35
	beq a1, s1, label244
.p2align 2
label243:
	li a0, 46
.p2align 2
label244:
	jal putch
	addiw s6, s6, 1
	blt s0, s6, label19
	addi s5, s5, 4
	li a0, 35
	lw a1, 0(s5)
	beq a1, s1, label244
	j label243
label12:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
label20:
	addi a1, s5, 2000
	addi a0, s3, 2000
	mv a2, s1
label21:
	bge s2, a2, label26
	j label8
.p2align 2
label31:
	addi a3, a3, 4
.p2align 2
label28:
	lw a5, 0(a3)
	sh2add t0, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t0)
	bge s0, a4, label31
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	blt s2, a2, label8
.p2align 2
label26:
	ble s0, zero, label108
	addi a3, a1, 4
	mv a4, s1
	j label28
label74:
	mv s4, s1
	j label6
label108:
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	j label21
