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
	addi sp, sp, -408
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 360(sp)
	jal getint
	addw t4, s0, a0
	sd a0, 352(sp)
	sd t4, 368(sp)
	ld a0, 360(sp)
	ld a1, 352(sp)
	addiw a2, a0, 2
	addw t2, a0, a1
	addw t3, a1, a2
	addiw a2, a0, 3
	addw t6, a1, a2
	sd t3, 384(sp)
	addiw a2, a0, 4
	sd t6, 392(sp)
	addw t3, a1, a2
	addiw a2, a0, 5
	sd t3, 400(sp)
	addw a7, a1, a2
	addiw a2, a0, 6
	sd a7, 168(sp)
	addw t3, a1, a2
	addiw a2, a0, 7
	sd t3, 152(sp)
	addw t3, a1, a2
	addiw a2, a0, 8
	sd t3, 144(sp)
	addw t3, a1, a2
	addiw a2, a0, 9
	sd t3, 136(sp)
	addw t3, a1, a2
	addiw a2, a0, 10
	sd t3, 120(sp)
	addw t3, a1, a2
	sd t3, 104(sp)
	sd t2, 112(sp)
	jal getint
	sd a0, 232(sp)
	jal getint
	sd a0, 248(sp)
	jal getint
	sd a0, 264(sp)
	jal getint
	sd a0, 272(sp)
	mv a3, a0
	jal getint
	sd a0, 256(sp)
	mv t0, a0
	jal getint
	sd a0, 240(sp)
	mv t3, a0
	jal getint
	sd a0, 224(sp)
	addiw a7, a0, -4
	mv a2, zero
	mv t5, a0
	li a4, 45
pcrel822:
	auipc a0, %pcrel_hi(arr1)
	sd a7, 216(sp)
	addi a1, a0, %pcrel_lo(pcrel822)
	slli a0, a4, 6
	mv a3, a1
	sd a1, 312(sp)
	lui a4, 24
	li a1, 21
	addiw t0, a4, 1696
	sd a0, 208(sp)
	slli a0, a1, 8
	lui a1, 244
	sd a0, 184(sp)
	addiw t3, a1, 576
	addi a0, a0, 384
	sd a0, 192(sp)
	ld a0, 184(sp)
	slli a0, a0, 1
	addi a5, a0, -752
	sd a0, 200(sp)
	sd t3, 176(sp)
	sd t0, 288(sp)
	sd a5, 280(sp)
	ld a0, 360(sp)
	ld a1, 352(sp)
	slt a0, zero, a0
	slt a5, zero, a1
	and a4, a0, a5
	bne a4, zero, label5
	j label145
.p2align 2
label788:
	addiw a2, a2, 1
	ld a0, 192(sp)
	add a3, a3, a0
	ld a0, 360(sp)
	ld a1, 352(sp)
	slt a0, a2, a0
	slt a5, a2, a1
	and a4, a0, a5
	beq a4, zero, label145
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
	ld a0, 360(sp)
	ld a1, 352(sp)
	slt a0, a2, a0
	slt a5, a2, a1
	and a4, a0, a5
	bne a4, zero, label5
	j label145
.p2align 2
label780:
	addiw a5, a5, 1
	li t3, 2
	ld a0, 208(sp)
	add a4, a4, a0
	addw a0, a2, a5
	bge a5, t3, label788
.p2align 2
label9:
	mv t0, a4
	mv a1, zero
	li t2, 3
	blt zero, t2, label14
	addiw a5, a5, 1
	li t3, 2
	ld a0, 208(sp)
	add a4, a4, a0
	addw a0, a2, a5
	blt a5, t3, label9
	addiw a2, a2, 1
	ld a0, 192(sp)
	add a3, a3, a0
	ld a0, 360(sp)
	ld a1, 352(sp)
	slt a0, a2, a0
	slt a5, a2, a1
	and a4, a0, a5
	bne a4, zero, label5
	j label145
.p2align 2
label18:
	addi t3, t3, 240
