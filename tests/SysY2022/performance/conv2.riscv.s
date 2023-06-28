.data
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -112
	sd s5, 8(sp)
	sd s0, 0(sp)
	sd s1, 104(sp)
	sd s6, 96(sp)
	sd s2, 88(sp)
	sd s3, 80(sp)
	sd s4, 72(sp)
	sd s7, 64(sp)
	sd s8, 56(sp)
	sd s9, 48(sp)
	sd s10, 40(sp)
	sd s11, 32(sp)
	sd ra, 24(sp)
	jal getint
	mv s5, a0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	mulw a4, s1, a0
	sd a4, 16(sp)
pcrel938:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel938)
	mv s0, a0
	jal getarray
pcrel939:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel939)
	mv s3, a0
	jal getarray
	mv s4, a0
	srliw a0, s5, 31
	add a0, s5, a0
	sraiw s5, a0, 1
	li a0, 109
	jal _sysy_starttime
pcrel940:
	auipc a0, %pcrel_hi(b)
	addi a2, a0, %pcrel_lo(pcrel940)
	ble s4, zero, label79
	mv a3, zero
	slli a0, zero, 2
	add a0, s3, a0
	lw t3, 0(a0)
	mv a4, zero
	subw a5, zero, s5
	addw t4, s5, zero
	mulw t5, s2, zero
	mv t1, zero
	subw t2, zero, s5
	addw t6, s5, zero
	mv a0, a5
	mv a6, zero
	mv a1, t2
	bge a5, zero, label14
	mv a7, zero
	bne t3, zero, label47
	addw a6, zero, zero
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
label698:
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label861
label15:
	blt a0, s1, label16
	mv a7, zero
	bne t3, zero, label47
	addw a6, a6, zero
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
label861:
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
label865:
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label865
label21:
	bge a6, zero, label29
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	addw a6, a6, a7
	bge a6, zero, label29
	j label863
label29:
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw a6, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label863:
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label29
label864:
	li a7, 1073741824
	addw a6, a6, a7
	bge a6, zero, label29
	j label864
label16:
	blt a1, s2, label17
	mv a7, zero
	bne t3, zero, label47
	addw a6, a6, zero
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label861
label17:
	mulw a7, a0, s2
	addw a7, a1, a7
	slliw a7, a7, 2
	add a7, s0, a7
	lw a7, 0(a7)
	bne t3, zero, label47
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label861
label43:
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	j label872
label46:
	addiw a3, a3, 1
	bge a3, s4, label79
	slli a0, a3, 2
	add a0, s3, a0
	lw t3, 0(a0)
	mv a4, zero
	subw a5, zero, s5
	addw t4, s5, zero
	mulw t5, s2, zero
	mv t1, zero
	subw t2, zero, s5
	addw t6, s5, zero
	mv a0, a5
	mv a6, zero
	mv a1, t2
	bge a5, zero, label14
	mv a7, zero
	bne t3, zero, label47
	addw a6, zero, zero
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label698
label47:
	li s6, 1
	bne t3, s6, label48
	li s7, 1
	mv s6, zero
	li s8, 1073741824
	bge s7, s8, label418
	j label74
label4:
	subw a5, a4, s5
	addw t4, s5, a4
	mulw t5, s2, a4
	mv t1, zero
label6:
	subw t2, t1, s5
	addw t6, s5, t1
	mv a0, a5
	mv a6, zero
label8:
	mv a1, t2
label11:
	bge a0, zero, label14
	mv a7, zero
	bne t3, zero, label47
	addw a6, a6, zero
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label698
label14:
	bge a1, zero, label15
	mv a7, zero
	bne t3, zero, label47
	addw a6, a6, zero
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	li a7, -1073741824
	addw a6, a6, a7
	li a7, 1073741824
	ble a6, a7, label21
	j label861
label74:
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s10, s9, 1
	li s9, 2
	mulw s10, s10, s9
	subw s8, s8, s10
	divw s10, a7, s7
	srliw s11, s10, 31
	add s11, s10, s11
	sraiw s11, s11, 1
	mulw s9, s11, s9
	subw s9, s10, s9
	bne s8, s9, label77
	slliw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label418
	j label74
label77:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label418
	j label74
label418:
	mv a6, s6
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw s6, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label48:
	li s6, 2
	bne t3, s6, label49
	ble a6, a7, label70
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw a6, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label49:
	li s6, 3
	bne t3, s6, label59
	li s7, 1
	mv s6, zero
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, zero, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	j label809
label370:
	mv a6, s6
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw s6, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label809:
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	j label844
label59:
	li s6, 4
	bne t3, s6, label390
	li s7, 1
	mv s6, zero
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw s6, zero, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	j label780
label390:
	mv a6, zero
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw zero, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label780:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	j label819
label844:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
label879:
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	j label844
label872:
	slliw a1, a0, 2
	add a1, a2, a1
	lw a1, 0(a1)
	slliw a4, a0, 2
	add a4, s0, a4
	sw a1, 0(a4)
	addiw a0, a0, 1
	ld a4, 16(sp)
	bge a0, a4, label46
	j label872
label56:
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label57
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	j label879
label57:
	slliw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	j label844
label819:
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	j label889
label68:
	slliw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a7, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	j label819
