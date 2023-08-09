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
pcrel620:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel620)
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
pcrel621:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel621)
	mv a0, s3
	jal getarray
pcrel622:
	auipc a1, %pcrel_hi(v)
	addi s0, a1, %pcrel_lo(pcrel622)
	mv a0, s0
	jal getarray
pcrel623:
	auipc a1, %pcrel_hi(a)
	addi s1, a1, %pcrel_lo(pcrel623)
	mv a0, s1
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a4, 100
	mv a5, zero
	li a3, 15
pcrel624:
	auipc a2, %pcrel_hi(b)
	addiw a0, s6, -19
	addiw a1, s6, -4
	addiw s4, s6, -1
	addi s2, a2, %pcrel_lo(pcrel624)
	li a2, 3
	j label2
.p2align 2
label584:
	addiw a5, a5, 1
	bge a5, a4, label61
.p2align 2
label2:
	ble s4, zero, label127
	ble s4, a2, label130
	ble a1, a3, label145
	mv t0, s2
	mv t1, zero
	j label16
.p2align 2
label19:
	addi t0, t0, 64
.p2align 2
label16:
	addiw t1, t1, 16
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label19
	mv t2, t1
	ble a1, t1, label553
.p2align 2
label23:
	sh2add t0, t2, s2
	mv t1, t2
.p2align 2
label24:
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label180
	addi t0, t0, 16
	j label24
.p2align 2
label180:
	ble s4, t1, label555
.p2align 2
label8:
	sh2add t0, t1, s2
	j label9
.p2align 2
label12:
	addi t0, t0, 4
.p2align 2
label9:
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label12
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label84
label31:
	bgt s4, zero, label33
	j label32
.p2align 2
label104:
	addi t4, t4, 4
.p2align 2
label100:
	lw a7, 0(t4)
	sh2add s7, t5, s0
	sh2add t6, a7, s2
	addiw t5, t5, 1
	lw a6, 0(t6)
	lw s8, 0(s7)
	mulw a7, t3, s8
	addw s6, a6, a7
	sw s6, 0(t6)
	bgt t0, t5, label104
	addi t1, t1, 4
	mv t3, t2
	ble s4, t2, label571
.p2align 2
label84:
	lw t5, 0(t1)
	addiw t2, t3, 1
	lw t0, 4(t1)
	bge t5, t0, label360
	addiw t4, t5, 3
	addiw t6, t0, -3
	ble t0, t4, label366
	sh2add t4, t5, s0
	mv a6, t5
.p2align 2
label94:
	sh2add a7, a6, s3
	addiw a6, a6, 4
	lw s9, 0(a7)
	sh2add s7, s9, s2
	lw s6, 0(s7)
	lw s8, 0(t4)
	addw s9, s6, s8
	sw s9, 0(s7)
	lw s10, 4(a7)
	sh2add s6, s10, s2
	lw s7, 0(s6)
	lw s8, 4(t4)
	addw s9, s7, s8
	sw s9, 0(s6)
	lw s11, 8(a7)
	sh2add s7, s11, s2
	lw s6, 0(s7)
	lw s10, 8(t4)
	addw s9, s6, s10
	sw s9, 0(s7)
	lw s8, 12(a7)
	sh2add s6, s8, s2
	lw a7, 0(s6)
	lw s7, 12(t4)
	addw s8, a7, s7
	sw s8, 0(s6)
	ble t6, a6, label425
	addi t4, t4, 16
	j label94
.p2align 2
label425:
	ble t0, a6, label570
.p2align 2
label88:
	sh2add t4, a6, s3
	mv t6, a6
.p2align 2
label89:
	lw s6, 0(t4)
	sh2add s7, t6, s0
	sh2add a6, s6, s2
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s8, 0(s7)
	addw s6, a7, s8
	sw s6, 0(a6)
	ble t0, t6, label385
	addi t4, t4, 4
	j label89
.p2align 2
label385:
	bge t5, t0, label569
.p2align 2
label99:
	sh2add a6, t3, s1
	sh2add t4, t5, s3
	lw t6, 0(a6)
	addi t3, t6, -1
	j label100
.p2align 2
label366:
	mv a6, t5
	bgt t0, t5, label88
	blt t5, t0, label99
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label84
	j label31
.p2align 2
label571:
	ble s4, zero, label32
.p2align 2
label33:
	ble s4, a2, label191
	ble a1, a3, label206
	mv t0, s1
	mv t1, zero
	j label53
.p2align 2
label56:
	addi t0, t0, 64
.p2align 2
label53:
	addiw t1, t1, 16
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label56
	mv t2, t1
	ble a1, t1, label560
