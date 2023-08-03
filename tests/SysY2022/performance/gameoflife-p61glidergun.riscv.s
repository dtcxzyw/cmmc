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
	addi sp, sp, -104
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
	sd s11, 88(sp)
	sd s10, 96(sp)
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
	blt s2, s7, label12
.p2align 2
label5:
	bgt s0, zero, label6
.p2align 2
label11:
	jal getch
	addi s5, s5, 2000
	addiw s7, s7, 1
	bge s2, s7, label5
label12:
	li a0, 95
	jal _sysy_starttime
pcrel288:
	auipc a1, %pcrel_hi(sheet2)
	addi s5, a1, %pcrel_lo(pcrel288)
	ble s6, zero, label89
	mv a5, s6
	mv t0, s1
	j label40
label13:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s4, a1, label27
	j label15
.p2align 2
label40:
	xori a0, t0, 1
	mv a3, s3
	sltiu a1, a0, 1
	bne a1, zero, label242
	mv a3, s5
.p2align 2
label242:
	mv a4, s5
	bne a1, zero, label244
	mv a4, s3
.p2align 2
label244:
	addiw t0, a1, 1
	addi a0, a3, 2000
	mv t2, s1
	addiw t1, s1, -1
	addi a2, a0, 2000
	mulw t4, s1, s4
	mulw t3, t1, s4
	addiw t1, s1, 1
	add a1, a3, t3
	add t3, a4, t4
	bge s2, s1, label47
	j label46
label158:
	mv s4, t0
	j label13
.p2align 2
label47:
	addi t5, a1, 4
	addi t4, a2, 4
	addi t6, a0, 4
	addi t2, t3, 4
	mv t3, t6
	mv t6, s1
	blt s0, s1, label54
.p2align 2
label55:
	addiw a6, t6, -1
	addiw t6, t6, 1
	sh2add s7, a6, a1
	lw a7, 0(s7)
	lw s8, 0(t5)
	lw s9, 4(t5)
	addw s6, a7, s8
	sh2add a7, a6, a0
	addw s7, s6, s9
	lw s11, 0(a7)
	lw s10, 8(a7)
	addw s8, s7, s11
	sh2add s7, a6, a2
	addw s6, s8, s10
	lw s9, 0(s7)
	lw a6, 0(t4)
	addw a7, s6, s9
	lw s6, 4(t4)
	addw s7, a7, a6
	lw s8, 0(t3)
	addw a6, s7, s6
	xori s7, s8, 1
	xori a7, a6, 2
	or s6, a7, s7
	beq s6, zero, label56
	xori a7, a6, 3
	addi t5, t5, 4
	addi t4, t4, 4
	addi t3, t3, 4
	sltiu s6, a7, 1
	sw s6, 0(t2)
	addi t2, t2, 4
	bge s0, t6, label55
	j label267
.p2align 2
label56:
	sw s1, 0(t2)
	addi t5, t5, 4
	addi t4, t4, 4
	addi t3, t3, 4
	addi t2, t2, 4
	bge s0, t6, label55
	addi a0, a0, 2000
	mv t2, t1
	addi a2, a0, 2000
	mulw t4, t1, s4
	addiw t1, t1, -1
	mulw t3, t1, s4
	addiw t1, t2, 1
	add a1, a3, t3
	add t3, a4, t4
	bge s2, t2, label47
	addiw a5, a5, -1
	bgt a5, zero, label40
	j label158
.p2align 2
label6:
	addi s8, s5, 4
	mv s9, s1
.p2align 2
label7:
	jal getch
	addiw s9, s9, 1
	xori a1, a0, 35
	sltiu a2, a1, 1
	sw a2, 0(s8)
	blt s0, s9, label11
	addi s8, s8, 4
	j label7
.p2align 2
label54:
	addi a0, a0, 2000
	mv t2, t1
	addi a2, a0, 2000
	mulw t4, t1, s4
	addiw t1, t1, -1
	mulw t3, t1, s4
	addiw t1, t2, 1
	add a1, a3, t3
	add t3, a4, t4
	bge s2, t2, label47
	addiw a5, a5, -1
	bgt a5, zero, label40
	j label158
.p2align 2
label267:
	addi a0, a0, 2000
	mv t2, t1
	addi a2, a0, 2000
	mulw t4, t1, s4
	addiw t1, t1, -1
	mulw t3, t1, s4
	addiw t1, t2, 1
	add a1, a3, t3
	add t3, a4, t4
	bge s2, t2, label47
	addiw a5, a5, -1
	bgt a5, zero, label40
	j label158
label15:
	addi s3, s3, 2000
	mv s4, s1
	blt s2, s1, label19
.p2align 2
label20:
	bgt s0, zero, label22
.p2align 2
label21:
	li a0, 10
	jal putch
	addi s3, s3, 2000
	addiw s4, s4, 1
	bge s2, s4, label20
	j label19
.p2align 2
label22:
	addi s5, s3, 4
	mv s6, s1
	lw a1, 0(s5)
	li a0, 35
	beq a1, s1, label240
.p2align 2
label239:
	li a0, 46
.p2align 2
label240:
	jal putch
	addiw s6, s6, 1
	blt s0, s6, label21
	addi s5, s5, 4
	li a0, 35
	lw a1, 0(s5)
	beq a1, s1, label240
	j label239
label46:
	addiw a5, a5, -1
	bgt a5, zero, label40
	j label158
label19:
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
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
label27:
	addi a1, s5, 2000
	addi a0, s3, 2000
	mv a2, s1
	blt s2, s1, label15
.p2align 2
label33:
	ble s0, zero, label34
	addi a3, a1, 4
	mv a4, s1
	j label36
.p2align 2
label135:
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	bge s2, a2, label33
	j label15
.p2align 2
label36:
	lw a5, 0(a3)
	sh2add t0, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t0)
	blt s0, a4, label135
	addi a3, a3, 4
	j label36
label34:
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	bge s2, a2, label33
	j label15
label89:
	mv s4, s1
	j label13