label394:
	mv a6, s6
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw s6, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label889:
	slliw s6, s6, 1
	addiw s6, s6, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	j label819
label37:
	slliw a4, a0, 2
	add a4, a2, a4
	lw a5, 0(a4)
	slliw a0, a0, 2
	add a0, s0, a0
	sw a5, 0(a0)
	lw a5, 4(a4)
	sw a5, 4(a0)
	lw a5, 8(a4)
	sw a5, 8(a0)
	lw a5, 12(a4)
	sw a5, 12(a0)
	lw a5, 16(a4)
	sw a5, 16(a0)
	lw a5, 20(a4)
	sw a5, 20(a0)
	lw a5, 24(a4)
	sw a5, 24(a0)
	lw a5, 28(a4)
	sw a5, 28(a0)
	lw a5, 32(a4)
	sw a5, 32(a0)
	lw a5, 36(a4)
	sw a5, 36(a0)
	lw a5, 40(a4)
	sw a5, 40(a0)
	lw a5, 44(a4)
	sw a5, 44(a0)
	lw a5, 48(a4)
	sw a5, 48(a0)
	lw a5, 52(a4)
	sw a5, 52(a0)
	lw a5, 56(a4)
	sw a5, 56(a0)
	lw a4, 60(a4)
	sw a4, 60(a0)
	mv a0, a1
	addiw a1, a1, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label38:
	addiw a1, a0, 16
	ld a4, 16(sp)
	bge a1, a4, label41
label40:
	slliw a4, a0, 2
	add a4, a2, a4
	lw a5, 0(a4)
	slliw a0, a0, 2
	add a0, s0, a0
	sw a5, 0(a0)
	lw a5, 4(a4)
	sw a5, 4(a0)
	lw a5, 8(a4)
	sw a5, 8(a0)
	lw a5, 12(a4)
	sw a5, 12(a0)
	lw a5, 16(a4)
	sw a5, 16(a0)
	lw a5, 20(a4)
	sw a5, 20(a0)
	lw a5, 24(a4)
	sw a5, 24(a0)
	lw a5, 28(a4)
	sw a5, 28(a0)
	lw a5, 32(a4)
	sw a5, 32(a0)
	lw a5, 36(a4)
	sw a5, 36(a0)
	lw a5, 40(a4)
	sw a5, 40(a0)
	lw a5, 44(a4)
	sw a5, 44(a0)
	lw a5, 48(a4)
	sw a5, 48(a0)
	lw a5, 52(a4)
	sw a5, 52(a0)
	lw a5, 56(a4)
	sw a5, 56(a0)
	lw a4, 60(a4)
	sw a4, 60(a0)
	mv a0, a1
	addiw a1, a1, 16
	ld a4, 16(sp)
	bge a1, a4, label41
	j label40
label70:
	mv a6, a7
	addiw a1, a1, 1
	blt a1, t6, label11
	addiw a0, a0, 1
	blt a0, t4, label8
	addw a0, t1, t5
	slliw a0, a0, 2
	add a0, a2, a0
	sw a7, 0(a0)
	addiw t1, t1, 1
	blt t1, s2, label6
	addiw a4, a4, 1
	blt a4, s1, label4
	ld a4, 16(sp)
	ble a4, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	ld a4, 16(sp)
	bge a1, a4, label38
	j label37
label41:
	addiw a1, a0, 16
	ld a4, 16(sp)
	bge a1, a4, label43
label45:
	slliw a4, a0, 2
	add a4, a2, a4
	lw a5, 0(a4)
	slliw a0, a0, 2
	add a0, s0, a0
	sw a5, 0(a0)
	lw a5, 4(a4)
	sw a5, 4(a0)
	lw a5, 8(a4)
	sw a5, 8(a0)
	lw a5, 12(a4)
	sw a5, 12(a0)
	lw a5, 16(a4)
	sw a5, 16(a0)
	lw a5, 20(a4)
	sw a5, 20(a0)
	lw a5, 24(a4)
	sw a5, 24(a0)
	lw a5, 28(a4)
	sw a5, 28(a0)
	lw a5, 32(a4)
	sw a5, 32(a0)
	lw a5, 36(a4)
	sw a5, 36(a0)
	lw a5, 40(a4)
	sw a5, 40(a0)
	lw a5, 44(a4)
	sw a5, 44(a0)
	lw a5, 48(a4)
	sw a5, 48(a0)
	lw a5, 52(a4)
	sw a5, 52(a0)
	lw a5, 56(a4)
	sw a5, 56(a0)
	lw a4, 60(a4)
	sw a4, 60(a0)
	mv a0, a1
	addiw a1, a1, 16
	ld a4, 16(sp)
	bge a1, a4, label43
	j label45
label79:
	li a0, 116
	jal _sysy_stoptime
	ld a4, 16(sp)
	mv a0, a4
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 24(sp)
	ld s11, 32(sp)
	ld s10, 40(sp)
	ld s9, 48(sp)
	ld s8, 56(sp)
	ld s7, 64(sp)
	ld s4, 72(sp)
	ld s3, 80(sp)
	ld s2, 88(sp)
	ld s6, 96(sp)
	ld s1, 104(sp)
	ld s0, 0(sp)
	ld s5, 8(sp)
	addi sp, sp, 112
	ret
