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
pcrel288:
	auipc a1, %pcrel_hi(sheet1)
	mv s1, s7
	addi s3, a1, %pcrel_lo(pcrel288)
	addi s5, s3, 2000
	blt s2, s7, label12
.p2align 2
label5:
	ble s0, zero, label11
	addi s8, s5, 4
	mv s9, s1
	j label7
.p2align 2
label11:
	jal getch
	addi s5, s5, 2000
	addiw s7, s7, 1
	bge s2, s7, label5
label12:
	li a0, 95
	jal _sysy_starttime
pcrel289:
	auipc a1, %pcrel_hi(sheet2)
	addi s5, a1, %pcrel_lo(pcrel289)
	ble s6, zero, label89
	mv t0, s6
	mv t1, s1
.p2align 2
label13:
	xori a0, t1, 1
	mv a4, s3
	sltiu a1, a0, 1
	bne a1, zero, label244
	mv a4, s5
.p2align 2
label244:
	mv a5, s5
	bne a1, zero, label246
	mv a5, s3
.p2align 2
label246:
	addiw t1, a1, 1
	addi a0, a4, 2000
	mv a3, s1
	bge s2, s1, label20
	j label19
label104:
	mv s4, t1
	j label31
.p2align 2
label22:
	addiw t5, t4, -1
	sh2add s8, t5, a1
	sh2add a7, t5, a2
	lw t6, 0(a7)
	lw a6, 0(t3)
	lw s6, 4(t3)
	addw a7, t6, a6
	sh2add t6, t5, a0
	addw a6, a7, s6
	sh2add t5, t4, a1
	lw a7, 0(t6)
	lw s7, 8(t6)
	addw s6, a6, a7
	lw t6, 0(s8)
	addw a7, s6, s7
	addw a6, a7, t6
	lw t6, 0(t5)
	lw s6, 4(t5)
	addw a7, a6, t6
	sh2add t5, t4, a0
	addw t6, a7, s6
	lw s6, 0(t5)
	xori a6, t6, 2
	addiw t5, t4, 1
	xori s7, s6, 1
	or a7, a6, s7
	beq a7, zero, label29
	j label25
.p2align 2
label28:
	addi t3, t3, 4
	mv t4, t5
	j label22
.p2align 2
label29:
	sh2add t6, t4, a3
	sw s1, 0(t6)
	bge s0, t5, label28
	addi a0, a0, 2000
	mv a3, t2
	bge s2, t2, label20
	addiw t0, t0, -1
	bgt t0, zero, label13
	j label104
label31:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	bne s4, a1, label33
	addi a1, s5, 2000
	addi a0, s3, 2000
	mv a2, s1
label46:
	bge s2, a2, label51
	j label33
.p2align 2
label20:
	addiw t2, a3, 1
	addi a2, a0, -2000
	mulw t4, a3, s4
	mulw t3, t2, s4
	add a3, a5, t4
	add a1, a4, t3
	ble s0, zero, label113
	addi t3, a2, 4
	mv t4, s1
	j label22
.p2align 2
label25:
	xori a7, t6, 3
	sh2add t6, t4, a3
	sltiu a6, a7, 1
	sw a6, 0(t6)
	bge s0, t5, label28
	addi a0, a0, 2000
	mv a3, t2
	bge s2, t2, label20
	addiw t0, t0, -1
	bgt t0, zero, label13
	j label104
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
label51:
	ble s0, zero, label199
	addi a3, a1, 4
	mv a4, s1
.p2align 2
label53:
	lw a5, 0(a3)
	sh2add t0, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t0)
	bge s0, a4, label56
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	bge s2, a2, label51
	j label33
.p2align 2
label56:
	addi a3, a3, 4
	j label53
label33:
	addi s3, s3, 2000
	mv s4, s1
	blt s2, s1, label37
.p2align 2
label38:
	bgt s0, zero, label40
.p2align 2
label39:
	li a0, 10
	jal putch
	addi s3, s3, 2000
	addiw s4, s4, 1
	bge s2, s4, label38
	j label37
.p2align 2
label40:
	addi s5, s3, 4
	mv s6, s1
	lw a1, 0(s5)
	li a0, 35
	beq a1, s1, label248
.p2align 2
label247:
	li a0, 46
.p2align 2
label248:
	jal putch
	addiw s6, s6, 1
	blt s0, s6, label39
	addi s5, s5, 4
	li a0, 35
	lw a1, 0(s5)
	beq a1, s1, label248
	j label247
label19:
	addiw t0, t0, -1
	bgt t0, zero, label13
	j label104
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
.p2align 2
label113:
	addi a0, a0, 2000
	mv a3, t2
	bge s2, t2, label20
	j label19
label89:
	mv s4, s1
	j label31
label199:
	addiw a2, a2, 1
	addi a1, a1, 2000
	addi a0, a0, 2000
	j label46
