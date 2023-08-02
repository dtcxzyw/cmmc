.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s8, 40(sp)
	sd s9, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s7, 5
	mv s1, a0
	mv s9, zero
	addiw t0, a0, -20
	lui s2, 1
	li s4, 16
	li s3, 4
pcrel735:
	auipc a1, %pcrel_hi(A)
	addiw s0, a0, -4
	addi s5, a1, %pcrel_lo(pcrel735)
	sd t0, 104(sp)
pcrel736:
	auipc a0, %pcrel_hi(B)
	mv s8, s5
	addi s6, a0, %pcrel_lo(pcrel736)
	bgt s1, zero, label5
label159:
	mv s8, s6
	mv s9, zero
	j label12
.p2align 2
label5:
	mv s10, s8
	mv s11, zero
	j label6
.p2align 2
label9:
	addiw s9, s9, 1
	add s8, s8, s2
	bgt s1, s9, label5
	j label159
label12:
	bgt s1, s9, label143
	j label15
.p2align 2
label6:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s1, s11, label9
	addi s10, s10, 4
	j label6
label15:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel737:
	auipc a2, %pcrel_hi(C)
	addi a0, a2, %pcrel_lo(pcrel737)
	j label16
.p2align 2
label143:
	mv s10, s8
	mv s11, zero
	j label144
.p2align 2
label517:
	addiw s9, s9, 1
	add s8, s8, s2
	bgt s1, s9, label143
	j label15
.p2align 2
label144:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s1, s11, label517
	addi s10, s10, 4
	j label144
.p2align 2
label16:
	mv a2, a0
	mv a3, zero
	bgt s1, zero, label21
	j label178
.p2align 2
label103:
	mv a4, s6
	mv t0, s5
	mv t1, zero
	bgt s1, zero, label108
	j label404
.p2align 2
label644:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label103
	addiw a1, a1, 1
	blt a1, s7, label16
label74:
	mv s5, zero
	mv a0, zero
	bgt s1, zero, label79
	j label102
.p2align 2
label108:
	sh2add t2, a3, t0
	lw a5, 0(t2)
	bne a5, zero, label411
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label108
	j label644
.p2align 2
label428:
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label108
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label103
label668:
	addiw a1, a1, 1
	blt a1, s7, label16
	j label74
.p2align 2
label411:
	ble s1, s3, label643
	mv t2, a4
	mv t3, zero
.p2align 2
label117:
	lw t5, 0(t2)
	sh2add t4, t3, a2
	addiw t3, t3, 4
	lw t6, 0(t4)
	mulw a7, a5, t6
	addw a6, t5, a7
	sw a6, 0(t2)
	lw t6, 4(t2)
	lw t5, 4(t4)
	mulw a6, a5, t5
	addw a7, t6, a6
	sw a7, 4(t2)
	lw t5, 8(t2)
	lw t6, 8(t4)
	mulw a7, a5, t6
	addw a6, t5, a7
	sw a6, 8(t2)
	lw t6, 12(t2)
	lw a7, 12(t4)
	mulw t5, a5, a7
	addw a6, t6, t5
	sw a6, 12(t2)
	ble s0, t3, label120
	addi t2, t2, 16
	j label117
.p2align 2
label112:
	lw t4, 0(t2)
	sh2add t6, t3, a2
	addiw t3, t3, 1
	lw t5, 0(t6)
	mulw a7, a5, t5
	addw a6, t4, a7
	sw a6, 0(t2)
	ble s1, t3, label428
.p2align 2
label115:
	addi t2, t2, 4
	j label112
.p2align 2
label120:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t6, t3, a2
	addiw t3, t3, 1
	lw t5, 0(t6)
	mulw a7, a5, t5
	addw a6, t4, a7
	sw a6, 0(t2)
	bgt s1, t3, label115
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label108
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label103
	j label668
.p2align 2
label79:
	bgt s1, s3, label80
	mv a1, s6
	mv a4, zero
	mv a2, s5
	lw a3, 0(s6)
	li a4, 1
	addw a2, s5, a3
	bgt s1, a4, label100
	j label397
.p2align 2
label80:
	ble s0, s4, label81
	mv a1, s6
	mv a2, zero
	mv a3, s5
