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
	sd s2, 8(sp)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s8, 48(sp)
	sd s9, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s6, 16
	li s7, 50
	li s4, 4
	addiw s2, a0, -4
	addiw a3, a0, -20
	mv s9, zero
pcrel643:
	auipc a1, %pcrel_hi(B)
	sd a0, 112(sp)
	addi s1, a1, %pcrel_lo(pcrel643)
pcrel644:
	auipc a0, %pcrel_hi(A)
	sd a3, 104(sp)
	addi s5, a0, %pcrel_lo(pcrel644)
	mv s8, s5
pcrel645:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel645)
	li a0, 1005
	slli s3, a0, 3
	ld t0, 112(sp)
	ble t0, zero, label11
.p2align 2
label5:
	mv s10, s8
	mv s11, zero
	j label6
.p2align 2
label140:
	addiw s9, s9, 1
	add s8, s8, s3
	ld t0, 112(sp)
	bgt t0, s9, label5
label11:
	ld t0, 112(sp)
	ble t0, zero, label17
	mv s8, s1
	mv s9, zero
	j label13
.p2align 2
label6:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t0, 112(sp)
	ble t0, a1, label140
	addi s10, s10, 4
	mv s11, a1
	j label6
.p2align 2
label13:
	jal getint
	addiw a1, s9, 1
	sw a0, 0(s8)
	ld t0, 112(sp)
	ble t0, a1, label17
	addi s8, s8, 4
	mv s9, a1
	j label13
label17:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
.p2align 2
label18:
	ld t0, 112(sp)
	ble t0, zero, label156
	ble t0, s4, label159
	ble s2, s6, label168
	mv a1, s0
	mv a2, zero
	j label29
.p2align 2
label95:
	ld t0, 112(sp)
	ble t0, zero, label349
	ble t0, s4, label97
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label103
	j label102
.p2align 2
label429:
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	ld t0, 112(sp)
	bgt t0, a3, label95
.p2align 2
label575:
	addiw a0, a0, 1
	blt a0, s7, label18
label120:
	li a0, 67
	jal _sysy_stoptime
	ld t0, 112(sp)
	mv a0, t0
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s8, 48(sp)
	ld s9, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label103:
	addiw t0, a5, 1
	sh2add t2, t0, a2
	lw t1, 0(t2)
	beq t1, zero, label105
	sh2add t3, t0, s0
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	sw t4, 0(a1)
.p2align 2
label105:
	addiw t0, a5, 2
	sh2add t2, t0, a2
	lw t1, 0(t2)
	bne t1, zero, label106
.p2align 2
label107:
	addiw t0, a5, 3
	sh2add t2, t0, a2
	lw t1, 0(t2)
	bne t1, zero, label399
.p2align 2
label108:
	addiw a5, a5, 4
	ble s2, a5, label404
.p2align 2
label109:
	addi a4, a4, 16
	lw t0, 0(a4)
	beq t0, zero, label103
	sh2add t2, a5, s0
	lw t1, 0(a1)
	lw t5, 0(t2)
	mulw t3, t0, t5
	addiw t0, a5, 1
	addw t4, t1, t3
	sh2add t2, t0, a2
	sw t4, 0(a1)
	lw t1, 0(t2)
	beq t1, zero, label105
	sh2add t3, t0, s0
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	addiw t0, a5, 2
	sh2add t2, t0, a2
	sw t4, 0(a1)
	lw t1, 0(t2)
	beq t1, zero, label107
	sh2add t3, t0, s0
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	addiw t0, a5, 3
	sh2add t2, t0, a2
	sw t4, 0(a1)
	lw t1, 0(t2)
	beq t1, zero, label108
	sh2add t3, t0, s0
	lw t2, 0(a1)
	addiw a5, a5, 4
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	sw t4, 0(a1)
	bgt s2, a5, label109
	sh2add a4, a5, a2
	lw t0, 0(a4)
	beq t0, zero, label116
	j label574
.p2align 2
label106:
	sh2add t3, t0, s0
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	sw t4, 0(a1)
	j label107
.p2align 2
label404:
	sh2add a4, a5, a2
	lw t0, 0(a4)
	beq t0, zero, label116
.p2align 2
label574:
	sh2add t2, a5, s0
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t3, 0(t2)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	ld t0, 112(sp)
	bgt t0, a5, label117
	j label590
.p2align 2
label116:
	addiw a5, a5, 1
	ld t0, 112(sp)
	ble t0, a5, label429
