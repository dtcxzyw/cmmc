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
pcrel723:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel723)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	mv a0, s5
	jal getarray
pcrel724:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel724)
	mv a0, s3
	jal getarray
pcrel725:
	auipc a1, %pcrel_hi(v)
	addi s2, a1, %pcrel_lo(pcrel725)
	mv a0, s2
	jal getarray
pcrel726:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel726)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 16
	mv a5, zero
pcrel727:
	auipc a2, %pcrel_hi(b)
	li a4, 100
	addiw a0, s6, -21
	addiw a1, s6, -5
	addiw s4, s6, -1
	addi s1, a2, %pcrel_lo(pcrel727)
	li a2, 4
.p2align 2
label2:
	ble s4, zero, label125
	ble s4, a2, label5
	ble a1, a3, label131
	mv t0, s1
	mv t1, zero
	j label8
.p2align 2
label56:
	addiw t2, t3, 1
	lw t4, 0(t0)
	sh2add t5, t2, s5
	lw t1, 0(t5)
	bge t4, t1, label336
	addiw t5, t4, 4
	addiw a6, t1, -4
	bgt t1, t5, label59
	sh2add t6, t4, s3
	addiw a7, t4, 1
	sh2add s9, t4, s2
	lw s7, 0(t6)
	sh2add a6, s7, s0
	lw s6, 0(a6)
	lw s8, 0(s9)
	addw s7, s6, s8
	sw s7, 0(a6)
	bgt t1, a7, label68
	sh2add t6, t3, s1
	lw a6, 0(t6)
	addi t3, a6, -1
	sh2add t6, t4, s3
	mv t5, t4
	lw a7, 0(t6)
	sh2add s8, t4, s2
	sh2add t4, a7, s0
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw s7, 0(s8)
	mulw a7, t3, s7
	addw s6, a6, a7
	sw s6, 0(t4)
	bgt t1, t5, label73
	j label421
.p2align 2
label59:
	sh2add t6, t4, s3
	mv a7, t4
	j label60
.p2align 2
label421:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label56
.p2align 2
label668:
	addiw a5, a5, 1
	blt a5, a4, label2
label82:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label60:
	lw s9, 0(t6)
	sh2add s6, a7, s2
	sh2add s7, s9, s0
	addiw a7, a7, 4
	lw s8, 0(s7)
	lw s11, 0(s6)
	addw s10, s8, s11
	sw s10, 0(s7)
	lw s9, 4(t6)
	sh2add s8, s9, s0
	lw s7, 0(s8)
	lw s11, 4(s6)
	addw s9, s7, s11
	sw s9, 0(s8)
	lw s10, 8(t6)
	sh2add s7, s10, s0
	lw s8, 0(s7)
	lw s9, 8(s6)
	addw s11, s8, s9
	sw s11, 0(s7)
	lw s10, 12(t6)
	sh2add s8, s10, s0
	lw s7, 0(s8)
	lw s9, 12(s6)
	addw s10, s7, s9
	sw s10, 0(s8)
	ble a6, a7, label383
	addi t6, t6, 16
	j label60
.p2align 2
label383:
	sh2add t6, a7, s3
	sh2add s9, a7, s2
	lw s7, 0(t6)
	addiw a7, a7, 1
	sh2add a6, s7, s0
	lw s6, 0(a6)
	lw s8, 0(s9)
	addw s7, s6, s8
	sw s7, 0(a6)
	bgt t1, a7, label68
	j label666
.p2align 2
label65:
	lw s7, 0(t6)
	sh2add s9, a7, s2
	sh2add a6, s7, s0
	addiw a7, a7, 1
	lw s6, 0(a6)
	lw s8, 0(s9)
	addw s7, s6, s8
	sw s7, 0(a6)
	ble t1, a7, label399
.p2align 2
label68:
	addi t6, t6, 4
	j label65
.p2align 2
label70:
	lw a7, 0(t6)
	sh2add s8, t5, s2
	sh2add t4, a7, s0
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw s7, 0(s8)
	mulw a7, t3, s7
	addw s6, a6, a7
	sw s6, 0(t4)
	ble t1, t5, label421
.p2align 2
label73:
	addi t6, t6, 4
	j label70
.p2align 2
label466:
	sh2add t6, t5, s3
	sh2add s8, t5, s2
	lw a7, 0(t6)
	addiw t5, t5, 1
	sh2add t4, a7, s0
	lw a6, 0(t4)
	lw s7, 0(s8)
	mulw a7, t3, s7
	addw s6, a6, a7
	sw s6, 0(t4)
	bgt t1, t5, label73
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label56
	addiw a5, a5, 1
	blt a5, a4, label2
	j label82
