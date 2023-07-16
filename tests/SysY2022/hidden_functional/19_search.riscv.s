.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	3600
.text
search:
	addi sp, sp, -104
	sd s0, 96(sp)
	mv s0, a0
	sd s5, 88(sp)
pcrel215:
	auipc a0, %pcrel_hi(a)
	mv s5, a4
	sd s1, 80(sp)
	mv s1, a1
	sd s6, 72(sp)
	li a1, 10
	mv s6, a6
	sd s3, 64(sp)
	mv s3, a2
	sd s4, 56(sp)
	mv s4, a3
	sd s7, 48(sp)
	mv s7, a5
	sd s8, 40(sp)
	mv s8, a7
	sd s9, 32(sp)
	addi s9, a0, %pcrel_lo(pcrel215)
	sd s10, 24(sp)
	sd s2, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	ble a2, a1, label34
	lui a0, 262144
	j label2
label34:
	lui s10, 262144
	mv s2, zero
	mv a3, s4
	li a0, 4
	bge zero, a0, label7
	mv a1, zero
	mv a0, s1
	mv a2, s0
	li a5, 120
	mul t1, s0, a5
	add a4, s9, t1
	li t1, 1
	sh2add t0, s1, a4
	lw a5, 0(t0)
	beq a5, t1, label15
	lw a5, 0(s6)
	bne s0, a5, label13
	lw a5, 0(s8)
	bne s1, a5, label13
	lw a5, 0(s6)
	bne s0, a5, label17
	lw a5, 0(s8)
	bne s1, a5, label17
label203:
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s2, 16(sp)
	ld s10, 24(sp)
	ld s9, 32(sp)
	ld s8, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s6, 72(sp)
	ld s1, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	addi sp, sp, 104
	ret
label17:
	slti a1, a1, 2
	sltiu a5, a2, 1
	or t0, a1, a5
	beq t0, zero, label19
	addiw s2, s2, 1
	sh3add a3, s2, s4
	li a0, 4
	bge s2, a0, label7
	mv a1, zero
	mv a0, s1
	mv a2, s0
	li a5, 120
	mul t1, s0, a5
	add a4, s9, t1
	li t1, 1
	sh2add t0, s1, a4
	lw a5, 0(t0)
	beq a5, t1, label15
	lw a5, 0(s6)
	bne s0, a5, label13
	lw a5, 0(s8)
	bne s1, a5, label13
	lw a5, 0(s6)
	bne s0, a5, label17
	lw a5, 0(s8)
	bne s1, a5, label17
	j label203
label19:
	lw a1, 0(s7)
	addiw a5, a1, 1
	xor t0, a2, a5
	sltiu a5, a0, 1
	sltiu a1, t0, 1
	or t0, a1, a5
	beq t0, zero, label20
	addiw s2, s2, 1
	sh3add a3, s2, s4
	li a0, 4
	bge s2, a0, label7
	mv a1, zero
	mv a0, s1
	mv a2, s0
	li a5, 120
	mul t1, s0, a5
	add a4, s9, t1
	li t1, 1
	sh2add t0, s1, a4
	lw a5, 0(t0)
	beq a5, t1, label15
	lw a5, 0(s6)
	bne s0, a5, label13
	lw a5, 0(s8)
	bne s1, a5, label13
	lw a5, 0(s6)
	bne s0, a5, label17
	lw a5, 0(s8)
	bne s1, a5, label17
	j label203
label15:
	lw a5, 0(s6)
	bne a2, a5, label17
	lw a5, 0(s8)
	bne a0, a5, label17
	j label203
label20:
	lw a5, 0(s5)
	addiw a1, a5, 1
	bne a0, a1, label21
	addiw s2, s2, 1
	sh3add a3, s2, s4
	li a0, 4
	bge s2, a0, label7
	mv a1, zero
	mv a0, s1
	mv a2, s0
	li a5, 120
	mul t1, s0, a5
	add a4, s9, t1
	li t1, 1
	sh2add t0, s1, a4
	lw a5, 0(t0)
	beq a5, t1, label15
	lw a5, 0(s6)
	bne s0, a5, label13
	lw a5, 0(s8)
	bne s1, a5, label13
	lw a5, 0(s6)
	bne s0, a5, label17
	lw a5, 0(s8)
	bne s1, a5, label17
	j label203
label21:
	sh2add s11, a0, a4
	sw zero, 0(s11)
	lw a5, 0(a3)
	lw a4, 4(a3)
	subw a1, a2, a5
	addiw a3, s3, 1
	subw a2, a0, a4
	mv a0, a1
	mv a1, a2
	mv a2, a3
	mv a3, s4
	mv a4, s5
	mv a5, s7
	mv a6, s6
	mv a7, s8
	jal search
	addiw s2, s2, 1
	addiw a1, a0, 1
	li a0, 1
	min s10, s10, a1
	sw a0, 0(s11)
	sh3add a3, s2, s4
	li a0, 4
	bge s2, a0, label7
	mv a1, zero
	mv a0, s1
	mv a2, s0
	li a5, 120
	mul t1, s0, a5
	add a4, s9, t1
	li t1, 1
	sh2add t0, s1, a4
	lw a5, 0(t0)
	beq a5, t1, label15
	lw a5, 0(s6)
	bne s0, a5, label13
	lw a5, 0(s8)
	bne s1, a5, label13
	lw a5, 0(s6)
	bne s0, a5, label17
	lw a5, 0(s8)
	bne s1, a5, label17
	j label203
