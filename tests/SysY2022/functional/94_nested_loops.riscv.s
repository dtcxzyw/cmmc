.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
arr1:
	.zero	57600
.align 8
arr2:
	.zero	107520
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[288] CalleeSaved[104]
	addi sp, sp, -392
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 336(sp)
	jal getint
	addw t3, s0, a0
	sd a0, 328(sp)
	sd t3, 344(sp)
	ld a0, 336(sp)
	addiw a2, a0, 2
	ld a1, 328(sp)
	addw t5, a1, a2
	addw t2, a0, a1
	addiw a2, a0, 3
	addw t6, a1, a2
	sd t5, 352(sp)
	addiw a2, a0, 4
	sd t6, 368(sp)
	addw t3, a1, a2
	addiw a2, a0, 5
	sd t3, 376(sp)
	addw a7, a1, a2
	addiw a2, a0, 6
	sd a7, 384(sp)
	addw t3, a1, a2
	addiw a2, a0, 7
	sd t3, 144(sp)
	addw t3, a1, a2
	addiw a2, a0, 8
	sd t3, 136(sp)
	addw t3, a1, a2
	addiw a2, a0, 9
	sd t3, 128(sp)
	addw t3, a1, a2
	addiw a2, a0, 10
	sd t3, 120(sp)
	addw t3, a1, a2
	sd t3, 104(sp)
	sd t2, 112(sp)
	jal getint
	sd a0, 216(sp)
	jal getint
	sd a0, 232(sp)
	jal getint
	sd a0, 248(sp)
	jal getint
	sd a0, 256(sp)
	mv a3, a0
	jal getint
	sd a0, 240(sp)
	mv t0, a0
	jal getint
	sd a0, 224(sp)
	mv t2, a0
	jal getint
	mv a7, a0
	li a4, 21
pcrel833:
	auipc a2, %pcrel_hi(arr1)
	sd a0, 208(sp)
	addi a1, a2, %pcrel_lo(pcrel833)
	slli a0, a4, 8
	mv a2, zero
	mv a3, a1
	sd a1, 288(sp)
	li a1, 45
	sd a0, 200(sp)
	slli a0, a1, 6
	lui a1, 244
	sd a0, 176(sp)
	addiw t2, a1, 576
	ld a0, 200(sp)
	slli a0, a0, 1
	sd a0, 184(sp)
	ld a0, 176(sp)
	slli a0, a0, 1
	sd a0, 192(sp)
	lui a0, 24
	sd t2, 168(sp)
	addiw t0, a0, 1696
	sd t0, 160(sp)
	ld a0, 336(sp)
	ld a1, 328(sp)
	slt a0, zero, a0
	slt a4, zero, a1
	and a5, a0, a4
	bne a5, zero, label5
	j label145
.p2align 2
label796:
	addiw a2, a2, 1
	ld a0, 192(sp)
	add a3, a3, a0
	ld a0, 336(sp)
	ld a1, 328(sp)
	slt a0, a2, a0
	slt a4, a2, a1
	and a5, a0, a4
	beq a5, zero, label145
.p2align 2
label5:
	mv a4, a3
	mv a5, zero
	sext.w a0, a2
	li t3, 2
	blt zero, t3, label9
	addiw a2, a2, 1
	ld a0, 192(sp)
	add a3, a3, a0
	ld a0, 336(sp)
	ld a1, 328(sp)
	slt a0, a2, a0
	slt a4, a2, a1
	and a5, a0, a4
	bne a5, zero, label5
	j label145
.p2align 2
label787:
	addiw a5, a5, 1
	li t3, 2
	ld a0, 176(sp)
	add a4, a4, a0
	addw a0, a2, a5
	bge a5, t3, label796
.p2align 2
label9:
	mv t0, a4
	mv a1, zero
	li t2, 3
	blt zero, t2, label14
	addiw a5, a5, 1
	li t3, 2
	ld a0, 176(sp)
	add a4, a4, a0
	addw a0, a2, a5
	blt a5, t3, label9
	addiw a2, a2, 1
	ld a0, 192(sp)
	add a3, a3, a0
	ld a0, 336(sp)
	ld a1, 328(sp)
	slt a0, a2, a0
	slt a4, a2, a1
	and a5, a0, a4
	bne a5, zero, label5
	j label145
