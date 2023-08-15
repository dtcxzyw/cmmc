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
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s2, a0
	jal getint
	mv s6, a0
	jal getch
	li s3, 2000
	li s1, 1
pcrel299:
	auipc a1, %pcrel_hi(sheet1)
	addi s4, a1, %pcrel_lo(pcrel299)
	ble s2, zero, label13
	addi s5, s4, 2000
	mv s7, s1
	bgt s0, zero, label6
	j label11
.p2align 2
label10:
	addi s8, s8, 4
.p2align 2
label7:
	jal getch
	addiw s9, s9, 1
	xori a1, a0, 35
	sltiu a2, a1, 1
	sw a2, 0(s8)
	bge s0, s9, label10
.p2align 2
label11:
	jal getch
	addiw s7, s7, 1
	blt s2, s7, label13
	addi s5, s5, 2000
	ble s0, zero, label11
.p2align 2
label6:
	addi s8, s5, 4
	mv s9, s1
	j label7
label13:
	li a0, 95
	jal _sysy_starttime
pcrel300:
	auipc a1, %pcrel_hi(sheet2)
	addi s5, a1, %pcrel_lo(pcrel300)
	ble s6, zero, label95
	mv a3, s6
	mv a4, s1
	j label42
.p2align 2
label274:
	addiw a3, a3, -1
	ble a3, zero, label279
.p2align 2
label42:
	xori a2, a4, 1
	mv a0, s4
	sltiu a1, a2, 1
	bne a1, zero, label249
	mv a0, s5
.p2align 2
label249:
	mv a2, s5
	bne a1, zero, label251
	mv a2, s4
.p2align 2
label251:
	addiw a4, a1, 1
	ble s2, zero, label59
	addi a5, a0, 2000
	mulw a0, s1, s3
	addiw t0, s1, 1
	add a1, a2, a0
	bgt s0, zero, label49
	bge s2, t0, label58
	j label210
.p2align 2
label269:
	blt s2, t0, label274
.p2align 2
label58:
	addi a5, a5, 2000
	mulw a0, t0, s3
	addiw t0, t0, 1
	add a1, a2, a0
	ble s0, zero, label272
.p2align 2
label49:
	addi a0, a5, 4
	mv t1, s1
	j label50
.p2align 2
label53:
	sh2add t4, t1, a1
	sw s1, 0(t4)
	blt s0, t2, label269
.p2align 2
label56:
	addi a0, a0, 4
	mv t1, t2
.p2align 2
label50:
	lw t2, -2004(a0)
	lw t5, -2000(a0)
	lw t6, -1996(a0)
	addw t3, t2, t5
	lw t5, -4(a0)
	addw t4, t3, t6
	lw t6, 4(a0)
	addw t2, t4, t5
	lw t5, 1996(a0)
	addw t3, t2, t6
	lw t6, 2000(a0)
	addw t4, t3, t5
	lw t5, 2004(a0)
	addw t2, t4, t6
	lw a6, 0(a0)
	addw t3, t2, t5
	xori t6, a6, 1
	addiw t2, t1, 1
	xori t4, t3, 2
	or t5, t4, t6
	beq t5, zero, label53
	xori t5, t3, 3
	sh2add t6, t1, a1
	sltiu t4, t5, 1
	sw t4, 0(t6)
	bge s0, t2, label56
	bge s2, t0, label58
	addiw a3, a3, -1
	bgt a3, zero, label42
	j label279
label59:
	addiw a3, a3, -1
	bgt a3, zero, label42
label279:
	mv s6, a4
label14:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	bne s6, a1, label17
	ble s2, zero, label16
	addi a0, s4, 2000
	mv a1, s1
	mul a3, s1, s3
	add a2, s5, a3
	bgt s0, zero, label36
	j label34
.p2align 2
label146:
	addiw a1, a1, 1
	blt s2, a1, label17
.p2align 2
label35:
	addi a0, a0, 2000
	mul a3, a1, s3
	add a2, s5, a3
	ble s0, zero, label34
.p2align 2
label36:
	addi a2, a2, 4
	mv a3, s1
.p2align 2
label37:
	sh2add a4, a3, a0
	lw a5, 0(a2)
	addiw a3, a3, 1
	sw a5, 0(a4)
	blt s0, a3, label146
	addi a2, a2, 4
	j label37
label17:
	ble s2, zero, label16
	addi s3, s4, 2000
	mv s4, s1
	bgt s0, zero, label22
.p2align 2
label27:
	li a0, 10
	jal putch
	addiw s4, s4, 1
	blt s2, s4, label16
	addi s3, s3, 2000
	ble s0, zero, label27
.p2align 2
label22:
	addi s5, s3, 4
	mv s6, s1
	lw a1, 0(s5)
	li a0, 35
	beq a1, s1, label247
.p2align 2
label246:
	li a0, 46
.p2align 2
label247:
	jal putch
	addiw s6, s6, 1
	blt s0, s6, label27
	addi s5, s5, 4
	li a0, 35
	lw a1, 0(s5)
	beq a1, s1, label247
	j label246
label16:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label272:
	bge s2, t0, label58
label210:
	addiw a3, a3, -1
	bgt a3, zero, label42
	j label279
label34:
	addiw a1, a1, 1
	bge s2, a1, label35
	j label17
label95:
	mv s6, s1
	j label14