.p2align 2
label89:
	lw t0, 0(a1)
	addiw a2, a2, 16
	lw t2, 4(a1)
	addw a4, a3, t0
	lw t1, 8(a1)
	addw a5, a4, t2
	lw a4, 12(a1)
	addw a3, a5, t1
	lw t2, 16(a1)
	addw t0, a3, a4
	lw t1, 20(a1)
	addw a5, t0, t2
	lw t0, 24(a1)
	addw a4, a5, t1
	lw t1, 28(a1)
	addw a3, a4, t0
	lw t0, 32(a1)
	addw a5, a3, t1
	lw t1, 36(a1)
	addw a4, a5, t0
	lw t2, 40(a1)
	addw a3, a4, t1
	lw a4, 44(a1)
	addw t0, a3, t2
	lw t1, 48(a1)
	addw a5, t0, a4
	lw t2, 52(a1)
	addw a3, a5, t1
	lw t0, 56(a1)
	addw a4, a3, t2
	lw t1, 60(a1)
	addw a5, a4, t0
	ld t0, 104(sp)
	addw a3, a5, t1
	ble t0, a2, label93
	addi a1, a1, 64
	j label89
.p2align 2
label397:
	addiw a0, a0, 1
	add s6, s6, s2
	mv s5, a2
	bgt s1, a0, label79
label102:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s5
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s8, 40(sp)
	ld s9, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label21:
	ble s1, s3, label181
	ble s0, s4, label184
	mv a4, a2
	mv a5, zero
	j label30
.p2align 2
label223:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label21
.p2align 2
label657:
	mv a2, s6
	mv a3, zero
	bgt s1, zero, label45
	j label230
.p2align 2
label30:
	sd zero, 0(a4)
	addiw a5, a5, 16
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	ld t0, 104(sp)
	ble t0, a5, label215
	addi a4, a4, 64
	j label30
.p2align 2
label23:
	sw zero, 0(a4)
	addiw a5, a5, 4
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	ble s0, a5, label192
.p2align 2
label26:
	addi a4, a4, 16
	j label23
.p2align 2
label215:
	sh2add a4, a5, a2
	sw zero, 0(a4)
	addiw a5, a5, 4
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s0, a5, label26
	sh2add a4, a5, a2
	sw zero, 0(a4)
	addiw a5, a5, 1
	bgt s1, a5, label38
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label21
	j label657
.p2align 2
label192:
	sh2add a4, a5, a2
	sw zero, 0(a4)
	addiw a5, a5, 1
	bgt s1, a5, label38
	j label655
.p2align 2
label35:
	sw zero, 0(a4)
	addiw a5, a5, 1
	ble s1, a5, label223
.p2align 2
label38:
	addi a4, a4, 4
	j label35
.p2align 2
label45:
	mv a4, a0
	mv t0, s5
	mv t1, zero
	bgt s1, zero, label50
	j label234
.p2align 2
label635:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label45
	mv a2, s6
	mv a3, zero
	bgt s1, zero, label123
	j label658
.p2align 2
label50:
	sh2add t2, a3, t0
	lw a5, 0(t2)
	bne a5, zero, label241
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label50
	j label635
.p2align 2
label258:
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label50
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label45
label661:
	mv a2, s6
	mv a3, zero
	bgt s1, zero, label123
	j label658
.p2align 2
label241:
	ble s1, s3, label634
	mv t2, a4
	mv t3, zero
.p2align 2
label59:
	lw t5, 0(t2)
	sh2add t4, t3, a2
	addiw t3, t3, 4
	lw t6, 0(t4)
	mulw a7, a5, t6
	addw a6, t5, a7
	sw a6, 0(t2)
	lw t6, 4(t2)
	lw t5, 4(t4)
	mulw a7, a5, t5
	addw s8, t6, a7
	sw s8, 4(t2)
	lw a6, 8(t2)
	lw t5, 8(t4)
	mulw t6, a5, t5
	addw a7, a6, t6
	sw a7, 8(t2)
	lw t5, 12(t2)
	lw a6, 12(t4)
	mulw t6, a5, a6
	addw a7, t5, t6
	sw a7, 12(t2)
	ble s0, t3, label288
	addi t2, t2, 16
	j label59
.p2align 2
label53:
	lw t4, 0(t2)
	sh2add t5, t3, a2
	addiw t3, t3, 1
	lw a6, 0(t5)
	mulw t6, a5, a6
	addw a7, t4, t6
	sw a7, 0(t2)
	ble s1, t3, label258
.p2align 2
label56:
	addi t2, t2, 4
	j label53
.p2align 2
label288:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t5, t3, a2
	addiw t3, t3, 1
	lw a6, 0(t5)
	mulw t6, a5, a6
	addw a7, t4, t6
	sw a7, 0(t2)
	bgt s1, t3, label56
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label50
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label45
	j label661
.p2align 2
label123:
	ble s1, s3, label466
	ble s0, s4, label125
	mv a4, a2
	mv a5, zero
	j label132
.p2align 2
label508:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label123
	mv a2, a0
	mv a3, zero
	bgt s1, zero, label103
	j label73
.p2align 2
label132:
	sd zero, 0(a4)
	addiw a5, a5, 16
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	ld t0, 104(sp)
	ble t0, a5, label500
	addi a4, a4, 64
	j label132