.p2align 2
label254:
	addiw a1, a1, 1
	addi t0, t0, 960
	li t2, 3
	bge a1, t2, label787
.p2align 2
label14:
	ld t2, 112(sp)
	mv s5, zero
	ld t3, 344(sp)
	addw t5, t2, a1
	addw t4, t3, a1
	addw t1, a0, t5
	addw t2, a0, t4
	ld t5, 352(sp)
	ld t6, 368(sp)
	addw t3, t5, a1
	addw a7, t6, a1
	addw t4, a0, t3
	addw t5, a0, a7
	ld t3, 376(sp)
	ld a7, 384(sp)
	addw a6, t3, a1
	addw s1, a7, a1
	addw t6, a0, a6
	ld t3, 144(sp)
	addw a6, a0, s1
	addw s0, t3, a1
	ld t3, 136(sp)
	addw a7, a0, s0
	addw s1, t3, a1
	ld t3, 128(sp)
	addw s0, a0, s1
	addw s2, t3, a1
	ld t3, 120(sp)
	addw s1, a0, s2
	addw s4, t3, a1
	ld t3, 104(sp)
	addw s2, a0, s4
	addw s3, t3, a1
	mv t3, t0
	addw s4, a0, s3
.p2align 2
label15:
	addw s7, t1, s5
	addw s6, t2, s5
	addw s3, t4, s5
	addw s10, t5, s5
	addw s11, a6, s5
	slli s9, s6, 32
	add.uw s8, s7, s9
	slli s7, s3, 32
	sd s8, 0(t3)
	add.uw s9, s6, s7
	addw s6, t6, s5
	slli s7, s10, 32
	sd s9, 8(t3)
	add.uw s8, s3, s7
	slli s3, s6, 32
	sd s8, 16(t3)
	add.uw s7, s10, s3
	slli s10, s11, 32
	sd s7, 24(t3)
	add.uw s3, s6, s10
	addw s10, a7, s5
	sd s3, 32(t3)
	slli s6, s10, 32
	add.uw s6, s11, s6
	addw s11, s0, s5
	sd s6, 40(t3)
	sd s9, 48(t3)
	slli s9, s11, 32
	sd s8, 56(t3)
	add.uw s9, s10, s9
	sd s7, 64(t3)
	addw s10, s1, s5
	sd s3, 72(t3)
	sd s6, 80(t3)
	sd s9, 88(t3)
	sd s8, 96(t3)
	slli s8, s10, 32
	sd s7, 104(t3)
	add.uw s8, s11, s8
	sd s3, 112(t3)
	sd s6, 120(t3)
	sd s9, 128(t3)
	sd s8, 136(t3)
	sd s7, 144(t3)
	addw s7, s2, s5
	sd s3, 152(t3)
	slli s11, s7, 32
	sd s6, 160(t3)
	add.uw s11, s10, s11
	sd s9, 168(t3)
	sd s8, 176(t3)
	sd s11, 184(t3)
	sd s3, 192(t3)
	sd s6, 200(t3)
	sd s9, 208(t3)
	addw s9, s4, s5
	sd s8, 216(t3)
	addiw s5, s5, 1
	slli s3, s9, 32
	sd s11, 224(t3)
	add.uw s6, s7, s3
	li s3, 4
	sd s6, 232(t3)
	bge s5, s3, label254
	addi t3, t3, 240
	j label15
label145:
	auipc a0, %pcrel_hi(arr2)
	mv a2, zero
	addi a3, a0, %pcrel_lo(label145)
	sd a3, 264(sp)
	li a0, 10
	blt zero, a0, label89
label25:
	ld a1, 288(sp)
	mv s1, zero
	mv a2, zero
	sd a1, 272(sp)
	sd zero, 280(sp)
