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
.p2align 2
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
pcrel251:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel251)
	bge s1, s3, label31
label4:
	li a0, 95
	jal _sysy_starttime
pcrel252:
	auipc a1, %pcrel_hi(sheet2)
	addi s3, a1, %pcrel_lo(pcrel252)
	bgt s4, zero, label50
	li s4, 1
	j label16
label50:
	mv a0, s4
	li a1, 1
	j label5
label16:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s4, a1, label127
	li s3, 1
	bge s1, s3, label21
	j label20
.p2align 2
label127:
	li a0, 1
	bge s1, a0, label27
	li s3, 1
	bge s1, s3, label21
	j label20
.p2align 2
label31:
	li a1, 2000
	mul a0, s3, a1
	add s5, s2, a0
	ble s0, zero, label32
	li s6, 1
	j label33
.p2align 2
label32:
	jal getch
	addiw s3, s3, 1
	bge s1, s3, label31
	j label4
.p2align 2
label33:
	jal getch
	sh2add a1, s6, s5
	xori a2, a0, 35
	addiw s6, s6, 1
	sltiu a0, a2, 1
	sw a0, 0(a1)
	bge s0, s6, label33
	j label32
.p2align 2
label5:
	xori a3, a1, 1
	mv a2, s2
	sltiu a1, a3, 1
	bne a1, zero, label212
	mv a2, s3
.p2align 2
label212:
	mv a3, s3
	bne a1, zero, label214
	mv a3, s2
.p2align 2
label214:
	addiw a1, a1, 1
	li t3, 1
	addiw a4, t3, -1
	li a5, 2000
	mulw t1, t3, a5
	mulw t0, a4, a5
	add t2, a3, t1
	add a5, a2, t1
	add a4, a2, t0
	addiw t1, t3, 1
	addi t0, a5, 2000
	bge s1, t3, label68
	addiw a0, a0, -1
	bgt a0, zero, label5
.p2align 2
label225:
	mv s4, a1
	j label16
.p2align 2
label68:
	li t3, 1
	bge s0, t3, label12
.p2align 2
label71:
	mv t3, t1
	addiw a4, t1, -1
	li a5, 2000
	mulw t1, t1, a5
	mulw t0, a4, a5
	add t2, a3, t1
	add a5, a2, t1
	add a4, a2, t0
	addiw t1, t3, 1
	addi t0, a5, 2000
	bge s1, t3, label68
	addiw a0, a0, -1
	bgt a0, zero, label5
	j label225
.p2align 2
label12:
	addiw t4, t3, -1
	sh2add t5, t3, a4
	sh2add a6, t4, a4
	lw t6, 0(a6)
	lw a7, 0(t5)
	addw a6, t6, a7
	lw a7, 4(t5)
	sh2add t5, t4, a5
	addw t6, a6, a7
	sh2add t4, t4, t0
	lw a7, 0(t5)
	lw a6, 8(t5)
	addw t6, t6, a7
	addw t5, t6, a6
	lw t6, 0(t4)
	sh2add t4, t3, t0
	addw t5, t5, t6
	lw t6, 0(t4)
	lw a6, 4(t4)
	addw t5, t5, t6
	sh2add t6, t3, a5
	addw t4, t5, a6
	lw a7, 0(t6)
	xori t5, t4, 2
	xori a6, a7, 1
	or t6, t5, a6
	addiw t5, t3, 1
	beq t6, zero, label14
	xori t6, t4, 3
	sh2add a6, t3, t2
	sltiu t4, t6, 1
	mv t3, t5
	sw t4, 0(a6)
	bge s0, t5, label12
	j label71
.p2align 2
label14:
	sh2add t4, t3, t2
	li t6, 1
	mv t3, t5
	sw t6, 0(t4)
	bge s0, t5, label12
	j label71
.p2align 2
label21:
	li a1, 2000
	mul a0, s3, a1
	add s4, s2, a0
	ble s0, zero, label24
	li s5, 1
	j label22
.p2align 2
label24:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bge s1, s3, label21
	j label20
.p2align 2
label22:
	sh2add a1, s5, s4
	li a2, 1
	lw a0, 0(a1)
	li a1, 35
	beq a0, a2, label216
	li a1, 46
.p2align 2
label216:
	mv a0, a1
	jal putch
	addiw s5, s5, 1
	bge s0, s5, label22
	j label24
.p2align 2
label27:
	li a2, 2000
	mul a3, a0, a2
	add a2, s2, a3
	add a1, s3, a3
	bgt s0, zero, label158
	addiw a0, a0, 1
	bge s1, a0, label27
	li s3, 1
	bge s1, s3, label21
	j label20
.p2align 2
label158:
	li a3, 1
	sh2add a5, a3, a1
	sh2add t0, a3, a2
	lw a4, 0(a5)
	addiw a3, a3, 1
	sw a4, 0(t0)
	bge s0, a3, label29
	addiw a0, a0, 1
	bge s1, a0, label27
	li s3, 1
	bge s1, s3, label21
label20:
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
.p2align 2
label29:
	sh2add a5, a3, a1
	sh2add t0, a3, a2
	lw a4, 0(a5)
	addiw a3, a3, 1
	sw a4, 0(t0)
	bge s0, a3, label29
	addiw a0, a0, 1
	bge s1, a0, label27
	li s3, 1
	bge s1, s3, label21
	j label20