.p2align 2
label15:
	addw s7, t1, s5
	addw s6, t2, s5
	addw s3, t4, s5
	addw s11, t5, s5
	addw s10, a6, s5
	slli s8, s6, 32
	add.uw s9, s7, s8
	slli s7, s3, 32
	sd s9, 0(t3)
	add.uw s9, s6, s7
	addw s6, t6, s5
	slli s7, s11, 32
	sd s9, 8(t3)
	add.uw s8, s3, s7
	slli s3, s6, 32
	sd s8, 16(t3)
	add.uw s7, s11, s3
	slli s11, s10, 32
	sd s7, 24(t3)
	add.uw s3, s6, s11
	addw s11, a7, s5
	sd s3, 32(t3)
	slli s6, s11, 32
	add.uw s6, s10, s6
	addw s10, s0, s5
	sd s6, 40(t3)
	sd s9, 48(t3)
	slli s9, s10, 32
	sd s8, 56(t3)
	add.uw s9, s11, s9
	sd s7, 64(t3)
	addw s11, s1, s5
	sd s3, 72(t3)
	sd s6, 80(t3)
	sd s9, 88(t3)
	sd s8, 96(t3)
	slli s8, s11, 32
	sd s7, 104(t3)
	add.uw s8, s10, s8
	sd s3, 112(t3)
	sd s6, 120(t3)
	sd s9, 128(t3)
	sd s8, 136(t3)
	sd s7, 144(t3)
	addw s7, s2, s5
	sd s3, 152(t3)
	slli s10, s7, 32
	sd s6, 160(t3)
	add.uw s10, s11, s10
	sd s9, 168(t3)
	sd s8, 176(t3)
	sd s10, 184(t3)
	sd s3, 192(t3)
	sd s6, 200(t3)
	addw s6, s4, s5
	sd s9, 208(t3)
	addiw s5, s5, 1
	slli s3, s6, 32
	sd s8, 216(t3)
	add.uw s8, s7, s3
	sd s10, 224(t3)
	li s3, 4
	sd s8, 232(t3)
	blt s5, s3, label18
	addiw a1, a1, 1
	addi t0, t0, 960
	li t2, 3
	bge a1, t2, label780
.p2align 2
label14:
	ld t2, 112(sp)
	mv s5, zero
	ld t4, 368(sp)
	addw t3, t2, a1
	addw t6, t4, a1
	addw t1, a0, t3
	addw t2, a0, t6
	ld t3, 384(sp)
	ld t6, 392(sp)
	addw t5, t3, a1
	addw a6, t6, a1
	addw t4, a0, t5
	ld t3, 400(sp)
	addw t5, a0, a6
	ld a7, 168(sp)
	addw a6, t3, a1
	addw s1, a7, a1
	addw t6, a0, a6
	ld t3, 152(sp)
	addw a6, a0, s1
	addw s0, t3, a1
	ld t3, 144(sp)
	addw a7, a0, s0
	addw s1, t3, a1
	ld t3, 136(sp)
	addw s0, a0, s1
	addw s2, t3, a1
	ld t3, 120(sp)
	addw s1, a0, s2
	addw s3, t3, a1
	ld t3, 104(sp)
	addw s2, a0, s3
	addw s6, t3, a1
	mv t3, t0
	addw s4, a0, s6
	j label15
label145:
	auipc a0, %pcrel_hi(arr2)
	mv a2, zero
	addi a3, a0, %pcrel_lo(label145)
	sd a3, 296(sp)
	li a0, 10
	blt zero, a0, label25
label264:
	ld a1, 312(sp)
	mv s1, zero
	mv a2, zero
	sd a1, 304(sp)
	sd zero, 320(sp)
label47:
	ld a0, 200(sp)
	ld a2, 320(sp)
	ld a3, 296(sp)
	mul a1, a2, a0
	li a0, 10
	add a3, a3, a1
	sd a3, 328(sp)
	bge a2, a0, label364
	ld a1, 304(sp)
	mv a2, zero
	sd a1, 336(sp)
	sd zero, 344(sp)
label52:
	ld a0, 184(sp)
	ld a2, 344(sp)
	ld a3, 328(sp)
	mul a1, a2, a0
	li a0, 100
	add a4, a3, a1
	sd a4, 376(sp)
	bge a2, a0, label104
	ld a1, 336(sp)
	mv a0, zero
	sd a1, 160(sp)
	sd zero, 128(sp)
	sub a3, zero, zero
	slli a2, a3, 8
	li a3, 1000
	add a1, a4, a2
	bge zero, a3, label61
