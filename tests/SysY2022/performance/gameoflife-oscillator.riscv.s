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
pcrel277:
	auipc a1, %pcrel_hi(sheet1)
	mv s1, s7
	addi s3, a1, %pcrel_lo(pcrel277)
	addi s5, s3, 2000
	bge s2, s7, label52
	j label5
.p2align 2
label57:
	addi s8, s8, 4
.p2align 2
label54:
	jal getch
	addiw s9, s9, 1
	xori a2, a0, 35
	sltiu a1, a2, 1
	sw a1, 0(s8)
	bge s0, s9, label57
.p2align 2
label58:
	jal getch
	addi s5, s5, 2000
	addiw s7, s7, 1
	blt s2, s7, label5
.p2align 2
label52:
	ble s0, zero, label58
	addi s8, s5, 4
	mv s9, s1
	j label54
label5:
	li a0, 95
	jal _sysy_starttime
pcrel278:
	auipc a1, %pcrel_hi(sheet2)
	addi s5, a1, %pcrel_lo(pcrel278)
	ble s6, zero, label74
	mv a3, s6
	mv a4, s1
	j label7
.p2align 2
label252:
	addi a5, a5, 2000
	bge s2, t0, label14
	addiw a3, a3, -1
	ble a3, zero, label89
.p2align 2
label7:
	xori a2, a4, 1
	mv a1, s3
	sltiu a0, a2, 1
	bne a0, zero, label234
	mv a1, s5
.p2align 2
label234:
	addi a5, a1, 2000
	mv a2, s5
	bne a0, zero, label236
	mv a2, s3
.p2align 2
label236:
	addiw a4, a0, 1
	mv t0, s1
	bge s2, s1, label14
label13:
	addiw a3, a3, -1
	bgt a3, zero, label7
	j label89
.p2align 2
label24:
	sh2add t3, t1, a1
	sw s1, 0(t3)
	blt s0, t2, label252
.p2align 2
label22:
	addi a0, a0, 4
	mv t1, t2
.p2align 2
label17:
	lw t3, -2004(a0)
	lw t5, -2000(a0)
	lw t6, -1996(a0)
	addw t2, t3, t5
	lw a6, -4(a0)
	addw t4, t2, t6
	lw t5, 4(a0)
	addw t3, t4, a6
	lw a6, 1996(a0)
	addw t6, t3, t5
	lw t4, 2000(a0)
	addw t2, t6, a6
	lw t6, 2004(a0)
	addw t5, t2, t4
	lw a6, 0(a0)
	addiw t2, t1, 1
	addw t3, t5, t6
	xori t6, a6, 1
	xori t4, t3, 2
	or t5, t4, t6
	beq t5, zero, label24
	xori t5, t3, 3
	sh2add t6, t1, a1
	sltiu t4, t5, 1
	sw t4, 0(t6)
	bge s0, t2, label22
	addi a5, a5, 2000
	blt s2, t0, label257
.p2align 2
label14:
	mulw a0, t0, s4
	addiw t0, t0, 1
	add a1, a2, a0
	ble s0, zero, label15
	addi a0, a5, 4
	mv t1, s1
	j label17
.p2align 2
label15:
	addi a5, a5, 2000
	bge s2, t0, label14
	j label13
label89:
	mv s4, a4
label25:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s4, a1, label38
label146:
	addi s3, s3, 2000
	mv s4, s1
	bge s2, s1, label30
	j label37
.p2align 2
label36:
	li a0, 10
	jal putch
	addi s3, s3, 2000
	addiw s4, s4, 1
	blt s2, s4, label37
.p2align 2
label30:
	ble s0, zero, label36
	addi s5, s3, 4
	mv s6, s1
	lw a1, 0(s5)
	li a0, 35
	beq a1, s1, label238
.p2align 2
label237:
	li a0, 46
.p2align 2
label238:
	jal putch
	addiw s6, s6, 1
	blt s0, s6, label36
	addi s5, s5, 4
	li a0, 35
	lw a1, 0(s5)
	beq a1, s1, label238
	j label237
label37:
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
label38:
	addi a1, s5, 2000
	addi a0, s3, 2000
	mv a2, s1
label39:
	bge s2, a2, label44
	j label146
.p2align 2
label49:
	addi a3, a3, 4
.p2align 2
label46:
	sh2add a5, a4, a0
	lw t0, 0(a3)
	addiw a4, a4, 1
	sw t0, 0(a5)
	bge s0, a4, label49
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	blt s2, a2, label146
.p2align 2
label44:
	ble s0, zero, label175
	addi a3, a1, 4
	mv a4, s1
	j label46
.p2align 2
label257:
	addiw a3, a3, -1
	bgt a3, zero, label7
	j label89
label74:
	mv s4, s1
	j label25
label175:
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	j label39
