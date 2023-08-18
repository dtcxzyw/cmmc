.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
arr1:
	.zero	57600
.p2align 3
arr2:
	.zero	107520
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[224] CalleeSaved[104]
	addi sp, sp, -328
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
	slt s0, zero, a0
	sd a0, 224(sp)
	jal getint
	sd a0, 216(sp)
	slt a3, zero, a0
	ld a0, 224(sp)
	and s3, s0, a3
	ld a1, 216(sp)
	addiw a2, a0, 1
	addw a0, a1, a2
	sd a0, 240(sp)
	ld a0, 224(sp)
	addiw a2, a0, 2
	addw a1, a1, a2
	addiw a2, a0, 3
	sd a1, 248(sp)
	ld a1, 216(sp)
	addw a0, a1, a2
	sd a0, 256(sp)
	ld a0, 224(sp)
	addiw a2, a0, 4
	addw a1, a1, a2
	addiw a2, a0, 5
	sd a1, 272(sp)
	ld a1, 216(sp)
	addw a0, a1, a2
	sd a0, 280(sp)
	ld a0, 224(sp)
	addiw a3, a0, 6
	addw a2, a1, a3
	addiw a3, a0, 7
	addw a1, a1, a3
	sd a2, 288(sp)
	addiw a2, a0, 8
	sd a1, 296(sp)
	ld a1, 216(sp)
	addw a0, a1, a2
	sd a0, 312(sp)
	ld a0, 224(sp)
	addiw a2, a0, 9
	addw a1, a1, a2
	addiw a2, a0, 10
	sd a1, 320(sp)
	ld a1, 216(sp)
	addw s1, a0, a1
	addw s0, a1, a2
	jal getint
	sd a0, 160(sp)
	jal getint
	sd a0, 176(sp)
	jal getint
	sd a0, 192(sp)
	mv a2, a0
	jal getint
	sd a0, 200(sp)
	mv a5, a0
	jal getint
	sd a0, 184(sp)
	mv t2, a0
	jal getint
	sd a0, 168(sp)
	mv t5, a0
	jal getint
pcrel838:
	auipc a1, %pcrel_hi(arr1)
	mv s2, a0
	sd a0, 152(sp)
	addi a2, a1, %pcrel_lo(pcrel838)
	li a0, 21
	li a1, 45
	sd a2, 120(sp)
	slli a5, a0, 8
	slli a0, a1, 6
	sd a5, 144(sp)
	sd a0, 136(sp)
	beq s3, zero, label131
	mv s4, zero
	mv s3, a2
	j label3
.p2align 2
label784:
	ld a0, 224(sp)
	ld a1, 216(sp)
	slt a0, s4, a0
	slt a3, s4, a1
	and a2, a0, a3
	beq a2, zero, label131
	li a1, 45
	slli a0, a1, 7
	add s3, s3, a0
.p2align 2
label3:
	addw a3, s1, s4
	addw a6, s0, s4
	mv s2, s3
	ld a0, 240(sp)
	ld a1, 248(sp)
	addw a4, a0, s4
	addw a5, a1, s4
	ld a0, 256(sp)
	ld a1, 272(sp)
	addw t0, a0, s4
	addw t1, a1, s4
	ld a0, 280(sp)
	ld a2, 288(sp)
	addw t2, a0, s4
	ld a1, 296(sp)
	addw t3, a2, s4
	ld a0, 312(sp)
	addw t4, a1, s4
	mv a2, zero
	addw t5, a0, s4
	ld a1, 320(sp)
	mv a0, zero
	addw t6, a1, s4
	mv a1, zero
	addiw s4, s4, 1
	j label6
.p2align 2
label251:
	mv a2, zero