label13:
	lw a5, 0(a3)
	addiw a1, a1, 1
	lw a4, 4(a3)
	addw a2, a2, a5
	addw a0, a0, a4
	li a5, 120
	mul t1, a2, a5
	add a4, s9, t1
	li t1, 1
	sh2add t0, a0, a4
	lw a5, 0(t0)
	beq a5, t1, label15
	lw a5, 0(s6)
	bne a2, a5, label13
	lw a5, 0(s8)
	bne a0, a5, label13
	lw a5, 0(s6)
	bne a2, a5, label17
	lw a5, 0(s8)
	bne a0, a5, label17
	j label203
label7:
	li a1, 10
	lui a0, 262144
	bgt s10, a1, label2
	mv a0, s10
	j label2
.globl main
main:
	addi sp, sp, -152
	li a0, 1
	li a1, -1
	sd s1, 32(sp)
	addi s1, sp, 56
	sd s6, 64(sp)
	sd s2, 40(sp)
	addi s2, sp, 72
	sd s3, 48(sp)
	addi s3, sp, 76
	sd s4, 0(sp)
	addi s4, sp, 80
	sd s5, 8(sp)
	addi s5, sp, 96
	sd s0, 16(sp)
	sd s9, 24(sp)
	mv s9, zero
	sd s10, 128(sp)
	sd s7, 144(sp)
	sd s8, 88(sp)
	sd ra, 136(sp)
	sw a0, 96(sp)
	sw zero, 100(sp)
	sw a1, 104(sp)
	sw zero, 108(sp)
	sw zero, 112(sp)
	sw a0, 116(sp)
pcrel400:
	auipc a0, %pcrel_hi(a)
	sw zero, 120(sp)
	addi s0, a0, %pcrel_lo(pcrel400)
	sw a1, 124(sp)
	sw zero, 72(sp)
	sw zero, 56(sp)
	mv s10, zero
label217:
	jal getint
	sw a0, 80(sp)
	mv s6, a0
	jal getint
	sw a0, 76(sp)
	beq s6, zero, label239
	mv a0, zero
	li a1, 30
	bge zero, a1, label267
	j label238
label267:
	li s6, 1
	lw a0, 76(sp)
	li a1, 120
	mul a2, s6, a1
	add s7, s0, a2
	bgt s6, a0, label237
	li s8, 1
	lw a0, 80(sp)
	bgt s8, a0, label236
	j label230
label237:
	mv a0, s10
	li a2, 1
	mv a1, s9
	mv a3, s5
	mv a4, s4
	mv a5, s3
	mv a6, s2
	mv a7, s1
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label374
	li a1, -1
label374:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	j label217
label230:
	jal getint
	li a1, 2
	sh2add a2, s8, s7
	sw a0, 0(a2)
	bne a0, a1, label234
	mv s9, s8
	mv s10, s6
	addiw s8, s8, 1
	lw a0, 80(sp)
	bgt s8, a0, label236
	j label230
label234:
	li a1, 3
	bne a0, a1, label231
	sw s6, 72(sp)
	sw s8, 56(sp)
	addiw s8, s8, 1
	lw a0, 80(sp)
	bgt s8, a0, label236
	j label230
label236:
	addiw s6, s6, 1
	lw a0, 76(sp)
	li a1, 120
	mul a2, s6, a1
	add s7, s0, a2
	bgt s6, a0, label237
	li s8, 1
	lw a0, 80(sp)
	bgt s8, a0, label236
	j label230
label231:
	addiw s8, s8, 1
	lw a0, 80(sp)
	bgt s8, a0, label236
	j label230
label238:
	li a2, 120
	mul a3, a0, a2
	addiw a0, a0, 1
	li a2, 1
	add a1, s0, a3
	sw a2, 0(a1)
	sw a2, 4(a1)
	sw a2, 8(a1)
	sw a2, 12(a1)
	sw a2, 16(a1)
	sw a2, 20(a1)
	sw a2, 24(a1)
	sw a2, 28(a1)
	sw a2, 32(a1)
	sw a2, 36(a1)
	sw a2, 40(a1)
	sw a2, 44(a1)
	sw a2, 48(a1)
	sw a2, 52(a1)
	sw a2, 56(a1)
	sw a2, 60(a1)
	sw a2, 64(a1)
	sw a2, 68(a1)
	sw a2, 72(a1)
	sw a2, 76(a1)
	sw a2, 80(a1)
	sw a2, 84(a1)
	sw a2, 88(a1)
	sw a2, 92(a1)
	sw a2, 96(a1)
	sw a2, 100(a1)
	sw a2, 104(a1)
	sw a2, 108(a1)
	sw a2, 112(a1)
	sw a2, 116(a1)
	li a1, 30
	bge a0, a1, label267
	j label238
label239:
	mv a0, zero
	ld ra, 136(sp)
	ld s8, 88(sp)
	ld s7, 144(sp)
	ld s10, 128(sp)
	ld s9, 24(sp)
	ld s0, 16(sp)
	ld s5, 8(sp)
	ld s4, 0(sp)
	ld s3, 48(sp)
	ld s2, 40(sp)
	ld s6, 64(sp)
	ld s1, 32(sp)
	addi sp, sp, 152
	ret