label26:
	ld a0, 184(sp)
	ld a2, 280(sp)
	ld a3, 264(sp)
	mul a1, a2, a0
	li a0, 10
	add a3, a3, a1
	sd a3, 296(sp)
	bge a2, a0, label271
	ld a1, 272(sp)
	mv a2, zero
	sd a1, 304(sp)
	sd zero, 312(sp)
label31:
	ld a0, 200(sp)
	ld a2, 312(sp)
	ld a3, 296(sp)
	mul a1, a2, a0
	li a0, 100
	add a4, a3, a1
	sd a4, 320(sp)
	bge a2, a0, label277
	ld a1, 304(sp)
	mv a0, zero
	sd a1, 360(sp)
	sd zero, 152(sp)
	sub a3, zero, zero
	slli a2, a3, 8
	li a3, 1000
	add a1, a4, a2
	bge zero, a3, label283
.p2align 2
label43:
	ld a0, 360(sp)
	mv a2, zero
	li t1, 625
	sub t0, zero, zero
	slli a3, t1, 4
	slli a5, t0, 7
	add a4, a1, a5
	bge zero, a3, label295
.p2align 2
label51:
	mv a3, a0
	mv a5, zero
	sub t3, zero, zero
	ld t0, 160(sp)
	slli t2, t3, 5
	add t1, a4, t2
	bge zero, t0, label307
.p2align 2
label59:
	mv t0, a3
	mv t3, zero
	ld t2, 168(sp)
	bge zero, t2, label317
.p2align 2
label67:
	slli t2, t3, 3
	ld a7, 208(sp)
	sub t5, t2, t3
	li t2, 3
	sh2add t4, t5, t1
	ble a7, t2, label329
	lw t5, 0(t0)
	lw a6, 8(t4)
	lw t6, 0(t4)
	lw a7, 4(t0)
	addw t2, t5, t6
	lw t6, 4(t4)
	lw s0, 8(t0)
	addw t5, a7, t6
	lw a7, 12(t0)
	addw t6, a6, s0
	lw s2, 12(t4)
	addw a6, a7, s2
.p2align 2
label69:
	lui s2, 657125
	addiw a7, s2, -1067
	mul s3, s1, a7
	srli s0, s3, 32
	add s2, s0, s1
	li s0, 817
	srliw s5, s2, 31
	sraiw s4, s2, 9
	add s3, s5, s4
	mulw s6, s3, s0
	subw s5, s1, s6
	addw s2, t2, s5
	mul s4, s2, a7
	srli s7, s4, 32
	add s1, s7, s2
	srliw s6, s1, 31
	sraiw s3, s1, 9
	add s5, s6, s3
	mulw s4, s5, s0
	subw s1, s2, s4
	addw s3, t5, s1
	mul s5, s3, a7
	srli s4, s5, 32
	add s1, s4, s3
	srliw s7, s1, 31
	sraiw s2, s1, 9
	add s5, s7, s2
	mulw s4, s5, s0
	subw s6, s3, s4
	addw s1, t6, s6
	mul s5, s1, a7
	srli s3, s5, 32
	add a7, s3, s1
	srliw s4, a7, 31
	sraiw s2, a7, 9
	add s5, s4, s2
	mulw a7, s5, s0
	li s0, 7
	subw s3, s1, a7
	ld a7, 208(sp)
	addw s1, a6, s3
	bgt a7, s0, label69
	li s3, 4
	mv t6, s1
	ble a7, s3, label365
.p2align 2
label75:
	sh2add t2, s3, t0
	mv t5, s3
.p2align 2
label76:
	lw a6, 0(t2)
	lui s1, 657125
	addiw a7, s1, -1067
	mul s0, t6, a7
	srli s2, s0, 32
	add a7, s2, t6
	srliw s3, a7, 31
	sraiw s1, a7, 9
	li a7, 817
	add s0, s3, s1
	mulw s2, s0, a7
	sh2add s0, t5, t4
	subw s1, t6, s2
	addiw t5, t5, 1
	addw a7, a6, s1
	lw a6, 0(s0)
	addw t6, a7, a6
	ld a7, 208(sp)
	ble a7, t5, label379
	addi t2, t2, 4
	j label76
