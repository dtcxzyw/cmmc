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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
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
	mv s0, a0
	li s5, 3
pcrel454:
	auipc a1, %pcrel_hi(A)
	addiw a3, a0, -3
	mv s9, zero
	addi s4, a1, %pcrel_lo(pcrel454)
	sd a3, 104(sp)
	mv s8, s4
	addiw a3, a0, -18
pcrel455:
	auipc a0, %pcrel_hi(C)
	sd a3, 112(sp)
	addi s1, a0, %pcrel_lo(pcrel455)
pcrel456:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel456)
	li a0, 1005
	slli s3, a0, 3
	bgt s0, zero, label5
	j label11
.p2align 2
label117:
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
	ble s0, s11, label117
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
label415:
	addiw a0, a0, 1
	bge a0, s7, label50
.p2align 2
label13:
	ble s0, zero, label15
	ble s0, s5, label246
	ld a3, 104(sp)
	ble a3, s6, label261
	mv a1, s1
	mv a2, zero
	j label90
.p2align 2
label93:
	addi a1, a1, 64
.p2align 2
label90:
	addiw a2, a2, 16
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ld a3, 112(sp)
	bgt a3, a2, label93
	mv a4, a2
	ld a3, 104(sp)
	ble a3, a2, label408
.p2align 2
label84:
	sh2add a1, a4, s1
	mv a2, a4
.p2align 2
label85:
	addiw a2, a2, 4
	sd zero, 0(a1)
	sd zero, 8(a1)
	ld a3, 104(sp)
	ble a3, a2, label275
	addi a1, a1, 16
	j label85
.p2align 2
label275:
	ble s0, a2, label407
.p2align 2
label74:
	sh2add a1, a2, s1
.p2align 2
label75:
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s0, a2, label78
	addi a1, a1, 4
	j label75
.p2align 2
label78:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label61
	j label20
.p2align 2
label236:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label401
.p2align 2
label61:
	ble s0, zero, label62
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label67
	mv t2, s2
	lw t1, 0(a1)
	lw t5, 0(s2)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
.p2align 2
label67:
	addiw a5, a5, 1
	ble s0, a5, label236
.p2align 2
label68:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label67
	sh2add t2, a5, s2
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t5, 0(t2)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
	bgt s0, a5, label68
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label61
	bgt s0, zero, label21
	j label134
.p2align 2
label401:
	ble s0, zero, label134
.p2align 2
label21:
	ble s0, s5, label137
	ld a3, 104(sp)
	ble a3, s6, label140
	mv a1, s2
	mv a2, zero
.p2align 2
label32:
	addiw a2, a2, 16
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ld a3, 112(sp)
	ble a3, a2, label175
	addi a1, a1, 64
	j label32
.p2align 2
label62:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label61
label20:
	bgt s0, zero, label21
	j label134
.p2align 2
label175:
	mv a4, a2
	ld a3, 104(sp)
	ble a3, a2, label396
.p2align 2
label26:
	sh2add a1, a4, s2
	mv a2, a4
	j label27
.p2align 2
label30:
	addi a1, a1, 16
.p2align 2
label27:
	addiw a2, a2, 4
	sd zero, 0(a1)
	sd zero, 8(a1)
	ld a3, 104(sp)
	bgt a3, a2, label30
	ble s0, a2, label395
.p2align 2
label39:
	sh2add a1, a2, s2
.p2align 2
label40:
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s0, a2, label187
	addi a1, a1, 4
	j label40
label246:
	mv a2, zero
	bgt s0, zero, label74
	mv a2, s4
	mv a1, s1
	mv a3, zero
	j label20
.p2align 2
label408:
	bgt s0, a2, label74
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label61
	j label20
label261:
	mv a4, zero
	mv a2, zero
	ld a3, 104(sp)
	bgt a3, zero, label84
	bgt s0, zero, label74
	mv a2, s4
	mv a1, s1
	mv a3, zero
	j label20
.p2align 2
label396:
	bgt s0, a2, label39
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label51
	j label49
.p2align 2
label216:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label415
.p2align 2
label51:
	ble s0, zero, label200
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label57
	mv t2, s1
	lw t1, 0(a1)
	lw t3, 0(s1)
	mulw t5, t0, t3
	addw t4, t1, t5
	sw t4, 0(a1)
.p2align 2
label57:
	addiw a5, a5, 1
	ble s0, a5, label216
.p2align 2
label58:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label57
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t3, 0(t2)
	mulw t5, t0, t3
	addw t4, t1, t5
	sw t4, 0(a1)
	bgt s0, a5, label58
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label51
	addiw a0, a0, 1
	blt a0, s7, label13
	j label50
label140:
	mv a4, zero
	mv a2, zero
	ld a3, 104(sp)
	bgt a3, zero, label26
	bgt s0, zero, label39
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label49
label15:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label61
	j label20
label134:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label51
	j label49
.p2align 2
label200:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label51
label49:
	addiw a0, a0, 1
	blt a0, s7, label13
	j label50
label137:
	mv a2, zero
	bgt s0, zero, label39
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label49
.p2align 2
label187:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label51
	j label49
label50:
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
label407:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label61
	j label20
.p2align 2
label395:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label51
	j label49