.p2align 2
label64:
	ld a0, 160(sp)
	mv a2, zero
	sub a3, zero, zero
	ld a5, 280(sp)
	slli t0, a3, 7
	add a4, a1, t0
	bge zero, a5, label69
.p2align 2
label72:
	mv a3, a0
	mv a5, zero
	sub t2, zero, zero
	ld t0, 288(sp)
	slli t3, t2, 5
	add t1, a4, t3
	bge zero, t0, label101
.p2align 2
label77:
	mv t0, a3
	mv t2, zero
	ld t3, 176(sp)
	bge zero, t3, label82
.p2align 2
label85:
	slli t6, t2, 3
	li s3, 4
	ld t5, 224(sp)
	sub t4, t6, t2
	sh2add t3, t4, t1
	ble t5, s3, label86
	lw a6, 4(t0)
	mv t4, t0
	mv t6, zero
	lw a7, 4(t3)
	addw t5, a6, a7
.p2align 2
label95:
	lw s2, 0(t4)
	lui a7, 657125
	addiw a6, a7, -1067
	mul s4, s1, a6
	srli s0, s4, 32
	add a7, s0, s1
	srliw s4, a7, 31
	sraiw s3, a7, 9
	li a7, 817
	add s0, s4, s3
	mulw s5, s0, a7
	sh2add s0, t6, t3
	subw s4, s1, s5
	addiw t6, t6, 4
	addw s3, s2, s4
	lw s6, 0(s0)
	addw s1, s3, s6
	mul s5, s1, a6
	srli s4, s5, 32
	add s2, s4, s1
	srliw s7, s2, 31
	sraiw s3, s2, 9
	add s5, s7, s3
	mulw s6, s5, a7
	subw s4, s1, s6
	addw s2, t5, s4
	mul s5, s2, a6
	srli s3, s5, 32
	add s1, s3, s2
	srliw s5, s1, 31
	sraiw s4, s1, 9
	add s7, s5, s4
	lw s5, 8(t4)
	mulw s6, s7, a7
	subw s3, s2, s6
	lw s2, 8(s0)
	addw s4, s3, s5
	addw s1, s4, s2
	mul s5, s1, a6
	srli s6, s5, 32
	add a6, s6, s1
	srliw s4, a6, 31
	sraiw s3, a6, 9
	add s5, s4, s3
	lw s3, 12(t4)
	mulw a6, s5, a7
	lw a7, 12(s0)
	subw s2, s1, a6
	addw a6, s2, s3
	addw s1, a6, a7
	ld a7, 216(sp)
	ble a7, t6, label468
	addi t4, t4, 16
	j label95
.p2align 2
label796:
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	li a0, 10
	bge a2, a0, label264
.p2align 2
label25:
	mv a4, a3
	mv a5, zero
	sext.w a1, a2
	li t3, 2
	blt zero, t3, label29
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label25
	j label264
.p2align 2
label791:
	addiw a5, a5, 1
	li t3, 2
	ld a0, 184(sp)
	addw a1, a2, a5
	add a4, a4, a0
	bge a5, t3, label796
.p2align 2
label29:
	mv t0, a4
	mv t1, zero
	li t2, 3
	blt zero, t2, label33
	addiw a5, a5, 1
	li t3, 2
	ld a0, 184(sp)
	addw a1, a2, a5
	add a4, a4, a0
	blt a5, t3, label29
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label25
	j label264
.p2align 2
label784:
	addiw t1, t1, 1
	addi t0, t0, 1792
	li t2, 3
	bge t1, t2, label791
.p2align 2
label33:
	mv t2, t0
	mv a0, zero
	li t3, 2
	blt zero, t3, label37
	addiw t1, t1, 1
	addi t0, t0, 1792
	li t2, 3
	blt t1, t2, label33
	addiw a5, a5, 1
	ld a0, 184(sp)
	addw a1, a2, a5
	add a4, a4, a0
	blt a5, t3, label29
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label25
	j label264
.p2align 2
label41:
	addi a0, a0, 224
.p2align 2
label38:
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
	blt s2, s3, label41
	addi t2, t2, 896
	mv a0, t3
	li t3, 2
	bge a0, t3, label784
.p2align 2
label37:
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
	j label38
