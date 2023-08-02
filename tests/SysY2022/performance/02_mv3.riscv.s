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
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	jal getint
	li s8, 16
	li s7, 4
	li s9, 50
	li s4, 8040
	mv s2, zero
	addiw s5, a0, -20
	addiw s6, a0, -4
	mv s0, a0
pcrel360:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel360)
	ble s0, zero, label8
.p2align 2
label4:
	mul a0, s2, s4
	mv s10, zero
	add s1, s3, a0
.p2align 2
label5:
	jal getint
	sh2add a1, s10, s1
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s0, s10, label5
	addiw s2, s2, 1
	bgt s0, s2, label4
label8:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(label8)
	ble s0, zero, label9
	mv s2, zero
	j label47
label9:
	li a0, 59
	jal _sysy_starttime
	mv a1, zero
pcrel361:
	auipc a2, %pcrel_hi(C)
	addi s2, a2, %pcrel_lo(pcrel361)
	j label10
.p2align 2
label47:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label47
	j label9
.p2align 2
label10:
	bgt s0, zero, label39
	j label79
.p2align 2
label161:
	mv a3, zero
	ble s0, zero, label164
.p2align 2
label33:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label35
	sh2add t1, a3, s2
	sh2add a5, a2, s1
	lw t0, 0(a5)
	lw t2, 0(t1)
	mulw t1, a4, t2
	addw a4, t0, t1
	sw a4, 0(a5)
.p2align 2
label35:
	addiw a3, a3, 1
	bgt s0, a3, label33
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label161
	addiw a1, a1, 1
	blt a1, s9, label10
	j label38
.p2align 2
label39:
	ble s0, s7, label189
	ble s6, s8, label192
	mv a0, zero
	j label43
.p2align 2
label41:
	sh2add a2, a0, s2
	addiw a0, a0, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt s6, a0, label41
.p2align 2
label202:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label45
	j label334
.p2align 2
label43:
	sh2add a2, a0, s2
	addiw a0, a0, 16
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	sd zero, 32(a2)
	sd zero, 40(a2)
	sd zero, 48(a2)
	sd zero, 56(a2)
	bgt s5, a0, label43
	sh2add a2, a0, s2
	addiw a0, a0, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt s6, a0, label41
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	ble s0, a0, label342
.p2align 2
label45:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label45
.p2align 2
label231:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label86
	j label85
.p2align 2
label324:
	mv a2, zero
	j label29
.p2align 2
label86:
	mv a3, zero
	ble s0, zero, label89
.p2align 2
label16:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label18
	sh2add t0, a3, s1
	sh2add a5, a2, s2
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw t2, a4, t0
	addw a4, t1, t2
	sw a4, 0(a5)
.p2align 2
label18:
	addiw a3, a3, 1
	bgt s0, a3, label16
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label86
	ble s0, zero, label324
.p2align 2
label21:
	ble s0, s7, label112
	ble s6, s8, label115
	mv a0, zero
.p2align 2
label23:
	sh2add a2, a0, s1
	addiw a0, a0, 16
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	sd zero, 32(a2)
	sd zero, 40(a2)
	sd zero, 48(a2)
	sd zero, 56(a2)
	bgt s5, a0, label23
.p2align 2
label25:
	sh2add a2, a0, s1
	addiw a0, a0, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt s6, a0, label25
.p2align 2
label27:
	sh2add a2, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label27
	j label324
.p2align 2
label29:
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label161
label160:
	addiw a1, a1, 1
	blt a1, s9, label10
label38:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label79:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label86
label85:
	bgt s0, zero, label21
	j label324
.p2align 2
label89:
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label86
	j label85
.p2align 2
label164:
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label161
	j label160
label189:
	mv a0, zero
	mv a2, s2
	li a0, 1
	sw zero, 0(s2)
	bgt s0, a0, label45
	j label231
label112:
	mv a0, zero
	mv a2, s1
	li a0, 1
	sw zero, 0(s1)
	bgt s0, a0, label27
	j label324
label192:
	mv a0, zero
	mv a2, s2
	li a0, 4
	sw zero, 0(s2)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	bgt s6, a0, label41
	j label202
label115:
	mv a0, zero
	mv a2, s1
	li a0, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s6, a0, label25
	j label27
.p2align 2
label334:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label86
	j label85
label342:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label86
	j label85