.p2align 2
label117:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label116
	sh2add t2, a5, s0
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t3, 0(t2)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	ld t0, 112(sp)
	bgt t0, a5, label117
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	bgt t0, a3, label95
	addiw a0, a0, 1
	blt a0, s7, label18
	j label120
.p2align 2
label102:
	sh2add t2, a5, s0
	lw t1, 0(a1)
	lw t5, 0(t2)
	mulw t3, t0, t5
	addw t4, t1, t3
	sw t4, 0(a1)
	j label103
.p2align 2
label29:
	sd zero, 0(a1)
	addiw a2, a2, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ld a3, 104(sp)
	ble a3, a2, label188
	addi a1, a1, 64
	j label29
.p2align 2
label97:
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label116
	mv t2, s0
	lw t1, 0(a1)
	li a5, 1
	lw t3, 0(s0)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	ld t0, 112(sp)
	bgt t0, a5, label117
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	bgt t0, a3, label95
	j label575
.p2align 2
label21:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ld t0, 112(sp)
	ble t0, a2, label164
.p2align 2
label24:
	addi a1, a1, 4
	j label21
label168:
	mv a1, s0
	li a2, 4
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt s2, a2, label38
.p2align 2
label199:
	sh2add a1, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a1)
	ld t0, 112(sp)
	bgt t0, a2, label24
	mv a1, s0
	mv a2, s5
	mv a3, zero
	ble t0, zero, label206
.p2align 2
label45:
	ld t0, 112(sp)
	ble t0, zero, label46
	ble t0, s4, label215
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label53
	j label52
.p2align 2
label292:
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	ld t0, 112(sp)
	bgt t0, a3, label45
.p2align 2
label547:
	ld t0, 112(sp)
	ble t0, zero, label544
.p2align 2
label71:
	ld t0, 112(sp)
	ble t0, s4, label299
	ble s2, s6, label308
	mv a1, s1
	mv a2, zero
.p2align 2
label80:
	sd zero, 0(a1)
	addiw a2, a2, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ld a3, 104(sp)
	ble a3, a2, label83
	addi a1, a1, 64
	j label80
.p2align 2
label53:
	addiw t0, a5, 1
	sh2add t2, t0, a2
	lw t1, 0(t2)
	beq t1, zero, label55
	sh2add t3, t0, s1
	lw t2, 0(a1)
	lw t4, 0(t3)
	mulw t0, t1, t4
	addw t5, t2, t0
	sw t5, 0(a1)
.p2align 2
label55:
	addiw t0, a5, 2
	sh2add t2, t0, a2
	lw t1, 0(t2)
	beq t1, zero, label57
	sh2add t3, t0, s1
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	sw t4, 0(a1)
.p2align 2
label57:
	addiw t0, a5, 3
	sh2add t2, t0, a2
	lw t1, 0(t2)
	beq t1, zero, label59
	sh2add t3, t0, s1
	lw t2, 0(a1)
	lw t4, 0(t3)
	mulw t5, t1, t4
	addw t0, t2, t5
	sw t0, 0(a1)
.p2align 2
label59:
	addiw a5, a5, 4
	bgt s2, a5, label60
	j label273
.p2align 2
label568:
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t5, 0(t2)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
	ld t0, 112(sp)
	bgt t0, a5, label67
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	bgt t0, a3, label45
	j label593
.p2align 2
label60:
	addi a4, a4, 16
	lw t0, 0(a4)
	beq t0, zero, label53
	sh2add t2, a5, s1
	lw t1, 0(a1)
	lw t3, 0(t2)
	mulw t4, t0, t3
	addiw t0, a5, 1
	addw t5, t1, t4
	sh2add t2, t0, a2
	sw t5, 0(a1)
	lw t1, 0(t2)
	beq t1, zero, label55
	sh2add t3, t0, s1
	lw t2, 0(a1)
	lw t4, 0(t3)
	mulw t0, t1, t4
	addw t5, t2, t0
	addiw t0, a5, 2
	sh2add t2, t0, a2
	sw t5, 0(a1)
	lw t1, 0(t2)
	beq t1, zero, label57
	sh2add t3, t0, s1
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	addiw t0, a5, 3
	sh2add t2, t0, a2
	sw t4, 0(a1)
	lw t1, 0(t2)
	beq t1, zero, label59
	sh2add t3, t0, s1
	lw t2, 0(a1)
	addiw a5, a5, 4
	lw t4, 0(t3)
	mulw t5, t1, t4
	addw t0, t2, t5
	sw t0, 0(a1)
	bgt s2, a5, label60
	sh2add a4, a5, a2
	lw t0, 0(a4)
	beq t0, zero, label66
	j label568