label86:
	mv t4, t0
	mv t6, zero
	j label87
.p2align 2
label93:
	addi t4, t4, 4
.p2align 2
label87:
	lw t5, 0(t4)
	lui a7, 657125
	addiw a6, a7, -1067
	mul s2, s1, a6
	srli a7, s2, 32
	add a6, a7, s1
	srliw s2, a6, 31
	sraiw s0, a6, 9
	li a6, 817
	add a7, s2, s0
	sh2add s0, t6, t3
	addiw t6, t6, 1
	mulw s3, a7, a6
	lw a7, 0(s0)
	subw s2, s1, s3
	addw a6, t5, s2
	ld t5, 224(sp)
	addw s1, a6, a7
	bgt t5, t6, label93
	addiw t2, t2, 1
	ld t3, 240(sp)
	ble t3, t2, label433
	addi t0, t0, 8
	ld t3, 176(sp)
	blt t2, t3, label85
	j label82
.p2align 2
label433:
	addiw a5, a5, 1
	ld t0, 256(sp)
	ble t0, a5, label774
.p2align 2
label84:
	addi a3, a3, 48
	slli t0, a5, 3
	sub t2, t0, a5
	ld t0, 288(sp)
	slli t3, t2, 5
	add t1, a4, t3
	blt a5, t0, label77
	j label101
.p2align 2
label774:
	addiw a2, a2, 1
	ld a3, 272(sp)
	ble a3, a2, label786
.p2align 2
label103:
	addi a0, a0, 240
	slli a5, a2, 3
	sub a3, a5, a2
	ld a5, 280(sp)
	slli t0, a3, 7
	add a4, a1, t0
	blt a2, a5, label72
	j label69
.p2align 2
label786:
	ld a0, 128(sp)
	addiw a1, a0, 1
	ld a0, 264(sp)
	ble a0, a1, label793
label71:
	ld a0, 160(sp)
	addi a0, a0, 960
	sd a0, 160(sp)
	sd a1, 128(sp)
	mv a0, a1
	ld a4, 376(sp)
	slli a1, a1, 3
	sub a3, a1, a0
	slli a2, a3, 8
	li a3, 1000
	add a1, a4, a2
	blt a0, a3, label64
	j label61
label793:
	ld a2, 344(sp)
	ld a0, 248(sp)
	addiw a2, a2, 1
	bgt a0, a2, label63
label104:
	ld a2, 320(sp)
	ld a0, 232(sp)
	addiw a2, a2, 1
	ble a0, a2, label364
	ld a0, 192(sp)
	ld a1, 304(sp)
	add a1, a1, a0
	sd a1, 304(sp)
	sd a2, 320(sp)
	j label47
label364:
	mv a0, s1
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 408
	ret
label82:
	addiw a5, a5, 1
	ld t0, 256(sp)
	bgt t0, a5, label84
	addiw a2, a2, 1
	ld a3, 272(sp)
	bgt a3, a2, label103
	ld a0, 128(sp)
	addiw a1, a0, 1
	ld a0, 264(sp)
	bgt a0, a1, label71
	ld a2, 344(sp)
	ld a0, 248(sp)
	addiw a2, a2, 1
	bgt a0, a2, label63
	j label104
label101:
	addiw a2, a2, 1
	ld a3, 272(sp)
	bgt a3, a2, label103
	ld a0, 128(sp)
	addiw a1, a0, 1
	ld a0, 264(sp)
	bgt a0, a1, label71
	ld a2, 344(sp)
	ld a0, 248(sp)
	addiw a2, a2, 1
	bgt a0, a2, label63
	j label104
label69:
	ld a0, 128(sp)
	addiw a1, a0, 1
	ld a0, 264(sp)
	bgt a0, a1, label71
	ld a2, 344(sp)
	ld a0, 248(sp)
	addiw a2, a2, 1
	bgt a0, a2, label63
	j label104
label61:
	ld a2, 344(sp)
	ld a0, 248(sp)
	addiw a2, a2, 1
	ble a0, a2, label104
label63:
	ld a0, 208(sp)
	ld a1, 336(sp)
	add a1, a1, a0
	sd a1, 336(sp)
	sd a2, 344(sp)
	j label52
.p2align 2
label468:
	sh2add t4, t6, t0
	j label87