.p2align 2
label399:
	sh2add t6, t3, s1
	lw a6, 0(t6)
	addi t3, a6, -1
	ble t1, t5, label648
.p2align 2
label408:
	mv a6, t4
.p2align 2
label75:
	sh2add t4, a6, s3
	lw t6, 0(t4)
	sh2add a7, t6, s0
	sh2add t6, a6, s2
	lw s6, 0(a7)
	lw s7, 0(t6)
	mulw s9, t3, s7
	addw a6, s6, s9
	sw a6, 0(a7)
	lw s8, 4(t4)
	sh2add a6, s8, s0
	lw a7, 0(a6)
	lw s7, 4(t6)
	mulw s6, t3, s7
	addw s8, a7, s6
	sw s8, 0(a6)
	lw s7, 8(t4)
	sh2add a7, s7, s0
	lw a6, 0(a7)
	lw s6, 8(t6)
	mulw s7, t3, s6
	addw s8, a6, s7
	sw s8, 0(a7)
	lw s6, 12(t4)
	sh2add a6, s6, s0
	lw a7, 0(a6)
	lw t4, 12(t6)
	mulw s6, t3, t4
	addiw t4, t5, 4
	addw t6, a7, s6
	sw t6, 0(a6)
	ble t1, t4, label466
	mv a6, t5
	mv t5, t4
	j label75
.p2align 2
label8:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	ble a0, t1, label151
	addi t0, t0, 64
	j label8
.p2align 2
label151:
	sh2add t0, t1, s1
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label18
	j label658
.p2align 2
label14:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label17
.p2align 2
label18:
	addi t0, t0, 16
	j label14
.p2align 2
label17:
	sh2add t0, t1, s1
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label23
	j label638
.p2align 2
label19:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label22
.p2align 2
label23:
	addi t0, t0, 4
	j label19
.p2align 2
label666:
	sh2add t6, t3, s1
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t5, label408
.p2align 2
label648:
	sh2add t6, t4, s3
	mv t5, t4
	lw a7, 0(t6)
	sh2add s8, t4, s2
	sh2add t4, a7, s0
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw s7, 0(s8)
	mulw a7, t3, s7
	addw s6, a6, a7
	sw s6, 0(t4)
	bgt t1, t5, label73
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label56
	j label668
.p2align 2
label22:
	mv t0, s5
	mv t3, zero
	ble s4, zero, label175
.p2align 2
label27:
	addiw t2, t3, 1
	lw t4, 0(t0)
	sh2add t5, t2, s5
	lw t1, 0(t5)
	bge t4, t1, label28
	addiw t5, t4, 4
	addiw a6, t1, -4
	bgt t1, t5, label46
	j label30
.p2align 2
label227:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label27
	j label661
.p2align 2
label46:
	sh2add t6, t4, s3
	mv a7, t4
.p2align 2
label47:
	lw s9, 0(t6)
	sh2add s6, a7, s2
	sh2add s7, s9, s1
	addiw a7, a7, 4
	lw s8, 0(s7)
	lw s11, 0(s6)
	addw s10, s8, s11
	sw s10, 0(s7)
	lw s9, 4(t6)
	sh2add s8, s9, s1
	lw s7, 0(s8)
	lw s10, 4(s6)
	addw s11, s7, s10
	sw s11, 0(s8)
	lw s9, 8(t6)
	sh2add s7, s9, s1
	lw s8, 0(s7)
	lw s10, 8(s6)
	addw s9, s8, s10
	sw s9, 0(s7)
	lw s11, 12(t6)
	sh2add s8, s11, s1
	lw s7, 0(s8)
	lw s10, 12(s6)
	addw s9, s7, s10
	sw s9, 0(s8)
	ble a6, a7, label317
	addi t6, t6, 16
	j label47
.p2align 2
label31:
	lw s8, 0(t6)
	sh2add s7, a7, s2
	sh2add a6, s8, s1
	addiw a7, a7, 1
	lw s6, 0(a6)
	lw s9, 0(s7)
	addw s8, s6, s9
	sw s8, 0(a6)
	bgt t1, a7, label45
	j label34
.p2align 2
label213:
	sh2add t6, t4, s3
	mv t5, t4
	lw a7, 0(t6)
	sh2add s6, t4, s2
	sh2add t4, a7, s1
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw a7, 0(s6)
	mulw s8, t3, a7
	addw s7, a6, s8
	sw s7, 0(t4)
	bgt t1, t5, label38
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label27
	j label661
.p2align 2
label45:
	addi t6, t6, 4
	j label31
