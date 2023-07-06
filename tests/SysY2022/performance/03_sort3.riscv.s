.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	xori a4, a0, -1
	sd s1, 136(sp)
	sltiu a4, a4, 1
	mv s1, a1
	sd s3, 240(sp)
	addiw a1, a2, 1
	addi s3, sp, 0
	slt a1, a1, a3
	sd s2, 64(sp)
	xori a1, a1, 1
	addi s2, sp, 72
	or a1, a1, a4
	sd s0, 232(sp)
	addi s0, sp, 144
	sd s5, 224(sp)
	sd s4, 216(sp)
	sd ra, 208(sp)
	sw zero, 144(sp)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	sw zero, 16(s0)
	sw zero, 20(s0)
	sw zero, 24(s0)
	sw zero, 28(s0)
	sw zero, 32(s0)
	sw zero, 36(s0)
	sw zero, 40(s0)
	sw zero, 44(s0)
	sw zero, 48(s0)
	sw zero, 52(s0)
	sw zero, 56(s0)
	sw zero, 60(s0)
	sw zero, 72(sp)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	sw zero, 16(s2)
	sw zero, 20(s2)
	sw zero, 24(s2)
	sw zero, 28(s2)
	sw zero, 32(s2)
	sw zero, 36(s2)
	sw zero, 40(s2)
	sw zero, 44(s2)
	sw zero, 48(s2)
	sw zero, 52(s2)
	sw zero, 56(s2)
	sw zero, 60(s2)
	sw zero, 0(sp)
	sw zero, 4(s3)
	sw zero, 8(s3)
	sw zero, 12(s3)
	sw zero, 16(s3)
	sw zero, 20(s3)
	sw zero, 24(s3)
	sw zero, 28(s3)
	sw zero, 32(s3)
	sw zero, 36(s3)
	sw zero, 40(s3)
	sw zero, 44(s3)
	sw zero, 48(s3)
	sw zero, 52(s3)
	sw zero, 56(s3)
	sw zero, 60(s3)
	beq a1, zero, label3
label2:
	ld ra, 208(sp)
	ld s4, 216(sp)
	ld s5, 224(sp)
	ld s0, 232(sp)
	ld s2, 64(sp)
	ld s3, 240(sp)
	ld s1, 136(sp)
	addi sp, sp, 248
	ret
label3:
	addiw s4, a0, -1
	bge a2, a3, label182
	mv a1, a2
	sh2add a4, a2, s1
	lw a4, 0(a4)
	ble a0, zero, label21
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label9
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label9
	j label192
label9:
	addiw a5, t0, 4
	ble a0, a5, label198
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label198
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label198
	j label707
label198:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label15
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label15
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label15
	j label708
label15:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label21
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label21
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label21
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label21
label709:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label21
	j label709
label21:
	slli a5, a4, 1
	addiw a1, a1, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a4, a4, s3
	lw a5, 0(a4)
	addiw a5, a5, 1
	sw a5, 0(a4)
	ble a3, a1, label182
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label21
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label9
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label9
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label9
	j label650
label192:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label9
label650:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label9
label706:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label9
	j label706
label707:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label198
	j label707
label708:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label15
	j label708
