.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
pcrel634:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel634)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	mv a0, s5
	jal getarray
pcrel635:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel635)
	mv a0, s3
	jal getarray
pcrel636:
	auipc a1, %pcrel_hi(v)
	addi s0, a1, %pcrel_lo(pcrel636)
	mv a0, s0
	jal getarray
pcrel637:
	auipc a1, %pcrel_hi(a)
	addi s1, a1, %pcrel_lo(pcrel637)
	mv a0, s1
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 15
	li a4, 100
	mv a5, zero
pcrel638:
	auipc a2, %pcrel_hi(b)
	addiw a0, s6, -19
	addiw a1, s6, -4
	addiw s4, s6, -1
	addi s2, a2, %pcrel_lo(pcrel638)
	li a2, 3
	j label2
.p2align 2
label592:
	addiw a5, a5, 1
	bge a5, a4, label106
.p2align 2
label2:
	ble s4, zero, label127
	ble s4, a2, label130
	ble a1, a3, label133
	mv t0, s2
	mv t1, zero
	j label7
.p2align 2
label10:
	addi t0, t0, 64
.p2align 2
label7:
	addiw t1, t1, 16
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label10
	mv t2, t1
	ble a1, t1, label560
.p2align 2
label14:
	sh2add t0, t2, s2
	mv t1, t2
.p2align 2
label15:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	ble a1, t1, label168
	addi t0, t0, 16
	j label15
.p2align 2
label168:
	ble s4, t1, label562
.p2align 2
label22:
	sh2add t0, t1, s2
.p2align 2
label23:
	addiw t1, t1, 1
	sw zero, 0(t0)
	ble s4, t1, label26
	addi t0, t0, 4
	j label23
.p2align 2
label26:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label32
label185:
	bgt s4, zero, label56
	j label565
.p2align 2
label51:
	addi t4, t4, 4
.p2align 2
label48:
	lw a7, 0(t4)
	sh2add t6, a7, s2
	sh2add a7, t5, s0
	addiw t5, t5, 1
	lw a6, 0(t6)
	lw s6, 0(a7)
	mulw s7, t3, s6
	addw a7, a6, s7
	sw a7, 0(t6)
	bgt t0, t5, label51
	addi t1, t1, 4
	mv t3, t2
	ble s4, t2, label589
.p2align 2
label32:
	lw t5, 0(t1)
	addiw t2, t3, 1
	lw t0, 4(t1)
	bge t5, t0, label193
	addiw t4, t5, 3
	addiw t6, t0, -3
	ble t0, t4, label199
	sh2add t4, t5, s0
	mv a6, t5
	j label42
.p2align 2
label45:
	addi t4, t4, 16
.p2align 2
label42:
	sh2add a7, a6, s3
	addiw a6, a6, 4
	lw s8, 0(a7)
	sh2add s7, s8, s2
	lw s6, 0(s7)
	lw s10, 0(t4)
	addw s8, s6, s10
	sw s8, 0(s7)
	lw s9, 4(a7)
	sh2add s6, s9, s2
	lw s7, 0(s6)
	lw s8, 4(t4)
	addw s9, s7, s8
	sw s9, 0(s6)
	lw s10, 8(a7)
	sh2add s7, s10, s2
	lw s6, 0(s7)
	lw s11, 8(t4)
	addw s9, s6, s11
	sw s9, 0(s7)
	lw s8, 12(a7)
	sh2add s6, s8, s2
	lw a7, 0(s6)
	lw s9, 12(t4)
	addw s7, a7, s9
	sw s7, 0(s6)
	bgt t6, a6, label45
	ble t0, a6, label569
.p2align 2
label36:
	sh2add t4, a6, s3
	mv t6, a6
	j label37
.p2align 2
label40:
	addi t4, t4, 4
.p2align 2
label37:
	lw s6, 0(t4)
	sh2add s7, t6, s0
	sh2add a6, s6, s2
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s6, 0(s7)
	addw s8, a7, s6
	sw s8, 0(a6)
	bgt t0, t6, label40
	bge t5, t0, label568
.p2align 2
label47:
	sh2add t6, t3, s1
	sh2add t4, t5, s3
	lw a6, 0(t6)
	addi t3, a6, -1
	j label48
.p2align 2
label199:
	mv a6, t5
	bgt t0, t5, label36
	blt t5, t0, label47
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label32
	j label185
.p2align 2
label589:
	ble s4, zero, label565
.p2align 2
label56:
	ble s4, a2, label292
	ble a1, a3, label295
	mv t0, s1
	mv t1, zero
	j label67