.p2align 2
label6:
	addw a7, a3, a2
	addw s6, a0, a7
	slli a7, a0, 4
	addw s5, a1, s6
	sub s8, a7, a0
	slli a7, a2, 4
	slli s7, s8, 6
	sub s8, a7, a2
	add s6, s2, s7
	slli s10, s8, 4
	addw s7, a4, a2
	add a7, s6, s10
	addw s9, a0, s7
	addw s6, a1, s9
	addw s9, a5, a2
	slli s8, s6, 32
	add.uw s7, s5, s8
	addw s8, a0, s9
	sd s7, 0(a7)
	addw s5, a1, s8
	addw s8, t0, a2
	slli s7, s5, 32
	add.uw s9, s6, s7
	addw s7, a0, s8
	sd s9, 8(a7)
	addw s10, a1, s7
	addw s7, t1, a2
	slli s6, s10, 32
	addw s11, a0, s7
	add.uw s8, s5, s6
	addw s6, a1, s11
	sd s8, 16(a7)
	addw s11, t2, a2
	slli s5, s6, 32
	add.uw s7, s10, s5
	addw s5, a0, s11
	sd s7, 24(a7)
	addw s10, a1, s5
	slli s11, s10, 32
	add.uw s5, s6, s11
	addw s6, t3, a2
	sd s5, 32(a7)
	addw s6, a0, s6
	addw s11, a1, s6
	slli s6, s11, 32
	add.uw s6, s10, s6
	addw s10, t4, a2
	sd s6, 40(a7)
	sd s9, 48(a7)
	addw s9, a0, s10
	sd s8, 56(a7)
	addw s10, a1, s9
	sd s7, 64(a7)
	slli s9, s10, 32
	sd s5, 72(a7)
	add.uw s9, s11, s9
	sd s6, 80(a7)
	addw s11, t5, a2
	sd s9, 88(a7)
	sd s8, 96(a7)
	addw s8, a0, s11
	sd s7, 104(a7)
	addw s11, a1, s8
	sd s5, 112(a7)
	slli s8, s11, 32
	sd s6, 120(a7)
	add.uw s8, s10, s8
	sd s9, 128(a7)
	sd s8, 136(a7)
	sd s7, 144(a7)
	addw s7, t6, a2
	sd s5, 152(a7)
	addw s10, a0, s7
	sd s6, 160(a7)
	addw s7, a1, s10
	sd s9, 168(a7)
	slli s10, s7, 32
	sd s8, 176(a7)
	add.uw s10, s11, s10
	sd s10, 184(a7)
	sd s5, 192(a7)
	addw s5, a6, a2
	sd s6, 200(a7)
	addiw a2, a2, 1
	addw s6, a0, s5
	sd s9, 208(a7)
	sd s8, 216(a7)
	addw s8, a1, s6
	sd s10, 224(a7)
	slli s9, s8, 32
	add.uw s5, s7, s9
	sd s5, 232(a7)
	li a7, 4
	blt a2, a7, label6
	addiw a0, a0, 1
	li a7, 3
	blt a0, a7, label251
	addiw a1, a1, 1
	li a7, 2
	bge a1, a7, label784
	ld a0, 136(sp)
	mv a2, zero
	add s2, s2, a0
	mv a0, zero
	j label6
label131:
	auipc a0, %pcrel_hi(arr2)
	mv a6, zero
	mv a2, zero
	mv a1, zero
	addi a3, a0, %pcrel_lo(label131)
	mv a0, zero
	sd a3, 128(sp)
	j label17
.p2align 2
label26:
	li a7, 2
	bge a5, a7, label356
	mv a6, a5
.p2align 2
label17:
	ld a5, 144(sp)
	slli t2, a2, 3
	addiw t4, a6, 2
	sub t1, t2, a2
	slli t3, t1, 8
	mul t0, a0, a5
	slli a5, a6, 3
	add a4, a3, t0
	sub t2, a5, a6
	add t0, a4, t3
	addiw a5, a6, 1
	slli t1, t2, 7
	addw t3, a0, a5
	addw t2, a0, t4
	add a4, t0, t1
	addiw t4, a6, 4
	addw t1, a1, t2
	addw t0, a1, t3
	addw t6, a0, t4
	addiw t3, a6, 3
	addw t5, a0, t3
	addw t3, a1, t6
	addw t2, a1, t5
	addiw t6, a6, 6
	addiw t5, a6, 5
	addw s0, a0, t6
	addw a7, a0, t5
	addw t5, a1, s0
	addw t4, a1, a7
	addw a7, a6, a0
	mv a6, zero
	addw t6, a1, a7
.p2align 2
label23:
	slli s0, t0, 32
	slli s1, t2, 32
	slli s2, t4, 32
	slli s3, t6, 32
	slli s4, t1, 32
	slli s5, t3, 32
	slli s6, t5, 32
	addiw a6, a6, 1
	add.uw a7, t6, s0
	add.uw s0, t1, s1
	sd a7, 0(a4)
	add.uw s1, t3, s2
	sd s0, 8(a4)
	add.uw s2, t5, s3
	sd s1, 16(a4)
	add.uw s3, t0, s4
	sd s2, 24(a4)
	add.uw s4, t2, s5
	sd s3, 32(a4)
	add.uw s5, t4, s6
	sd s4, 40(a4)
	sd s5, 48(a4)
	sd a7, 56(a4)
	sd s0, 64(a4)
	sd s1, 72(a4)
	sd s2, 80(a4)
	sd s3, 88(a4)
	sd s4, 96(a4)
	sd s5, 104(a4)
	sd a7, 112(a4)
	sd s0, 120(a4)
	sd s1, 128(a4)
	sd s2, 136(a4)
	sd s3, 144(a4)
	sd s4, 152(a4)
	sd s5, 160(a4)
	sd a7, 168(a4)
	li a7, 4
	sd s0, 176(a4)
	sd s1, 184(a4)
	sd s2, 192(a4)
	sd s3, 200(a4)
	sd s4, 208(a4)
	sd s5, 216(a4)
	bge a6, a7, label26
	addi a4, a4, 224
	j label23
