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
	li s5, 3
	mv s0, a0
	addiw a3, a0, -3
pcrel450:
	auipc a1, %pcrel_hi(C)
	li s6, 15
	li s7, 50
	mv s9, zero
	addi s1, a1, %pcrel_lo(pcrel450)
	sd a3, 104(sp)
pcrel451:
	auipc a1, %pcrel_hi(B)
	addiw a3, a0, -18
	addi s2, a1, %pcrel_lo(pcrel451)
pcrel452:
	auipc a0, %pcrel_hi(A)
	sd a3, 112(sp)
	addi s4, a0, %pcrel_lo(pcrel452)
	li a0, 1005
	mv s8, s4
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
label399:
	addiw a0, a0, 1
	bge a0, s7, label82
.p2align 2
label13:
	ble s0, zero, label127
	ble s0, s5, label130
	ld a3, 104(sp)
	ble a3, s6, label145
	mv a1, s1
	mv a2, zero
	j label27
.p2align 2
label30:
	addi a1, a1, 64
.p2align 2
label27:
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
	bgt a3, a2, label30
	mv a4, a2
	ld a3, 104(sp)
	ble a3, a2, label388
.p2align 2
label34:
	sh2add a1, a4, s1
	mv a2, a4
.p2align 2
label35:
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	ble a3, a2, label180
	addi a1, a1, 16
	j label35
.p2align 2
label180:
	ble s0, a2, label390
.p2align 2
label19:
	sh2add a1, a2, s1
.p2align 2
label20:
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s0, a2, label141
	addi a1, a1, 4
	j label20
label130:
	mv a2, zero
	bgt s0, zero, label19
	mv a2, s4
	mv a1, s1
	mv a3, zero
	j label43
.p2align 2
label293:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label415
.p2align 2
label84:
	ble s0, zero, label277
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label90
	mv t2, s2
	lw t1, 0(a1)
	lw t4, 0(s2)
	mulw t3, t0, t4
	addw t5, t1, t3
	sw t5, 0(a1)
.p2align 2
label90:
	addiw a5, a5, 1
	ble s0, a5, label293
.p2align 2
label91:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label90
	sh2add t2, a5, s2
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t4, 0(t2)
	mulw t3, t0, t4
	addw t5, t1, t3
	sw t5, 0(a1)
	bgt s0, a5, label91
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label84
	bgt s0, zero, label44
	j label188
.p2align 2
label415:
	ble s0, zero, label188
.p2align 2
label44:
	ble s0, s5, label191
	ld a3, 104(sp)
	ble a3, s6, label206
	mv a1, s2
	mv a2, zero
.p2align 2
label56:
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
	ble a3, a2, label226
	addi a1, a1, 64
	j label56
.p2align 2
label226:
	mv a4, a2
	ld a3, 104(sp)
	ble a3, a2, label394
.p2align 2
label63:
	sh2add a1, a4, s2
	mv a2, a4
	j label64
.p2align 2
label67:
	addi a1, a1, 16
.p2align 2
label64:
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label67
	ble s0, a2, label396
.p2align 2
label47:
	sh2add a1, a2, s2
	j label48
.p2align 2
label51:
	addi a1, a1, 4
.p2align 2
label48:
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label51
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label72
	j label246
.p2align 2
label268:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label399
.p2align 2
label72:
	ble s0, zero, label73
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label79
	mv t2, s1
	lw t1, 0(a1)
	lw t5, 0(s1)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
.p2align 2
label79:
	addiw a5, a5, 1
	ble s0, a5, label268
.p2align 2
label80:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label79
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t5, 0(t2)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
	bgt s0, a5, label80
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label72
	addiw a0, a0, 1
	blt a0, s7, label13
	j label82
.p2align 2
label73:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label72
label246:
	addiw a0, a0, 1
	blt a0, s7, label13
	j label82
label191:
	mv a2, zero
	bgt s0, zero, label47
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label246
.p2align 2
label388:
	bgt s0, a2, label19
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label84
	j label43
.p2align 2
label394:
	bgt s0, a2, label47
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label72
	j label246
label127:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label84
	j label43
label188:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label72
	j label246
.p2align 2
label277:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label84
label43:
	bgt s0, zero, label44
	j label188
label145:
	mv a4, zero
	mv a2, zero
	ld a3, 104(sp)
	bgt a3, zero, label34
	bgt s0, zero, label19
	mv a2, s4
	mv a1, s1
	mv a3, zero
	j label43
label206:
	mv a4, zero
	mv a2, zero
	ld a3, 104(sp)
	bgt a3, zero, label63
	bgt s0, zero, label47
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label246
.p2align 2
label141:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label84
	j label43
label82:
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
label390:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label84
	j label43
.p2align 2
label396:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label72
	j label246