.p2align 2
label70:
	addi t0, t0, 64
.p2align 2
label67:
	addiw t1, t1, 16
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label70
	mv t2, t1
	ble a1, t1, label575
.p2align 2
label61:
	sh2add t0, t2, s1
	mv t1, t2
	j label62
.p2align 2
label65:
	addi t0, t0, 16
.p2align 2
label62:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a1, t1, label65
	ble s4, t1, label574
.p2align 2
label73:
	sh2add t0, t1, s1
	j label74
.p2align 2
label78:
	addi t0, t0, 4
.p2align 2
label74:
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label78
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label83
label347:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label106
.p2align 2
label90:
	addi t4, t4, 4
.p2align 2
label87:
	lw a7, 0(t4)
	sh2add t6, a7, s1
	sh2add a7, t5, s0
	addiw t5, t5, 1
	lw a6, 0(t6)
	lw s7, 0(a7)
	mulw s6, t3, s7
	addw a7, a6, s6
	sw a7, 0(t6)
	bgt t0, t5, label90
	addi t1, t1, 4
	mv t3, t2
	ble s4, t2, label592
.p2align 2
label83:
	lw t5, 0(t1)
	addiw t2, t3, 1
	lw t0, 4(t1)
	bge t5, t0, label84
	addiw t4, t5, 3
	addiw t6, t0, -3
	ble t0, t4, label388
	sh2add t4, t5, s0
	mv a6, t5
.p2align 2
label94:
	sh2add a7, a6, s3
	addiw a6, a6, 4
	lw s8, 0(a7)
	sh2add s7, s8, s1
	lw s6, 0(s7)
	lw s10, 0(t4)
	addw s9, s6, s10
	sw s9, 0(s7)
	lw s8, 4(a7)
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s10, 4(t4)
	addw s9, s7, s10
	sw s9, 0(s6)
	lw s8, 8(a7)
	sh2add s7, s8, s1
	lw s6, 0(s7)
	lw s10, 8(t4)
	addw s9, s6, s10
	sw s9, 0(s7)
	lw s8, 12(a7)
	sh2add s6, s8, s1
	lw a7, 0(s6)
	lw s9, 12(t4)
	addw s7, a7, s9
	sw s7, 0(s6)
	ble t6, a6, label427
	addi t4, t4, 16
	j label94
.p2align 2
label427:
	ble t0, a6, label581
.p2align 2
label100:
	sh2add t4, a6, s3
	mv t6, a6
	j label101
.p2align 2
label104:
	addi t4, t4, 4
.p2align 2
label101:
	lw s6, 0(t4)
	sh2add s8, t6, s0
	sh2add a6, s6, s1
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s7, 0(s8)
	addw s6, a7, s7
	sw s6, 0(a6)
	bgt t0, t6, label104
	bge t5, t0, label583
.p2align 2
label86:
	sh2add a6, t3, s2
	sh2add t4, t5, s3
	lw t6, 0(a6)
	addi t3, t6, -1
	j label87
.p2align 2
label84:
	blt t5, t0, label86
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label83
	j label347
.p2align 2
label388:
	mv a6, t5
	bgt t0, t5, label100
	blt t5, t0, label86
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label83
	j label347
.p2align 2
label581:
	blt t5, t0, label86
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label83
	j label347
.p2align 2
label569:
	blt t5, t0, label47
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label32
	j label185
.p2align 2
label560:
	bgt s4, t1, label22
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label32
	j label185
.p2align 2
label295:
	mv t2, zero
	mv t1, zero
	bgt a1, zero, label61
	bgt s4, zero, label73
	mv t1, s5
	mv t3, zero
	j label347
.p2align 2
label575:
	bgt s4, t1, label73
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label83
	j label347
label565:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label83
	j label347
label127:
	mv t1, s5
	mv t3, zero
label29:
	bgt s4, t3, label32
	j label185
.p2align 2
label193:
	blt t5, t0, label47
	addi t1, t1, 4
	mv t3, t2
	j label29
.p2align 2
label130:
	mv t1, zero
	bgt s4, zero, label22
	mv t1, s5
	mv t3, zero
	j label185
.p2align 2
label292:
	mv t1, zero
	bgt s4, zero, label73
	j label565
.p2align 2
label133:
	mv t2, zero
	mv t1, zero
	bgt a1, zero, label14
	bgt s4, zero, label22
	mv t1, s5
	mv t3, zero
	j label185
.p2align 2
label583:
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label83
	j label347
.p2align 2
label568:
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label32
	j label185
label106:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label562:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label32
	j label185
.p2align 2
label574:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label83
	j label347