.p2align 2
label356:
	addiw a2, a2, 1
	li a7, 3
	bge a2, a7, label785
	mv a6, zero
	j label17
.p2align 2
label785:
	addiw a0, a0, 1
	li a7, 2
	bge a0, a7, label800
	mv a6, zero
	mv a2, zero
	j label17
.p2align 2
label800:
	addiw a1, a1, 1
	li a0, 10
	bge a1, a0, label807
	li a2, 21
	mv a6, zero
	slli a0, a2, 9
	mv a2, zero
	add a3, a3, a0
	mv a0, zero
	j label17
label807:
	ld a2, 120(sp)
	mv s3, zero
	mv a1, zero
	sd a2, 112(sp)
	sd zero, 104(sp)
label32:
	li a3, 21
	ld a1, 104(sp)
	slli a0, a3, 9
	ld a3, 128(sp)
	mul a2, a1, a0
	li a0, 10
	add a3, a3, a2
	sd a3, 208(sp)
	bge a1, a0, label378
	ld a2, 112(sp)
	mv a1, zero
	sd a2, 232(sp)
	sd zero, 264(sp)
label37:
	ld a5, 144(sp)
	li a2, 100
	ld a1, 264(sp)
	ld a3, 208(sp)
	mul a0, a1, a5
	add a4, a3, a0
	sd a4, 304(sp)
	bge a1, a2, label384
	ld a2, 232(sp)
	mv a1, zero
	mv a0, a2
	sub a5, zero, zero
	slli a2, a5, 8
	li a5, 1000
	add a3, a4, a2
	bge zero, a5, label390
.p2align 2
label46:
	mv a2, a0
	mv a4, zero
	sub a5, zero, zero
	li t1, 625
	slli t2, a5, 7
	slli a5, t1, 4
	add t0, a3, t2
	bge zero, a5, label396
.p2align 2
label54:
	mv a5, a2
	mv t1, zero
	sub t3, zero, zero
	lui t4, 24
	slli t5, t3, 5
	addiw t3, t4, 1696
	add t2, t0, t5
	bge zero, t3, label408
.p2align 2
label59:
	mv t3, a5
	mv t4, zero
	lui t6, 244
	addiw t5, t6, 576
	bge zero, t5, label412
.p2align 2
label67:
	slli t6, t4, 3
	li a7, 3
	ld s2, 152(sp)
	sub a6, t6, t4
	sh2add t5, a6, t2
	ble s2, a7, label424
	lw a6, 0(t3)
	lw s0, 8(t5)
	lw s1, 0(t5)
	lw a7, 4(t3)
	addw t6, a6, s1
	lw s2, 4(t5)
	ld s1, 8(t3)
	addw a6, a7, s2
	lw s4, 12(t5)
	srai s2, s1, 32
	addw a7, s0, s1
	addw s0, s2, s4
.p2align 2
label69:
	lui s4, 657125
	addiw s1, s4, -1067
	mul s6, s3, s1
	srli s2, s6, 32
	add s4, s2, s3
	li s2, 817
	srliw s7, s4, 31
	sraiw s5, s4, 9
	add s6, s7, s5
	mulw s8, s6, s2
	subw s5, s3, s8
	addw s4, t6, s5
	mul s7, s4, s1
	srli s6, s7, 32
	add s3, s6, s4
	srliw s8, s3, 31
	sraiw s5, s3, 9
	add s6, s8, s5
	mulw s9, s6, s2
	subw s7, s4, s9
	addw s3, a6, s7
	mul s6, s3, s1
	srli s8, s6, 32
	add s4, s8, s3
	srliw s7, s4, 31
	sraiw s5, s4, 9
	add s9, s7, s5
	mulw s8, s9, s2
	subw s6, s3, s8
	addw s4, a7, s6
	mul s5, s4, s1
	srli s7, s5, 32
	add s3, s7, s4
	srliw s6, s3, 31
	sraiw s1, s3, 9
	add s7, s6, s1
	li s1, 7
	mulw s5, s7, s2
	ld s2, 152(sp)
	subw s8, s4, s5
	addw s3, s0, s8
	bgt s2, s1, label69
	li a7, 4
	mv a6, a7
	mv a7, s3
	ble s2, a6, label460
.p2align 2
label75:
	sh2add t6, a6, t3