.p2align 2
label126:
	sw zero, 0(a4)
	addiw a5, a5, 4
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	ble s0, a5, label129
.p2align 2
label130:
	addi a4, a4, 16
	j label126
.p2align 2
label500:
	sh2add a4, a5, a2
	sw zero, 0(a4)
	addiw a5, a5, 4
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s0, a5, label130
	sh2add a4, a5, a2
	sw zero, 0(a4)
	addiw a5, a5, 1
	bgt s1, a5, label140
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label123
	j label658
.p2align 2
label129:
	sh2add a4, a5, a2
	sw zero, 0(a4)
	addiw a5, a5, 1
	bgt s1, a5, label140
	j label648
.p2align 2
label137:
	sw zero, 0(a4)
	addiw a5, a5, 1
	ble s1, a5, label508
.p2align 2
label140:
	addi a4, a4, 4
	j label137
.p2align 2
label86:
	sh2add a1, a2, s6
	mv a4, a2
	mv a2, a3
	lw a3, 0(a1)
	addiw a4, a4, 1
	addw a2, a2, a3
	bgt s1, a4, label100
	j label640
.p2align 2
label96:
	lw a3, 0(a1)
	addiw a4, a4, 1
	addw a2, a2, a3
	ble s1, a4, label397
.p2align 2
label100:
	addi a1, a1, 4
	j label96
.p2align 2
label82:
	lw a4, 0(a1)
	addiw a2, a2, 4
	lw t2, 4(a1)
	addw t0, a3, a4
	lw t1, 8(a1)
	addw a5, t0, t2
	lw t0, 12(a1)
	addw a4, a5, t1
	addw a3, a4, t0
	ble s0, a2, label86
.p2align 2
label87:
	addi a1, a1, 16
	j label82
.p2align 2
label93:
	sh2add a1, a2, s6
	lw a4, 0(a1)
	addiw a2, a2, 4
	lw t2, 4(a1)
	addw t0, a3, a4
	lw t1, 8(a1)
	addw a5, t0, t2
	lw t0, 12(a1)
	addw a4, a5, t1
	addw a3, a4, t0
	bgt s0, a2, label87
	sh2add a1, a2, s6
	mv a4, a2
	mv a2, a3
	lw a3, 0(a1)
	addiw a4, a4, 1
	addw a2, a2, a3
	bgt s1, a4, label100
	addiw a0, a0, 1
	add s6, s6, s2
	mv s5, a2
	bgt s1, a0, label79
	j label102
.p2align 2
label634:
	mv t2, a4
	mv t3, zero
	lw t4, 0(a4)
	mv t5, a2
	li t3, 1
	lw a6, 0(a2)
	mulw t6, a5, a6
	addw a7, t4, t6
	sw a7, 0(a4)
	bgt s1, t3, label56
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label50
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label45
	j label661
.p2align 2
label643:
	mv t2, a4
	mv t3, zero
	lw t4, 0(a4)
	mv t6, a2
	li t3, 1
	lw t5, 0(a2)
	mulw a7, a5, t5
	addw a6, t4, a7
	sw a6, 0(a4)
	bgt s1, t3, label115
	addiw t1, t1, 1
	add t0, t0, s2
	add a4, a4, s2
	bgt s1, t1, label108
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label103
	j label668
.p2align 2
label125:
	mv a4, a2
	mv a5, zero
	j label126
.p2align 2
label466:
	mv a4, a2
	mv a5, zero
	sw zero, 0(a2)
	li a5, 1
	bgt s1, a5, label140
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label123
	j label658
.p2align 2
label181:
	mv a4, a2
	mv a5, zero
	sw zero, 0(a2)
	li a5, 1
	bgt s1, a5, label38
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label21
	j label657
label81:
	mv a1, s6
	mv a3, s5
	mv a2, zero
	j label82
label658:
	mv a2, a0
	mv a3, zero
	bgt s1, zero, label103
	j label73
.p2align 2
label648:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label123
	j label658
.p2align 2
label655:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label21
	j label657
.p2align 2
label640:
	addiw a0, a0, 1
	add s6, s6, s2
	mv s5, a2
	bgt s1, a0, label79
	j label102
label230:
	mv a2, s6
	mv a3, zero
	bgt s1, zero, label123
	j label658
.p2align 2
label234:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label45
	j label230
label73:
	addiw a1, a1, 1
	blt a1, s7, label16
	j label74
.p2align 2
label404:
	addiw a3, a3, 1
	add a2, a2, s2
	bgt s1, a3, label103
	j label73
label178:
	mv a2, s6
	mv a3, zero
	bgt s1, zero, label45
	j label230
.p2align 2
label184:
	mv a4, a2
	mv a5, zero
	j label23
