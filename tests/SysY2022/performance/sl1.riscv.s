.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
pcrel665:
	auipc a2, %pcrel_hi(x)
	addiw a0, s1, -2
	addiw a3, s1, -57
	addiw a5, s1, -11
	mv t3, zero
	addiw a4, s1, -4
	addiw t0, s1, -26
	addiw a1, s1, -1
	addi s2, a2, %pcrel_lo(pcrel665)
	mv t2, s2
	bgt s1, zero, label5
	j label105
.p2align 2
label589:
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	ble s1, t3, label105
.p2align 2
label5:
	mv t1, t2
	mv t4, zero
	bgt s1, zero, label9
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label253:
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	ble s1, t4, label589
.p2align 2
label9:
	li a2, 1
	ble s1, a2, label113
	li t6, 3
	ble a1, t6, label117
	li t6, 7
	ble a4, t6, label134
	li a6, 15
	ble a5, a6, label153
	li a2, 31
	ble t0, a2, label157
	mv a2, t1
	mv t5, zero
.p2align 2
label43:
	addiw t5, t5, 32
	li a7, 1
	slli a6, a7, 32
	addi t6, a6, 1
	sd t6, 0(a2)
	sd t6, 8(a2)
	sd t6, 16(a2)
	sd t6, 24(a2)
	sd t6, 32(a2)
	sd t6, 40(a2)
	sd t6, 48(a2)
	sd t6, 56(a2)
	sd t6, 64(a2)
	sd t6, 72(a2)
	sd t6, 80(a2)
	sd t6, 88(a2)
	sd t6, 96(a2)
	sd t6, 104(a2)
	sd t6, 112(a2)
	sd t6, 120(a2)
	ble a3, t5, label220
	addi a2, a2, 128
	j label43
.p2align 2
label220:
	mv t6, t5
	bgt t0, t5, label35
	bgt a5, t5, label50
	mv a2, t5
	bgt a4, t5, label23
	bgt a1, t5, label14
	bgt s1, t5, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	j label635
.p2align 2
label604:
	mv a2, t5
	bgt a4, t5, label23
	bgt a1, t5, label14
	ble s1, t5, label633
.p2align 2
label60:
	sh2add a2, t5, t1
.p2align 2
label61:
	addiw t5, t5, 1
	li t6, 1
	sw t6, 0(a2)
	ble s1, t5, label253
	addi a2, a2, 4
	j label61
.p2align 2
label39:
	addi a2, a2, 64
	mv t6, t5
.p2align 2
label36:
	addiw t5, t6, 16
	li a7, 1
	slli a6, a7, 32
	addi t6, a6, 1
	sd t6, 0(a2)
	sd t6, 8(a2)
	sd t6, 16(a2)
	sd t6, 24(a2)
	sd t6, 32(a2)
	sd t6, 40(a2)
	sd t6, 48(a2)
	sd t6, 56(a2)
	bgt t0, t5, label39
	mv t6, t5
	ble a5, t5, label604
.p2align 2
label50:
	sh2add a2, t6, t1
.p2align 2
label51:
	addiw t5, t6, 8
	li a7, 1
	slli a6, a7, 32
	addi t6, a6, 1
	sd t6, 0(a2)
	sd t6, 8(a2)
	sd t6, 16(a2)
	sd t6, 24(a2)
	ble a5, t5, label239
	addi a2, a2, 32
	mv t6, t5
	j label51
.p2align 2
label239:
	mv a2, t5
	ble a4, t5, label607
.p2align 2
label23:
	sh2add a2, t5, t1
	j label24
.p2align 2
label27:
	addi a2, a2, 16
.p2align 2
label24:
	addiw t5, t5, 4
	li a7, 1
	slli a6, a7, 32
	addi t6, a6, 1
	sd t6, 0(a2)
	sd t6, 8(a2)
	bgt a4, t5, label27
	mv a2, t5
	bgt a1, t5, label14
	bgt s1, t5, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label607:
	mv t5, a2
	ble a1, a2, label620
.p2align 2
label14:
	sh2add a2, t5, t1
	j label15
.p2align 2
label18:
	addi a2, a2, 8
.p2align 2
label15:
	addiw t5, t5, 2
	li a7, 1
	slli t6, a7, 32
	addi a6, t6, 1
	sd a6, 0(a2)
	bgt a1, t5, label18
	bgt s1, t5, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label620:
	mv t5, a2
	bgt s1, a2, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label117:
	mv t5, zero
	mv a2, zero
	bgt a1, zero, label14
	bgt s1, zero, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label134:
	mv t5, zero
	mv a2, zero
	bgt a4, zero, label23
	bgt a1, zero, label14
	bgt s1, zero, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
label621:
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label157:
	mv t6, zero
	mv t5, zero
	bgt t0, zero, label35
	bgt a5, zero, label50
	mv a2, zero
	bgt a4, zero, label23
	bgt a1, zero, label14
	bgt s1, zero, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	j label635
.p2align 2
label113:
	mv t5, zero
	bgt s1, zero, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
	j label105
