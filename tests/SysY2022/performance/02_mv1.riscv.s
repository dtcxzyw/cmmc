.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s8, 56(sp)
	sd s9, 64(sp)
	sd s3, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s6, 15
	li s7, 50
	li s5, 3
	mv s0, a0
	addiw a3, a0, -3
	mv s9, zero
pcrel445:
	auipc a1, %pcrel_hi(A)
	sd a3, 104(sp)
	addi s4, a1, %pcrel_lo(pcrel445)
	addiw a3, a0, -18
	mv s8, s4
pcrel446:
	auipc a0, %pcrel_hi(C)
	sd a3, 112(sp)
	addi s1, a0, %pcrel_lo(pcrel446)
pcrel447:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel447)
	li a0, 1005
	slli s3, a0, 3
	bgt s0, zero, label5
	j label11
.p2align 2
label9:
	addiw s9, s9, 1
	add s8, s8, s3
	ble s0, s9, label11
.p2align 2
label5:
	mv s10, s8
	mv s11, zero
.p2align 2
label6:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s0, s11, label9
	addi s10, s10, 4
	j label6
label11:
	ble s0, zero, label12
	mv s8, s2
	mv s9, zero
	j label95
.p2align 2
label98:
	addi s8, s8, 4
.p2align 2
label95:
	jal getint
	addiw s9, s9, 1
	sw a0, 0(s8)
	bgt s0, s9, label98
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	j label13
.p2align 2
label410:
	addiw a0, a0, 1
	bge a0, s7, label74
.p2align 2
label13:
	ble s0, zero, label15
	ble s0, s5, label130
	ld a3, 104(sp)
	ble a3, s6, label145
	mv a1, s1
	mv a2, zero
	j label36
.p2align 2
label39:
	addi a1, a1, 64
.p2align 2
label36:
	sd zero, 0(a1)
	addiw a2, a2, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ld a3, 112(sp)
	bgt a3, a2, label39
	mv a4, a2
	ld a3, 104(sp)
	ble a3, a2, label389
.p2align 2
label30:
	sh2add a1, a4, s1
	mv a2, a4
	j label31
.p2align 2
label34:
	addi a1, a1, 16
.p2align 2
label31:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label34
	ble s0, a2, label388
.p2align 2
label20:
	sh2add a1, a2, s1
.p2align 2
label21:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ble s0, a2, label24
	addi a1, a1, 4
	j label21
.p2align 2
label24:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label85
	j label44
.p2align 2
label290:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label400
.p2align 2
label85:
	ble s0, zero, label86
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	bne t0, zero, label285
.p2align 2
label91:
	addiw a5, a5, 1
	ble s0, a5, label290
.p2align 2
label92:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label91
	sh2add t2, a5, s2
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t4, 0(t2)
	mulw t5, t0, t4
	addw t3, t1, t5
	sw t3, 0(a1)
	bgt s0, a5, label92
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label85
	bgt s0, zero, label45
	j label188
.p2align 2
label400:
	ble s0, zero, label188
.p2align 2
label45:
	ble s0, s5, label191
	ld a3, 104(sp)
	ble a3, s6, label206
	mv a1, s2
	mv a2, zero
.p2align 2
label57:
	sd zero, 0(a1)
	addiw a2, a2, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ld a3, 112(sp)
	ble a3, a2, label226
	addi a1, a1, 64
	j label57
.p2align 2
label86:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label85
label44:
	bgt s0, zero, label45
	j label188
.p2align 2
label226:
	mv a4, a2
	ld a3, 104(sp)
	ble a3, a2, label393
.p2align 2
label64:
	sh2add a1, a4, s2
	mv a2, a4
	j label65
.p2align 2
label68:
	addi a1, a1, 16
.p2align 2
label65:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label68
	ble s0, a2, label395
.p2align 2
label49:
	sh2add a1, a2, s2
	j label50
.p2align 2
label54:
	addi a1, a1, 4
.p2align 2
label50:
	sw zero, 0(a1)
	addiw a2, a2, 1
	bgt s0, a2, label54
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label75
	j label73
.p2align 2
label264:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label410
.p2align 2
label75:
	ble s0, zero, label254
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label80
	mv t2, s1
	lw t1, 0(a1)
	lw t3, 0(s1)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
.p2align 2
label80:
	addiw a5, a5, 1
	ble s0, a5, label264
.p2align 2
label81:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label80
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t3, 0(t2)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	bgt s0, a5, label81
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label75
	addiw a0, a0, 1
	blt a0, s7, label13
	j label74
label130:
	mv a2, zero
	bgt s0, zero, label20
	mv a2, s4
	mv a1, s1
	mv a3, zero
	j label44
label191:
	mv a2, zero
	bgt s0, zero, label49
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label73
label145:
	mv a4, zero
	mv a2, zero
	ld a3, 104(sp)
	bgt a3, zero, label30
	bgt s0, zero, label20
	mv a2, s4
	mv a1, s1
	mv a3, zero
	j label44
.p2align 2
label389:
	bgt s0, a2, label20
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label85
	j label44
.p2align 2
label393:
	bgt s0, a2, label49
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label75
	j label73
label15:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label85
	j label44
label188:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label75
	j label73
.p2align 2
label254:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label75
label73:
	addiw a0, a0, 1
	blt a0, s7, label13
	j label74
label206:
	mv a4, zero
	mv a2, zero
	ld a3, 104(sp)
	bgt a3, zero, label64
	bgt s0, zero, label49
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label73
label74:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s8, 56(sp)
	ld s9, 64(sp)
	ld s3, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label388:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label85
	j label44
.p2align 2
label395:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label75
	j label73
.p2align 2
label285:
	sh2add t2, a5, s2
	lw t1, 0(a1)
	lw t4, 0(t2)
	mulw t5, t0, t4
	addw t3, t1, t5
	sw t3, 0(a1)
	j label91