.p2align 2
label76:
	lw s0, 0(t6)
	lui s1, 657125
	li s6, 817
	addiw s3, s1, -1067
	mul s4, a7, s3
	srli s2, s4, 32
	add s1, s2, a7
	srliw s4, s1, 31
	sraiw s3, s1, 9
	add s2, s4, s3
	mulw s5, s2, s6
	sh2add s2, a6, t5
	subw s3, a7, s5
	addiw a6, a6, 1
	addw s1, s0, s3
	lw s4, 0(s2)
	ld s2, 152(sp)
	addw a7, s1, s4
	ble s2, a6, label474
	addi t6, t6, 4
	j label76
.p2align 2
label474:
	addiw t4, t4, 1
	ld t5, 168(sp)
	ble t5, t4, label794
.p2align 2
label83:
	addi t3, t3, 8
	mv s3, a7
	lui t6, 244
	addiw t5, t6, 576
	blt t4, t5, label67
label412:
	mv a7, s3
	addiw t1, t1, 1
	ld t2, 184(sp)
	bgt t2, t1, label66
	addiw a4, a4, 1
	ld a5, 200(sp)
	bgt a5, a4, label86
	addiw a1, a1, 1
	ld a2, 192(sp)
	bgt a2, a1, label53
	ld a1, 264(sp)
	ld a0, 176(sp)
	addiw a1, a1, 1
	bgt a0, a1, label89
	j label90
.p2align 2
label794:
	addiw t1, t1, 1
	ld t2, 184(sp)
	bgt t2, t1, label66
	addiw a4, a4, 1
	ld a5, 200(sp)
	bgt a5, a4, label86
	addiw a1, a1, 1
	ld a2, 192(sp)
	ble a2, a1, label812
label53:
	addi a0, a0, 960
	mv s3, a7
	slli a3, a1, 3
	ld a4, 304(sp)
	sub a5, a3, a1
	slli a2, a5, 8
	li a5, 1000
	add a3, a4, a2
	blt a1, a5, label46
label390:
	mv a7, s3
	ld a1, 264(sp)
	ld a0, 176(sp)
	addiw a1, a1, 1
	ble a0, a1, label90
label89:
	ld a0, 136(sp)
	mv s3, a7
	ld a2, 232(sp)
	add a2, a2, a0
	sd a2, 232(sp)
	sd a1, 264(sp)
	j label37
label424:
	mv a6, zero
	mv a7, s3
	ld s2, 152(sp)
	mv s3, zero
	bgt s2, zero, label75
.p2align 2
label460:
	mv a7, s3
	addiw t4, t4, 1
	ld t5, 168(sp)
	bgt t5, t4, label83
	addiw t1, t1, 1
	ld t2, 184(sp)
	ble t2, t1, label803
.p2align 2
label66:
	addi a5, a5, 48
	mv s3, a7
	slli t4, t1, 3
	sub t3, t4, t1
	lui t4, 24
	slli t5, t3, 5
	addiw t3, t4, 1696
	add t2, t0, t5
	blt t1, t3, label59
label408:
	mv a7, s3
	addiw a4, a4, 1
	ld a5, 200(sp)
	ble a5, a4, label486
.p2align 2
label86:
	addi a2, a2, 240
	mv s3, a7
	slli t1, a4, 3
	sub a5, t1, a4
	li t1, 625
	slli t2, a5, 7
	slli a5, t1, 4
	add t0, a3, t2
	blt a4, a5, label54
label396:
	mv a7, s3
	addiw a1, a1, 1
	ld a2, 192(sp)
	bgt a2, a1, label53
	ld a1, 264(sp)
	ld a0, 176(sp)
	addiw a1, a1, 1
	bgt a0, a1, label89
	j label90
label803:
	addiw a4, a4, 1
	ld a5, 200(sp)
	bgt a5, a4, label86
	addiw a1, a1, 1
	ld a2, 192(sp)
	bgt a2, a1, label53
	ld a1, 264(sp)
	ld a0, 176(sp)
	addiw a1, a1, 1
	bgt a0, a1, label89
	j label90
label812:
	ld a1, 264(sp)
	ld a0, 176(sp)
	addiw a1, a1, 1
	bgt a0, a1, label89
label90:
	ld a1, 104(sp)
	ld a0, 160(sp)
	addiw a1, a1, 1
	ble a0, a1, label498
	li a3, 45
	mv s3, a7
	ld a2, 112(sp)
	slli a0, a3, 7
	add a2, a2, a0
	sd a2, 112(sp)
	sd a1, 104(sp)
	j label32
label498:
	mv a0, a7
label93:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 328
	ret
label486:
	addiw a1, a1, 1
	ld a2, 192(sp)
	bgt a2, a1, label53
	ld a1, 264(sp)
	ld a0, 176(sp)
	addiw a1, a1, 1
	bgt a0, a1, label89
	j label90
label378:
	mv a0, s3
	j label93
label384:
	mv a7, s3
	j label90