.p2align 2
label317:
	sh2add t6, a7, s3
	sh2add s7, a7, s2
	lw s8, 0(t6)
	addiw a7, a7, 1
	sh2add a6, s8, s1
	lw s6, 0(a6)
	lw s9, 0(s7)
	addw s8, s6, s9
	sw s8, 0(a6)
	bgt t1, a7, label45
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label214
	j label213
.p2align 2
label34:
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t5, label213
.p2align 2
label214:
	mv a6, t4
.p2align 2
label40:
	sh2add t4, a6, s3
	lw t6, 0(t4)
	sh2add a7, t6, s1
	sh2add t6, a6, s2
	lw s6, 0(a7)
	lw s7, 0(t6)
	mulw a6, t3, s7
	addw s8, s6, a6
	sw s8, 0(a7)
	lw s7, 4(t4)
	sh2add a6, s7, s1
	lw a7, 0(a6)
	lw s8, 4(t6)
	mulw s6, t3, s8
	addw s9, a7, s6
	sw s9, 0(a6)
	lw s7, 8(t4)
	sh2add a7, s7, s1
	lw a6, 0(a7)
	lw s6, 8(t6)
	mulw s9, t3, s6
	addw s7, a6, s9
	sw s7, 0(a7)
	lw s8, 12(t4)
	sh2add a6, s8, s1
	lw a7, 0(a6)
	lw s6, 12(t6)
	mulw t4, t3, s6
	addw t6, a7, t4
	addiw t4, t5, 4
	sw t6, 0(a6)
	ble t1, t4, label272
	mv a6, t5
	mv t5, t4
	j label40
.p2align 2
label35:
	lw a7, 0(t6)
	sh2add s6, t5, s2
	sh2add t4, a7, s1
	addiw t5, t5, 1
	lw a6, 0(t4)
	lw a7, 0(s6)
	mulw s8, t3, a7
	addw s7, a6, s8
	sw s7, 0(t4)
	ble t1, t5, label227
.p2align 2
label38:
	addi t6, t6, 4
	j label35
.p2align 2
label272:
	sh2add t6, t5, s3
	sh2add s6, t5, s2
	lw a7, 0(t6)
	addiw t5, t5, 1
	sh2add t4, a7, s1
	lw a6, 0(t4)
	lw a7, 0(s6)
	mulw s8, t3, a7
	addw s7, a6, s8
	sw s7, 0(t4)
	bgt t1, t5, label38
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label27
	bgt s4, zero, label84
	j label640
.p2align 2
label30:
	sh2add t6, t4, s3
	mv a7, t4
	j label31
label175:
	bgt s4, zero, label84
	j label640
.p2align 2
label28:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label27
	j label175
.p2align 2
label661:
	ble s4, zero, label640
.p2align 2
label84:
	ble s4, a2, label480
	ble a1, a3, label92
	mv t0, s0
	mv t1, zero
.p2align 2
label99:
	sd zero, 0(t0)
	addiw t1, t1, 16
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	ble a0, t1, label520
	addi t0, t0, 64
	j label99
.p2align 2
label93:
	sw zero, 0(t0)
	addiw t1, t1, 4
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	ble a1, t1, label497
.p2align 2
label96:
	addi t0, t0, 16
	j label93
.p2align 2
label520:
	sh2add t0, t1, s0
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label96
	sh2add t0, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label88
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label56
	j label327
.p2align 2
label85:
	sw zero, 0(t0)
	addiw t1, t1, 1
	ble s4, t1, label485
.p2align 2
label88:
	addi t0, t0, 4
	j label85
.p2align 2
label497:
	sh2add t0, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label88
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label56
	j label327
.p2align 2
label5:
	mv t0, s1
	li t1, 1
	sw zero, 0(s1)
	bgt s4, t1, label23
	j label22
.p2align 2
label658:
	sh2add t0, t1, s1
	addiw t1, t1, 1
	sw zero, 0(t0)
	bgt s4, t1, label23
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label27
	j label175
.p2align 2
label92:
	mv t0, s0
	mv t1, zero
	j label93
label125:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label27
	j label175
label640:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label56
label327:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label82
.p2align 2
label336:
	addi t0, t0, 4
	mv t3, t2
	bgt s4, t2, label56
	j label327
.p2align 2
label131:
	mv t0, s1
	li t1, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt a1, t1, label18
	j label17
.p2align 2
label485:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label56
	j label327
.p2align 2
label638:
	mv t0, s5
	mv t3, zero
	bgt s4, zero, label27
	j label175
.p2align 2
label480:
	mv t0, s0
	mv t1, zero
	j label85
