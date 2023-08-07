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
	sd s4, 24(sp)
	sd s2, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s8, 56(sp)
	sd s9, 64(sp)
	sd s3, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	addiw a3, a0, -4
	li s7, 50
pcrel421:
	auipc a1, %pcrel_hi(A)
	li s6, 16
	li s5, 4
	mv s0, a0
	mv s9, zero
	addi s4, a1, %pcrel_lo(pcrel421)
	sd a3, 104(sp)
	mv s8, s4
pcrel422:
	auipc a1, %pcrel_hi(C)
	addiw a3, a0, -20
	addi s1, a1, %pcrel_lo(pcrel422)
pcrel423:
	auipc a0, %pcrel_hi(B)
	sd a3, 112(sp)
	addi s2, a0, %pcrel_lo(pcrel423)
	li a0, 1005
	slli s3, a0, 3
	bgt s0, zero, label85
label5:
	bgt s0, zero, label6
	j label11
.p2align 2
label85:
	mv s10, s8
	mv s11, zero
	j label86
.p2align 2
label89:
	addiw s9, s9, 1
	add s8, s8, s3
	bgt s0, s9, label85
	j label5
.p2align 2
label86:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s0, s11, label89
	addi s10, s10, 4
	j label86
label6:
	mv s8, s2
	mv s9, zero
.p2align 2
label7:
	jal getint
	addiw s9, s9, 1
	sw a0, 0(s8)
	ble s0, s9, label11
	addi s8, s8, 4
	j label7
label11:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
.p2align 2
label12:
	ble s0, zero, label117
	ble s0, s5, label15
	ld a3, 104(sp)
	ble a3, s6, label123
	mv a1, s1
	mv a2, zero
	j label18
.p2align 2
label370:
	addiw a0, a0, 1
	blt a0, s7, label12
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
	ld s4, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s8, 56(sp)
	ld s9, 64(sp)
	ld s3, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label18:
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
	ble a3, a2, label143
	addi a1, a1, 64
	j label18
.p2align 2
label143:
	sh2add a1, a2, s1
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label28
	j label378
.p2align 2
label24:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	ble a3, a2, label27
.p2align 2
label28:
	addi a1, a1, 16
	j label24
.p2align 2
label27:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label33
	j label362
.p2align 2
label29:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ble s0, a2, label32
.p2align 2
label33:
	addi a1, a1, 4
	j label29
.p2align 2
label32:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	ble s0, zero, label39
.p2align 2
label76:
	ble s0, zero, label77
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	bne t0, zero, label82
.p2align 2
label83:
	addiw a5, a5, 1
	bgt s0, a5, label84
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label76
	j label374
.p2align 2
label84:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label83
	sh2add t2, a5, s2
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t3, 0(t2)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	bgt s0, a5, label84
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label76
	bgt s0, zero, label40
	j label170
.p2align 2
label82:
	sh2add t2, a5, s2
	lw t1, 0(a1)
	lw t3, 0(t2)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	j label83
label170:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	j label60
.p2align 2
label40:
	ble s0, s5, label173
	ld a3, 104(sp)
	ble a3, s6, label182
	mv a1, s2
	mv a2, zero
.p2align 2
label48:
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
	ble a3, a2, label202
	addi a1, a1, 64
	j label48
label60:
	bgt s0, a3, label64
	j label220
.p2align 2
label374:
	bgt s0, zero, label40
	j label170
.p2align 2
label64:
	ble s0, zero, label65
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label70
	mv t2, s1
	lw t1, 0(a1)
	lw t3, 0(s1)
	mulw t5, t0, t3
	addw t4, t1, t5
	sw t4, 0(a1)
.p2align 2
label70:
	addiw a5, a5, 1
	bgt s0, a5, label71
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label64
	j label370
.p2align 2
label71:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label70
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t3, 0(t2)
	mulw t5, t0, t3
	addw t4, t1, t5
	sw t4, 0(a1)
	bgt s0, a5, label71
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label64
	addiw a0, a0, 1
	blt a0, s7, label12
	j label74
.p2align 2
label202:
	sh2add a1, a2, s2
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	bgt a3, a2, label57
	j label382
.p2align 2
label53:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ld a3, 104(sp)
	ble a3, a2, label56
.p2align 2
label57:
	addi a1, a1, 16
	j label53
.p2align 2
label41:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ble s0, a2, label178
.p2align 2
label44:
	addi a1, a1, 4
	j label41
.p2align 2
label56:
	sh2add a1, a2, s2
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label44
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label64
	j label220
label39:
	bgt s0, zero, label40
	j label170
.p2align 2
label77:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label76
	j label39
label220:
	addiw a0, a0, 1
	blt a0, s7, label12
	j label74
.p2align 2
label65:
	addiw a3, a3, 1
	addi a1, a1, 4
	add a2, a2, s3
	bgt s0, a3, label64
	j label220
label15:
	mv a1, s1
	li a2, 1
	sw zero, 0(s1)
	bgt s0, a2, label33
	j label32
.p2align 2
label378:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label33
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label76
	j label39
.p2align 2
label382:
	sh2add a1, a2, s2
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label44
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label64
	j label220
label117:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label76
	j label39
label123:
	mv a1, s1
	li a2, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	ld a3, 104(sp)
	bgt a3, a2, label28
	j label27
label182:
	mv a1, s2
	li a2, 4
	sw zero, 0(s2)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	ld a3, 104(sp)
	bgt a3, a2, label57
	j label56
.p2align 2
label178:
	mv a2, s4
	mv a1, s2
	mv a3, zero
	bgt s0, zero, label64
	j label220
.p2align 2
label362:
	mv a2, s4
	mv a1, s1
	mv a3, zero
	bgt s0, zero, label76
	j label39
label173:
	mv a1, s2
	mv a2, zero
	j label41