.p2align 2
label803:
	addiw a2, a2, 1
	ld a0, 184(sp)
	add a3, a3, a0
	li a0, 10
	bge a2, a0, label25
.p2align 2
label89:
	mv a4, a3
	mv a5, zero
	sext.w a1, a2
	li t3, 2
	blt zero, t3, label94
	addiw a2, a2, 1
	ld a0, 184(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label89
	j label25
.p2align 2
label795:
	addiw a5, a5, 1
	li t3, 2
	ld a0, 200(sp)
	addw a1, a2, a5
	add a4, a4, a0
	bge a5, t3, label803
.p2align 2
label94:
	mv t0, a4
	mv t1, zero
	li t2, 3
	blt zero, t2, label98
	addiw a5, a5, 1
	li t3, 2
	ld a0, 200(sp)
	addw a1, a2, a5
	add a4, a4, a0
	blt a5, t3, label94
label793:
	addiw a2, a2, 1
	ld a0, 184(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label89
	j label25
.p2align 2
label782:
	addiw t1, t1, 1
	addi t0, t0, 1792
	li t2, 3
	bge t1, t2, label795
.p2align 2
label98:
	mv t2, t0
	mv a0, zero
	li t3, 2
	blt zero, t3, label102
	addiw t1, t1, 1
	addi t0, t0, 1792
	li t2, 3
	blt t1, t2, label98
	addiw a5, a5, 1
	ld a0, 200(sp)
	addw a1, a2, a5
	add a4, a4, a0
	blt a5, t3, label94
	j label793
.p2align 2
label107:
	addi a0, a0, 224
.p2align 2
label103:
	slli s4, t4, 32
	slli s5, t6, 32
	slli s6, a7, 32
	slli s7, s1, 32
	slli s8, t5, 32
	slli s9, a6, 32
	slli s10, s0, 32
	addiw s2, s2, 1
	add.uw s3, s1, s4
	add.uw s4, t5, s5
	sd s3, 0(a0)
	add.uw s5, a6, s6
	sd s4, 8(a0)
	add.uw s6, s0, s7
	sd s5, 16(a0)
	add.uw s7, t4, s8
	sd s6, 24(a0)
	add.uw s8, t6, s9
	sd s7, 32(a0)
	add.uw s9, a7, s10
	sd s8, 40(a0)
	sd s9, 48(a0)
	sd s3, 56(a0)
	sd s4, 64(a0)
	sd s5, 72(a0)
	sd s6, 80(a0)
	sd s7, 88(a0)
	sd s8, 96(a0)
	sd s9, 104(a0)
	sd s3, 112(a0)
	sd s4, 120(a0)
	sd s5, 128(a0)
	sd s6, 136(a0)
	sd s7, 144(a0)
	sd s8, 152(a0)
	sd s9, 160(a0)
	sd s3, 168(a0)
	li s3, 4
	sd s4, 176(a0)
	sd s5, 184(a0)
	sd s6, 192(a0)
	sd s7, 200(a0)
	sd s8, 208(a0)
	sd s9, 216(a0)
	blt s2, s3, label107
	addi t2, t2, 896
	mv a0, t3
	li t3, 2
	bge a0, t3, label782
.p2align 2
label102:
	addiw t3, a0, 1
	addiw a6, a0, 2
	addiw a7, a0, 3
	addiw s0, a0, 4
	addiw s1, a0, 5
	addiw s2, a0, 6
	addw t4, a1, t3
	addw t5, a1, a6
	addw t6, a1, a7
	addw a6, a1, s0
	addw a7, a1, s1
	addw s0, a1, s2
	addw s1, a1, a0
	mv s2, zero
	mv a0, t2
	j label103
.p2align 2
label379:
	addiw t3, t3, 1
	ld t2, 224(sp)
	ble t2, t3, label778
.p2align 2
label83:
	addi t0, t0, 8
	mv s1, t6
	ld t2, 168(sp)
	blt t3, t2, label67
label317:
	mv t6, s1
	addiw a5, a5, 1
	ld t0, 240(sp)
	bgt t0, a5, label66
	addiw a2, a2, 1
	ld a3, 256(sp)
	bgt a3, a2, label58
	ld a0, 152(sp)
	addiw a1, a0, 1
	ld a0, 248(sp)
	bgt a0, a1, label50
	ld a2, 312(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	bgt a0, a2, label42
	j label84
.p2align 2
label778:
	addiw a5, a5, 1
	ld t0, 240(sp)
	bgt t0, a5, label66
	addiw a2, a2, 1
	ld a3, 256(sp)
	bgt a3, a2, label58
	ld a0, 152(sp)
	addiw a1, a0, 1
	ld a0, 248(sp)
	ble a0, a1, label805
label50:
	ld a0, 360(sp)
	mv s1, t6
	addi a0, a0, 960
	sd a0, 360(sp)
	sd a1, 152(sp)
	mv a0, a1
	ld a4, 320(sp)
	slli a1, a1, 3
	sub a3, a1, a0
	slli a2, a3, 8
	li a3, 1000
	add a1, a4, a2
	blt a0, a3, label43
label283:
	mv t6, s1
	ld a2, 312(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	bgt a0, a2, label42
	j label84
label329:
	mv s3, zero
	mv t6, s1
	ld a7, 208(sp)
	mv s1, zero
	bgt a7, zero, label75
.p2align 2
label365:
	mv t6, s1
	addiw t3, t3, 1
	ld t2, 224(sp)
	bgt t2, t3, label83
	addiw a5, a5, 1
	ld t0, 240(sp)
	ble t0, a5, label790
.p2align 2
label66:
	addi a3, a3, 48
	mv s1, t6
	slli t0, a5, 3
	sub t3, t0, a5
	ld t0, 160(sp)
	slli t2, t3, 5
	add t1, a4, t2
	blt a5, t0, label59
label307:
	mv t6, s1
	addiw a2, a2, 1
	ld a3, 256(sp)
	bgt a3, a2, label58
	ld a0, 152(sp)
	addiw a1, a0, 1
	ld a0, 248(sp)
	bgt a0, a1, label50
	ld a2, 312(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	bgt a0, a2, label42
	j label84
label790:
	addiw a2, a2, 1
	ld a3, 256(sp)
	ble a3, a2, label792
.p2align 2
label58:
	addi a0, a0, 240
	mv s1, t6
	slli a3, a2, 3
	li t1, 625
	sub t0, a3, a2
	slli a3, t1, 4
	slli a5, t0, 7
	add a4, a1, a5
	blt a2, a3, label51
label295:
	mv t6, s1
	ld a0, 152(sp)
	addiw a1, a0, 1
	ld a0, 248(sp)
	bgt a0, a1, label50
	ld a2, 312(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	bgt a0, a2, label42
	j label84
label792:
	ld a0, 152(sp)
	addiw a1, a0, 1
	ld a0, 248(sp)
	bgt a0, a1, label50
	ld a2, 312(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	bgt a0, a2, label42
	j label84
label805:
	ld a2, 312(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	ble a0, a2, label84
label42:
	ld a0, 176(sp)
	mv s1, t6
	ld a1, 304(sp)
	add a1, a1, a0
	sd a1, 304(sp)
	sd a2, 312(sp)
	j label31
label84:
	ld a2, 280(sp)
	ld a0, 216(sp)
	addiw a2, a2, 1
	ble a0, a2, label391
	ld a0, 192(sp)
	mv s1, t6
	ld a1, 272(sp)
	add a1, a1, a0
	sd a1, 272(sp)
	sd a2, 280(sp)
	j label26
label391:
	mv a0, t6
label87:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 392
	ret
label277:
	mv t6, s1
	j label84
label271:
	mv a0, s1
	j label87