.p2align 2
label273:
	sh2add a4, a5, a2
	lw t0, 0(a4)
	bne t0, zero, label568
.p2align 2
label66:
	addiw a5, a5, 1
	ld t0, 112(sp)
	ble t0, a5, label292
.p2align 2
label67:
	addi a4, a4, 4
	lw t0, 0(a4)
	beq t0, zero, label66
	sh2add t2, a5, s1
	lw t1, 0(a1)
	addiw a5, a5, 1
	lw t5, 0(t2)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
	ld t0, 112(sp)
	bgt t0, a5, label67
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	bgt t0, a3, label45
	bgt t0, zero, label71
	j label544
.p2align 2
label52:
	sh2add t2, a5, s1
	lw t1, 0(a1)
	lw t3, 0(t2)
	mulw t4, t0, t3
	addw t5, t1, t4
	sw t5, 0(a1)
	j label53
.p2align 2
label83:
	sh2add a1, a2, s1
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s2, a2, label89
	j label552
.p2align 2
label85:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ble s2, a2, label88
.p2align 2
label89:
	addi a1, a1, 16
	j label85
.p2align 2
label72:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ld t0, 112(sp)
	ble t0, a2, label75
.p2align 2
label76:
	addi a1, a1, 4
	j label72
.p2align 2
label88:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	ld t0, 112(sp)
	bgt t0, a2, label76
	mv a1, s1
	mv a2, s5
	mv a3, zero
	bgt t0, zero, label95
	j label346
.p2align 2
label188:
	sh2add a1, a2, s0
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s2, a2, label38
	j label565
.p2align 2
label35:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ble s2, a2, label199
.p2align 2
label38:
	addi a1, a1, 16
	j label35
.p2align 2
label215:
	mv a4, a2
	mv a5, zero
	lw t0, 0(a2)
	beq t0, zero, label66
	mv t2, s1
	lw t1, 0(a1)
	li a5, 1
	lw t5, 0(s1)
	mulw t4, t0, t5
	addw t3, t1, t4
	sw t3, 0(a1)
	ld t0, 112(sp)
	bgt t0, a5, label67
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	bgt t0, a3, label45
	j label547
label206:
	ld t0, 112(sp)
	bgt t0, zero, label71
	j label544
.p2align 2
label46:
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	ld t0, 112(sp)
	bgt t0, a3, label45
	j label206
.p2align 2
label75:
	mv a1, s1
	mv a2, s5
	mv a3, zero
	ld t0, 112(sp)
	bgt t0, zero, label95
	j label346
.p2align 2
label590:
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	ld t0, 112(sp)
	bgt t0, a3, label95
	addiw a0, a0, 1
	blt a0, s7, label18
	j label120
.p2align 2
label552:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	ld t0, 112(sp)
	bgt t0, a2, label76
	mv a1, s1
	mv a2, s5
	mv a3, zero
	bgt t0, zero, label95
	j label346
.p2align 2
label565:
	sh2add a1, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a1)
	ld t0, 112(sp)
	bgt t0, a2, label24
	mv a1, s0
	mv a2, s5
	mv a3, zero
	bgt t0, zero, label45
	j label206
label544:
	mv a1, s1
	mv a2, s5
	mv a3, zero
	ld t0, 112(sp)
	bgt t0, zero, label95
	j label346
label156:
	mv a1, s0
	mv a2, s5
	mv a3, zero
	ld t0, 112(sp)
	bgt t0, zero, label45
	j label206
label346:
	addiw a0, a0, 1
	blt a0, s7, label18
	j label120
.p2align 2
label349:
	addiw a3, a3, 1
	add a2, a2, s3
	addi a1, a1, 4
	ld t0, 112(sp)
	bgt t0, a3, label95
	j label346
label308:
	mv a1, s1
	li a2, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s2, a2, label89
	j label88
.p2align 2
label164:
	mv a1, s0
	mv a2, s5
	mv a3, zero
	ld t0, 112(sp)
	bgt t0, zero, label45
	j label206
.p2align 2
label593:
	ld t0, 112(sp)
	bgt t0, zero, label71
	j label544
.p2align 2
label399:
	sh2add t3, t0, s0
	lw t2, 0(a1)
	lw t5, 0(t3)
	mulw t0, t1, t5
	addw t4, t2, t0
	sw t4, 0(a1)
	j label108
label159:
	mv a1, s0
	mv a2, zero
	j label21
label299:
	mv a1, s1
	mv a2, zero
	j label72
