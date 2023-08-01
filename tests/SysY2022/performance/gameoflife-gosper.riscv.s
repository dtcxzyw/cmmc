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
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s4, a0
	jal getch
	li s5, 1
pcrel254:
	auipc a0, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel254)
	blt s1, s5, label8
.p2align 2
label4:
	li a0, 2000
	mul a1, s5, a0
	add s3, s2, a1
	ble s0, zero, label7
	li s6, 1
.p2align 2
label5:
	jal getch
	sh2add a1, s6, s3
	xori a2, a0, 35
	addiw s6, s6, 1
	sltiu a0, a2, 1
	sw a0, 0(a1)
	bge s0, s6, label5
.p2align 2
label7:
	jal getch
	addiw s5, s5, 1
	bge s1, s5, label4
label8:
	li a0, 95
	jal _sysy_starttime
pcrel255:
	auipc a1, %pcrel_hi(sheet2)
	addi s3, a1, %pcrel_lo(pcrel255)
	ble s4, zero, label66
	mv t0, s4
	li t1, 1
.p2align 2
label9:
	xori a1, t1, 1
	mv a4, s2
	sltiu a0, a1, 1
	bne a0, zero, label219
	j label218
label233:
	mv s4, t1
	j label20
.p2align 2
label234:
	addiw t0, t0, -1
	bgt t0, zero, label9
	j label233
label20:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s4, a1, label144
label143:
	li s4, 1
	j label22
label144:
	li a2, 1
	j label29
label22:
	bge s1, s4, label25
	j label24
label29:
	blt s1, a2, label143
.p2align 2
label31:
	li a1, 2000
	mul a3, a2, a1
	add a1, s2, a3
	add a0, s3, a3
	ble s0, zero, label174
	li a3, 1
.p2align 2
label32:
	sh2add t0, a3, a0
	sh2add a5, a3, a1
	lw a4, 0(t0)
	addiw a3, a3, 1
	sw a4, 0(a5)
	bge s0, a3, label32
	addiw a2, a2, 1
	bge s1, a2, label31
	j label143
.p2align 2
label25:
	li a1, 2000
	mul a0, s4, a1
	add s3, s2, a0
	bgt s0, zero, label153
	j label26
.p2align 2
label237:
	li a1, 46
	j label223
.p2align 2
label26:
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s1, s4, label25
	j label24
.p2align 2
label27:
	sh2add a1, s5, s3
	li a2, 1
	lw a0, 0(a1)
	li a1, 35
	beq a0, a2, label223
	li a1, 46
.p2align 2
label223:
	mv a0, a1
	jal putch
	addiw s5, s5, 1
	bge s0, s5, label27
	j label26
.p2align 2
label218:
	mv a4, s3
.p2align 2
label219:
	mv a5, s3
	bne a0, zero, label221
	mv a5, s2
.p2align 2
label221:
	addiw t1, a0, 1
	li t3, 1
	addiw a0, t3, -1
	li a1, 2000
	addiw t2, t3, 1
	mulw a3, t3, a1
	mulw a2, a0, a1
	add a1, a4, a3
	add a0, a4, a2
	add a3, a5, a3
	addi a2, a1, 2000
	bge s1, t3, label85
	addiw t0, t0, -1
	bgt t0, zero, label9
	j label233
.p2align 2
label85:
	li t3, 1
	bge s0, t3, label16
.p2align 2
label88:
	mv t3, t2
	addiw a0, t2, -1
	li a1, 2000
	addiw t2, t2, 1
	mulw a3, t3, a1
	mulw a2, a0, a1
	add a1, a4, a3
	add a0, a4, a2
	add a3, a5, a3
	addi a2, a1, 2000
	bge s1, t3, label85
	j label234
.p2align 2
label16:
	addiw t4, t3, -1
	sh2add t5, t3, a0
	sh2add a6, t4, a0
	lw t6, 0(a6)
	lw a7, 0(t5)
	addw a6, t6, a7
	lw a7, 4(t5)
	sh2add t5, t4, a1
	addw t6, a6, a7
	sh2add t4, t4, a2
	lw a7, 0(t5)
	lw a6, 8(t5)
	addw t6, t6, a7
	addw t5, t6, a6
	lw t6, 0(t4)
	sh2add t4, t3, a2
	addw t5, t5, t6
	lw t6, 0(t4)
	lw a6, 4(t4)
	addw t5, t5, t6
	sh2add t6, t3, a1
	addw t4, t5, a6
	lw a6, 0(t6)
	xori t5, t4, 2
	xori a7, a6, 1
	or t6, t5, a7
	addiw t5, t3, 1
	beq t6, zero, label17
	xori a6, t4, 3
	sh2add t6, t3, a3
	sltiu t4, a6, 1
	mv t3, t5
	sw t4, 0(t6)
	bge s0, t5, label16
	j label88
.p2align 2
label17:
	sh2add t3, t3, a3
	li t4, 1
	sw t4, 0(t3)
	mv t3, t5
	bge s0, t5, label16
	j label88
label24:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 64
	ret
label66:
	li s4, 1
	j label20
.p2align 2
label153:
	li s5, 1
	sh2add a1, s5, s3
	li a2, 1
	lw a0, 0(a1)
	li a1, 35
	beq a0, a2, label223
	j label237
label174:
	addiw a2, a2, 1
	j label29
