.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel650:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel650)
pcrel651:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel651)
pcrel652:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel652)
	mv s5, zero
label2:
	ble s0, s5, label126
	j label4
label126:
	mv s4, zero
	j label9
label4:
	ble s0, zero, label5
	j label128
label5:
	addiw s5, s5, 1
	j label2
label9:
	ble s0, s4, label16
	ble s0, zero, label147
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	j label13
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
label17:
	mv a2, zero
label19:
	ble s0, a2, label162
	j label21
label162:
	mv a2, zero
	j label34
label21:
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label22
	mv a4, zero
	j label23
label22:
	addiw a2, a2, 1
	j label19
label23:
	addiw a3, a4, 4
	ble s0, a3, label25
	j label172
label34:
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label211
	mv a3, zero
	j label94
label211:
	mv a2, zero
label36:
	ble s0, a2, label215
	j label81
label215:
	mv a2, zero
label38:
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label40
	mv a3, zero
	j label60
label40:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label226
	j label17
label226:
	mv a0, zero
	mv s2, zero
label41:
	ble s0, a0, label59
	ble s0, zero, label45
	j label232
label59:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label60:
	ble s0, a3, label62
	j label63
label62:
	addiw a2, a2, 1
	j label38
label63:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	j label294
label81:
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
label83:
	addiw a3, a4, 4
	ble s0, a3, label85
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label83
label94:
	ble s0, a3, label96
	j label97
label96:
	addiw a2, a2, 1
	j label34
label97:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label473
label65:
	ble s0, zero, label294
	slliw a4, a3, 12
	add a4, s1, a4
	li t0, 4
	ble s0, t0, label304
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label68
label304:
	mv t1, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, zero
label73:
	addiw t0, t2, 4
	ble s0, t0, label75
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label73
label75:
	addiw t0, t2, 4
	ble s0, t0, label352
	j label77
label352:
	mv t0, t2
	j label78
label77:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label75
label78:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label294
	j label78
label68:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label71
	mv t3, t1
	mv t1, t2
	j label68
label473:
	addiw a3, a3, 1
	j label94
label294:
	addiw a3, a3, 1
	j label60
label98:
	ble s0, zero, label473
	slliw a4, a3, 12
	add a4, s3, a4
	li t0, 4
	ble s0, t0, label482
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label111
label482:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
label102:
	addiw t0, t2, 4
	ble s0, t0, label104
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label102
label104:
	addiw t0, t2, 4
	ble s0, t0, label495
	j label108
label495:
	mv t0, t2
label106:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label473
	j label106
label108:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label104
label111:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label594
	mv t3, t1
	mv t1, t2
	j label111
label594:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label102
label71:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, t1
	j label73
label85:
	addiw a3, a4, 4
	ble s0, a3, label433
	j label432
label433:
	mv a3, a4
label87:
	addiw a4, a3, 4
	ble s0, a4, label90
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	j label87
label90:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label82
	j label90
label25:
	addiw a3, a4, 4
	ble s0, a3, label178
	j label177
label178:
	mv a3, a4
label27:
	addiw a4, a3, 4
	ble s0, a4, label30
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	j label27
label30:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label22
	j label30
label432:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label85
label177:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label25
label172:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label23
label13:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label147
	j label13
label82:
	addiw a2, a2, 1
	j label36
label147:
	addiw s4, s4, 1
	j label9
label45:
	addiw a0, a0, 1
	j label41
label128:
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
label7:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label7
label232:
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, s2
label48:
	addiw a2, a4, 4
	ble s0, a2, label52
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	j label48
label52:
	addiw a2, a4, 4
	ble s0, a2, label259
	j label58
label259:
	mv a2, a4
label55:
	sh2add a4, a2, a1
	lw a4, 0(a4)
	addw a3, a3, a4
	addiw a2, a2, 1
	ble s0, a2, label268
	j label55
label268:
	mv s2, a3
	addiw a0, a0, 1
	j label41
label58:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	j label52