.p2align 2
label47:
	sh2add t0, t2, s1
	mv t1, t2
	j label48
.p2align 2
label51:
	addi t0, t0, 16
.p2align 2
label48:
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label51
	ble s4, t1, label559
.p2align 2
label36:
	sh2add t0, t1, s1
	j label37
.p2align 2
label41:
	addi t0, t0, 4
.p2align 2
label37:
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label41
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label62
label60:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label61
.p2align 2
label350:
	addi t1, t1, 4
	mv t3, t2
	ble s4, t2, label584
.p2align 2
label62:
	lw t5, 0(t1)
	addiw t2, t3, 1
	lw t0, 4(t1)
	bge t5, t0, label259
	addiw t4, t5, 3
	addiw t6, t0, -3
	ble t0, t4, label265
	sh2add t4, t5, s0
	mv a6, t5
	j label72
.p2align 2
label75:
	addi t4, t4, 16
.p2align 2
label72:
	sh2add a7, a6, s3
	addiw a6, a6, 4
	lw s8, 0(a7)
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s10, 0(t4)
	addw s8, s7, s10
	sw s8, 0(s6)
	lw s9, 4(a7)
	sh2add s7, s9, s1
	lw s6, 0(s7)
	lw s8, 4(t4)
	addw s9, s6, s8
	sw s9, 0(s7)
	lw s10, 8(a7)
	sh2add s6, s10, s1
	lw s7, 0(s6)
	lw s8, 8(t4)
	addw s9, s7, s8
	sw s9, 0(s6)
	lw s10, 12(a7)
	sh2add s7, s10, s1
	lw a7, 0(s7)
	lw s8, 12(t4)
	addw s6, a7, s8
	sw s6, 0(s7)
	bgt t6, a6, label75
	ble t0, a6, label564
.p2align 2
label66:
	sh2add t4, a6, s3
	mv t6, a6
	j label67
.p2align 2
label70:
	addi t4, t4, 4
.p2align 2
label67:
	lw s7, 0(t4)
	sh2add s6, t6, s0
	sh2add a6, s7, s1
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw s8, a7, s7
	sw s8, 0(a6)
	bgt t0, t6, label70
	bge t5, t0, label563
.p2align 2
label78:
	sh2add a6, t3, s2
	sh2add t4, t5, s3
	lw t6, 0(a6)
	addi t3, t6, -1
.p2align 2
label79:
	lw a7, 0(t4)
	sh2add s8, t5, s0
	sh2add t6, a7, s1
	addiw t5, t5, 1
	lw a6, 0(t6)
	lw a7, 0(s8)
	mulw s6, t3, a7
	addw s7, a6, s6
	sw s7, 0(t6)
	ble t0, t5, label350
	addi t4, t4, 4
	j label79
.p2align 2
label265:
	mv a6, t5
	bgt t0, t5, label66
	blt t5, t0, label78
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label62
	j label60
.p2align 2
label570:
	blt t5, t0, label99
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label84
	j label31
.p2align 2
label564:
	blt t5, t0, label78
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label62
	j label60
.p2align 2
label130:
	mv t1, zero
	bgt s4, zero, label8
	mv t1, s5
	mv t3, zero
	j label31
.p2align 2
label191:
	mv t1, zero
	bgt s4, zero, label36
	mv t1, s5
	mv t3, zero
	j label60
.p2align 2
label553:
	bgt s4, t1, label8
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label84
	j label31
.p2align 2
label206:
	mv t2, zero
	mv t1, zero
	bgt a1, zero, label47
	bgt s4, zero, label36
	mv t1, s5
	mv t3, zero
	j label60
.p2align 2
label560:
	bgt s4, t1, label36
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label62
	j label60
label127:
	mv t1, s5
	mv t3, zero
label28:
	bgt s4, t3, label84
	j label31
label32:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label62
	j label60
.p2align 2
label360:
	blt t5, t0, label99
	addi t1, t1, 4
	mv t3, t2
	j label28
.p2align 2
label259:
	blt t5, t0, label78
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label62
	j label60
.p2align 2
label145:
	mv t2, zero
	mv t1, zero
	bgt a1, zero, label23
	bgt s4, zero, label8
	mv t1, s5
	mv t3, zero
	j label31
.p2align 2
label569:
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label84
	j label31
.p2align 2
label563:
	addi t1, t1, 4
	mv t3, t2
	bgt s4, t2, label62
	j label60
label61:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
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
label555:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label84
	j label31
.p2align 2
label559:
	mv t1, s5
	mv t3, zero
	bgt s4, zero, label62
	j label60
