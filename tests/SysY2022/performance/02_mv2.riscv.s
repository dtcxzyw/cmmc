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
	li s6, 16
	li s5, 4
	li s7, 50
	addiw a3, a0, -4
pcrel421:
	auipc a1, %pcrel_hi(A)
	mv s0, a0
	mv s9, zero
	addi s4, a1, %pcrel_lo(pcrel421)
	sd a3, 104(sp)
	mv s8, s4
	addiw a3, a0, -20
pcrel422:
	auipc a0, %pcrel_hi(C)
	sd a3, 112(sp)
	addi s1, a0, %pcrel_lo(pcrel422)
pcrel423:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel423)
	li a0, 1005
	slli s3, a0, 3
	bgt s0, zero, label5
	j label11
.p2align 2
label109:
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
	ble s0, s11, label109
	addi s10, s10, 4
	j label6
label11:
	ble s0, zero, label12
	mv s8, s2
	mv s9, zero
	j label87
.p2align 2
label90:
	addi s8, s8, 4
.p2align 2
label87:
	jal getint
	addiw s9, s9, 1
	sw a0, 0(s8)
	bgt s0, s9, label90
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	j label13
.p2align 2
label381:
	addiw a0, a0, 1
	bge a0, s7, label56
.p2align 2
label13:
	ble s0, zero, label15
	ble s0, s5, label230
	ld a3, 104(sp)
	ble a3, s6, label239
	mv a1, s1
	mv a2, zero
	j label75
.p2align 2
label79:
	addi a1, a1, 64
.p2align 2
label75:
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
	bgt a3, a2, label79
	sh2add a1, a2, s1
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	ble a3, a2, label374
.p2align 2
label84:
	addi a1, a1, 16
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label84
.p2align 2
label270:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s0, a2, label384
.p2align 2
label71:
	addi a1, a1, 4
.p2align 2
label67:
	sw zero, 0(a1)
	addiw a2, a2, 1
	bgt s0, a2, label71
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label57
	j label20
.p2align 2
label226:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label370
.p2align 2
label57:
	ble s0, zero, label58
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	bne t0, zero, label63
.p2align 2
label64:
	addiw a5, a5, 1
	ble s0, a5, label226
.p2align 2
label65:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label64
	sh2add t2, a5, s2
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t4, 0(t2)
	mulw t5, t0, t4
	addw t3, t1, t5
	sw t3, 0(a1)
	bgt s0, a5, label65
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label57
	bgt s0, zero, label22
	j label21
.p2align 2
label63:
	sh2add t2, a5, s2
	lw t1, 0(a1)
	lw t4, 0(t2)
	mulw t5, t0, t4
	addw t3, t1, t5
	sw t3, 0(a1)
	j label64
.p2align 2
label370:
	ble s0, zero, label21
.p2align 2
label22:
	ble s0, s5, label129
	ld a3, 104(sp)
	ble a3, s6, label29
	mv a1, s2
	mv a2, zero
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
	ble a3, a2, label169
	addi a1, a1, 64
	j label36
.p2align 2
label169:
	sh2add a1, a2, s2
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	ble a3, a2, label379
.p2align 2
label34:
	addi a1, a1, 16
.p2align 2
label30:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label34
	sh2add a1, a2, s2
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s0, a2, label362
.p2align 2
label26:
	addi a1, a1, 4
.p2align 2
label23:
	sw zero, 0(a1)
	addiw a2, a2, 1
	bgt s0, a2, label26
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label46
	j label176
.p2align 2
label189:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	ble s0, a3, label381
.p2align 2
label46:
	ble s0, zero, label179
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	bne t0, zero, label184
.p2align 2
label51:
	addiw a5, a5, 1
	ble s0, a5, label189
.p2align 2
label52:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label51
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t5, 0(t2)
	mulw t3, t0, t5
	addw t4, t1, t3
	sw t4, 0(a1)
	bgt s0, a5, label52
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label46
	addiw a0, a0, 1
	blt a0, s7, label13
	j label56
.p2align 2
label58:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label57
label20:
	bgt s0, zero, label22
	j label21
.p2align 2
label374:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label71
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label57
	j label20
label29:
	mv a1, s2
	mv a2, zero
	j label30
.p2align 2
label379:
	sh2add a1, a2, s2
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label26
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label46
	j label176
label15:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label57
	j label20
label21:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label46
	j label176
.p2align 2
label179:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label46
label176:
	addiw a0, a0, 1
	blt a0, s7, label13
	j label56
label239:
	mv a1, s1
	li a2, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	ld a3, 104(sp)
	bgt a3, a2, label84
	j label270
label56:
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
label384:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label57
	j label20
.p2align 2
label362:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label46
	j label176
label129:
	mv a1, s2
	mv a2, zero
	j label23
label230:
	mv a1, s1
	mv a2, zero
	j label67
.p2align 2
label184:
	sh2add t2, a5, s1
	lw t1, 0(a1)
	lw t5, 0(t2)
	mulw t3, t0, t5
	addw t4, t1, t3
	sw t4, 0(a1)
	j label51