.p2align 2
label153:
	mv t6, zero
	mv t5, zero
	bgt a5, zero, label50
	mv a2, zero
	bgt a4, zero, label23
	bgt a1, zero, label14
	bgt s1, zero, label60
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
	j label621
.p2align 2
label633:
	addiw t4, t4, 1
	li t5, 75
	slli a2, t5, 5
	add t1, t1, a2
	bgt s1, t4, label9
label635:
	addiw t3, t3, 1
	lui t1, 352
	addiw a2, t1, -1792
	add t2, t2, a2
	bgt s1, t3, label5
label105:
	lui a3, 352
	li s4, 1
	addiw a2, a3, -1792
	add a4, s2, a2
	mv a2, s4
	lui a3, 1048224
	addiw a5, s4, 1
	addiw t0, a3, 1792
	sub t1, zero, t0
	add s3, a4, t0
	add a3, a4, t1
	bgt a1, s4, label71
	j label93
.p2align 2
label75:
	lui a3, 352
	mv s4, t1
	addiw a2, a3, -1792
	lui a3, 1048224
	add a4, a4, a2
	addiw t0, a3, 1792
	mv a2, a5
	sub t1, zero, t0
	add s3, a4, t0
	addiw a5, a5, 1
	add a3, a4, t1
	ble a1, a2, label93
.p2align 2
label71:
	li t1, 75
	slli t0, t1, 5
	li t1, 1
	add a2, a4, t0
	bgt a1, t1, label76
	j label75
.p2align 2
label89:
	li t1, 75
	slli t2, t1, 5
	mv t1, t0
	add a2, a2, t2
	ble a1, t0, label75
.p2align 2
label76:
	addiw t0, t1, 1
	li t2, 2
	blt a1, t2, label275
	li t2, 75
	li a6, 2
	slli t5, t2, 5
	sub t6, zero, t5
	mul t3, t1, t5
	add t2, a2, t6
	add t1, a3, t3
	add t4, s3, t3
	add t3, a2, t5
	ble a1, a6, label285
	addi t5, t4, 4
	li t6, 1
	j label79
.p2align 2
label82:
	addi t5, t5, 8
.p2align 2
label79:
	sh2add a6, t6, t1
	lw s5, 0(t5)
	sh2add s4, t6, t2
	lw s6, 0(a6)
	lw s7, 0(s4)
	addw a7, s5, s6
	sh2add s5, t6, t3
	addw s6, a7, s7
	lw s8, 0(s5)
	sh2add a7, t6, a2
	addw s7, s6, s8
	addiw t6, t6, 2
	lw s9, -4(a7)
	lw s11, 4(a7)
	addw s8, s7, s9
	addw s10, s8, s11
	divw s6, s10, s0
	sw s6, 0(a7)
	lw s11, 4(t5)
	lw s9, 4(a6)
	addw s8, s6, s11
	lw a6, 4(s4)
	addw s7, s8, s9
	lw s8, 4(s5)
	addw s6, s7, a6
	lw s7, 8(a7)
	addw a6, s6, s8
	addw s5, a6, s7
	divw s4, s5, s0
	sw s4, 4(a7)
	bgt a0, t6, label82
	bgt a1, t6, label592
.p2align 2
label91:
	li t1, 75
	slli t2, t1, 5
	mv t1, t0
	add a2, a2, t2
	bgt a1, t0, label76
	j label75
.p2align 2
label592:
	sh2add t4, t6, t4
	mv t5, t6
.p2align 2
label86:
	sh2add a7, t5, t1
	lw a6, 0(t4)
	sh2add s6, t5, t2
	lw s4, 0(a7)
	sh2add s5, t5, t3
	addw t6, a6, s4
	lw a6, 0(s6)
	lw s4, 0(s5)
	addw a7, t6, a6
	sh2add t6, t5, a2
	addw a6, a7, s4
	addiw t5, t5, 1
	lw s5, -4(t6)
	lw s4, 4(t6)
	addw a7, a6, s5
	addw a6, a7, s4
	divw s5, a6, s0
	sw s5, 0(t6)
	ble a1, t5, label89
	addi t4, t4, 4
	j label86
label93:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s2
	jal putarray
	srliw a0, s1, 31
	lui a4, 352
	li a5, 75
	add a3, s1, a0
	addiw a1, a4, -1792
	slli s0, a5, 5
	sraiw a2, a3, 1
	mul a4, a2, s0
	mul a0, a2, a1
	add a3, s2, a0
	mv a0, s1
	add a1, a3, a4
	jal putarray
	mv a0, s1
	addiw a3, s4, -1
	mul a2, a3, s0
	add a1, s3, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label275:
	li t3, 75
	mv t1, t0
	slli t2, t3, 5
	add a2, a2, t2
	bgt a1, t0, label76
	j label75
.p2align 2
label35:
	sh2add a2, t6, t1
	j label36
.p2align 2
label285:
	li t6, 1
	ble a1, t6, label91
	j label592