label182:
	sw a2, 144(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 72(sp)
	li a1, 1
label24:
	addiw a3, a1, -1
	sh2add a4, a1, s3
	sh2add a3, a3, s2
	lw a5, 0(a3)
	sh2add a3, a1, s0
	sw a5, 0(a3)
	lw t0, 0(a4)
	addw t0, a5, t0
	sh2add a5, a1, s2
	sw t0, 0(a5)
	sw t0, 4(a3)
	lw t1, 4(a4)
	addw t0, t0, t1
	sw t0, 4(a5)
	sw t0, 8(a3)
	lw t1, 8(a4)
	addw t0, t0, t1
	sw t0, 8(a5)
	sw t0, 12(a3)
	lw a3, 12(a4)
	li a4, 13
	addw a3, t0, a3
	sw a3, 12(a5)
	addiw a3, a1, 4
	bge a3, a4, label26
	mv a1, a3
	j label24
label26:
	addiw a1, a1, 3
	sh2add a4, a3, s0
	sh2add a1, a1, s2
	sh2add a3, a3, s3
	lw a5, 0(a1)
	sw a5, 0(a4)
	lw t0, 0(a3)
	addw a5, a5, t0
	sw a5, 4(a1)
	sw a5, 4(a4)
	lw t0, 4(a3)
	addw a5, a5, t0
	sw a5, 8(a1)
	sw a5, 8(a4)
	lw a3, 8(a3)
	addw a3, a5, a3
	sw a3, 12(a1)
	mv a1, zero
	li a3, 16
	bge zero, a3, label110
	sh2add a3, zero, s0
	lw a3, 0(a3)
	sh2add a4, zero, s2
	lw a4, 0(a4)
	bge a3, a4, label32
	sh2add a3, zero, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label301
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label99
	j label660
label110:
	sw a2, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 72(sp)
	li a0, 16
	bge zero, a0, label2
	j label114
label301:
	mv a5, a3
label34:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label306
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label316
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label80
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label80
	j label398
label306:
	mv a5, a4
	sh2add a4, a4, s1
	sw a3, 0(a4)
	sh2add a4, a1, s0
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label32
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label301
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label99
	j label660
label316:
	mv a3, a4
label37:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label76
	mv a3, a4
	ble a0, zero, label324
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label44
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label44
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label44
	j label666
label398:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label80
	j label685
label44:
	addiw a5, t0, 4
	ble a0, a5, label334
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label334
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label334
	j label723
label334:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label52
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label52
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label52
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label52
	j label726
label52:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label56
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label56
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label56
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label56
label729:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label56
	j label729
label56:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label359
	mv a3, a4
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label64
	slli t0, a4, 1
	srli t0, t0, 48
	add a3, a4, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label64
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label64
	j label676
label359:
	mv a3, a4
label58:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label60
	mv a3, a4
	ble a0, zero, label324
	mv t0, zero
	addiw a5, zero, 4
	ble a0, a5, label44
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label44
	j label732
label676:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label64
	j label734
label64:
	addiw a5, t0, 4
	ble a0, a5, label377
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label377
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label377
	j label735
label377:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label70
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label70
	j label736
label70:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label58
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label58
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label58
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label58
label737:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label58
	j label737
label736:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label70
	j label736
label726:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	mv a5, t0
	sraiw a4, a4, 16
	addiw t0, t0, 4
	ble a0, t0, label52
	j label726
label723:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label334
	j label723
label734:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label64
	j label734
label324:
	mv a4, a3
	j label56
label76:
	sh2add a3, a1, s0
	lw a5, 0(a3)
	mv a3, a4
	sh2add a4, a5, s1
	sw a3, 0(a4)
	sh2add a4, a1, s0
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label32
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label301
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label99
	j label660
label732:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label44
label666:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label44
label722:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	mv t0, a5
	sraiw a4, a4, 16
	addiw a5, a5, 4
	ble a0, a5, label44
	j label722
label735:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label377
	j label735
label32:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label110
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label32
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label301
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label99
	j label660
label99:
	addiw t0, t1, 4
	ble a0, t0, label434
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label434
	j label696
label434:
	mv t0, t1
	addiw t1, t1, 4
	ble a0, t1, label105
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label105
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label105
	j label757
label105:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label34
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label34
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label34
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label34
label758:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label34
	j label758
label80:
	addiw a5, t0, 4
	ble a0, a5, label404
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label404
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label404
	j label744
label404:
	mv a5, t0
	addiw t0, t0, 4
	ble a0, t0, label87
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label87
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label87
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label87
	j label747
label87:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label37
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label37
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label37
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label37
label748:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label37
	j label748
label696:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label434
	j label756
label757:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	mv t0, t1
	sraiw a5, a5, 16
	addiw t1, t1, 4
	ble a0, t1, label105
	j label757
label60:
	sh2add a3, a1, s0
	lw a5, 0(a3)
	mv a3, a4
	sh2add a4, a5, s1
	sw a3, 0(a4)
	sh2add a4, a1, s0
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label32
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label301
	mv a5, a3
	mv t1, zero
	addiw t0, zero, 4
	ble a0, t0, label99
label660:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label99
	j label427
label756:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label434
	j label756
label427:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label99
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label99
label753:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	mv t1, t0
	sraiw a5, a5, 16
	addiw t0, t0, 4
	ble a0, t0, label99
	j label753
label744:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label404
	j label744
label747:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	mv a5, t0
	sraiw a3, a3, 16
	addiw t0, t0, 4
	ble a0, t0, label87
	j label747
label685:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label80
label743:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	mv t0, a5
	sraiw a3, a3, 16
	addiw a5, a5, 4
	ble a0, a5, label80
	j label743
label114:
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label114
label115:
	addiw a0, s5, -1
	sh2add a1, s5, s0
	sh2add a0, a0, s2
	lw a0, 0(a0)
	sw a0, 0(a1)
	sh2add a1, s5, s3
	lw a1, 0(a1)
	addw a0, a0, a1
	sh2add a1, s5, s2
	sw a0, 0(a1)
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label114
	j label115
.globl main
main:
	addi sp, sp, -32
pcrel967:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel967)
	sd s1, 16(sp)
	mv s1, s2
	sd s0, 8(sp)
	sd ra, 0(sp)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s2
	li a0, 8
	mv a3, s0
	jal radixSort
	ble s0, zero, label859
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	ble s0, a2, label847
	j label846
label859:
	mv s0, zero
	j label841
label846:
	sh2add a3, a1, s1
	addiw a4, a1, 3
	addiw t1, a1, 1
	lw t0, 0(a3)
	lw a5, 4(a3)
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addiw a1, a1, 5
	addw a0, a0, t0
	lw t0, 8(a3)
	addw a0, t1, a0
	lw a3, 12(a3)
	remw t0, t0, a2
	remw a1, a3, a1
	mulw a5, a5, t0
	addw a0, a0, a5
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label847
	j label846
label847:
	addiw a2, a1, 4
	ble s0, a2, label851
	j label850
label851:
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
label964:
	sh2add a2, a1, s1
	addiw a3, a1, 2
	lw a2, 0(a2)
	remw a2, a2, a3
	mulw a2, a1, a2
	addiw a1, a1, 1
	addw a0, a0, a2
	ble s0, a1, label932
	j label964
label841:
	li a0, 102
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label932:
	mv s0, a0
	j label841
label850:
	sh2add a3, a1, s1
	addiw a4, a1, 3
	addiw t1, a1, 1
	lw t0, 0(a3)
	lw a5, 4(a3)
	remw a5, a5, a4
	mulw t1, a5, t1
	addiw a5, a1, 2
	remw t0, t0, a5
	mulw t0, a1, t0
	addiw a1, a1, 5
	addw a0, a0, t0
	lw t0, 8(a3)
	addw a0, t1, a0
	lw a3, 12(a3)
	remw t0, t0, a2
	remw a1, a3, a1
	mulw a5, a5, t0
	addw a0, a0, a5
	mulw a1, a4, a1
	addw a0, a0, a1
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label851
	j label850
