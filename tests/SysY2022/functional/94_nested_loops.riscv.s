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
	# stack usage: CalleeArg[0] Local[0] RegSpill[240] CalleeSaved[104]
	addi sp, sp, -344
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
	slt s0, zero, a0
	sd a0, 248(sp)
	jal getint
	sd a0, 240(sp)
	slt a3, zero, a0
	ld a0, 248(sp)
	and s2, s0, a3
	ld a1, 240(sp)
	addiw a2, a0, 1
	addw a0, a1, a2
	sd a0, 264(sp)
	ld a0, 248(sp)
	addiw a2, a0, 2
	addw a1, a1, a2
	addiw a2, a0, 3
	sd a1, 272(sp)
	ld a1, 240(sp)
	addw a0, a1, a2
	sd a0, 288(sp)
	ld a0, 248(sp)
	addiw a2, a0, 4
	addw a1, a1, a2
	addiw a2, a0, 5
	sd a1, 296(sp)
	ld a1, 240(sp)
	addw a0, a1, a2
	sd a0, 304(sp)
	ld a0, 248(sp)
	addiw a2, a0, 6
	addw a1, a1, a2
	addiw a2, a0, 7
	sd a1, 312(sp)
	ld a1, 240(sp)
	addw a0, a1, a2
	sd a0, 328(sp)
	ld a0, 248(sp)
	addiw a2, a0, 8
	addw a1, a1, a2
	addiw a2, a0, 9
	sd a1, 336(sp)
	ld a1, 240(sp)
	addw a0, a1, a2
	sd a0, 104(sp)
	ld a0, 248(sp)
	addw s1, a0, a1
	addiw a2, a0, 10
	addw s0, a1, a2
	jal getint
	sd a0, 168(sp)
	jal getint
	sd a0, 184(sp)
	jal getint
	sd a0, 200(sp)
	mv a4, a0
	jal getint
	sd a0, 208(sp)
	mv t1, a0
	jal getint
	sd a0, 192(sp)
	mv t4, a0
	jal getint
	sd a0, 176(sp)
	mv a6, a0
	jal getint
	mv s3, a0
pcrel844:
	auipc a1, %pcrel_hi(arr1)
	li a2, 45
	addi a4, a1, %pcrel_lo(pcrel844)
	sd a0, 160(sp)
	li a1, 21
	li a0, 21
	sd a4, 224(sp)
	slli a5, a0, 8
	slli a0, a2, 6
	sd a5, 152(sp)
	sd a0, 144(sp)
	slli a0, a1, 9
	lui a1, 244
	sd a0, 128(sp)
	addiw a6, a1, 576
	ld a0, 144(sp)
	slli a0, a0, 1
	sd a0, 136(sp)
	lui a0, 24
	sd a6, 120(sp)
	addiw t4, a0, 1696
	sd t4, 112(sp)
	beq s2, zero, label2
	mv s4, zero
	mv s3, a4
	j label83
.p2align 2
label802:
	ld a0, 248(sp)
	ld a1, 240(sp)
	slt a0, s4, a0
	slt a3, s4, a1
	and a2, a0, a3
	beq a2, zero, label2
	ld a0, 136(sp)
	add s3, s3, a0
.p2align 2
label83:
	addw a3, s1, s4
	addw a6, s0, s4
	mv s2, s3
	mv a2, zero
	ld a0, 264(sp)
	ld a1, 272(sp)
	addw a4, a0, s4
	addw a5, a1, s4
	ld a0, 288(sp)
	ld a1, 296(sp)
	addw t0, a0, s4
	addw t1, a1, s4
	ld a0, 304(sp)
	ld a1, 312(sp)
	addw t2, a0, s4
	addw t3, a1, s4
	ld a0, 328(sp)
	ld a1, 336(sp)
	addw t4, a0, s4
	addw t5, a1, s4
	ld a0, 104(sp)
	mv a1, zero
	addw t6, a0, s4
	mv a0, zero
	addiw s4, s4, 1
	j label86
.p2align 2
label488:
	mv a2, zero
.p2align 2
label86:
	addw s6, a3, a2
	slli s7, a0, 4
	addw a7, a0, s6
	addw s5, a1, a7
	sub a7, s7, a0
	addw s7, a4, a2
	slli s9, a7, 6
	slli a7, a2, 4
	add s6, s2, s9
	sub s8, a7, a2
	addw s9, a0, s7
	slli s10, s8, 4
	addw s7, a5, a2
	add a7, s6, s10
	addw s10, a0, s7
	addw s6, a1, s9
	addw s7, t0, a2
	slli s8, s6, 32
	add.uw s11, s5, s8
	addw s5, a1, s10
	sd s11, 0(a7)
	slli s8, s5, 32
	add.uw s9, s6, s8
	addw s6, a0, s7
	sd s9, 8(a7)
	addw s7, t1, a2
	addw s10, a1, s6
	slli s11, s10, 32
	add.uw s8, s5, s11
	addw s11, a0, s7
	sd s8, 16(a7)
	addw s6, a1, s11
	slli s5, s6, 32
	add.uw s7, s10, s5
	addw s10, t2, a2
	sd s7, 24(a7)
	addw s5, a0, s10
	addw s11, a1, s5
	slli s10, s11, 32
	add.uw s5, s6, s10
	addw s6, t3, a2
	sd s5, 32(a7)
	addw s6, a0, s6
	addw s10, a1, s6
	slli s6, s10, 32
	add.uw s6, s11, s6
	addw s11, t4, a2
	sd s6, 40(a7)
	sd s9, 48(a7)
	addw s9, a0, s11
	sd s8, 56(a7)
	addw s11, a1, s9
	sd s7, 64(a7)
	slli s9, s11, 32
	sd s5, 72(a7)
	add.uw s9, s10, s9
	sd s6, 80(a7)
	addw s10, t5, a2
	sd s9, 88(a7)
	sd s8, 96(a7)
	addw s8, a0, s10
	sd s7, 104(a7)
	addw s10, a1, s8
	sd s5, 112(a7)
	slli s8, s10, 32
	sd s6, 120(a7)
	add.uw s8, s11, s8
	sd s9, 128(a7)
	addw s11, t6, a2
	sd s8, 136(a7)
	sd s7, 144(a7)
	addw s7, a0, s11
	sd s5, 152(a7)
	addw s7, a1, s7
	sd s6, 160(a7)
	slli s11, s7, 32
	sd s9, 168(a7)
	add.uw s11, s10, s11
	sd s8, 176(a7)
	sd s11, 184(a7)
	sd s5, 192(a7)
	sd s6, 200(a7)
	addw s6, a6, a2
	sd s9, 208(a7)
	addiw a2, a2, 1
	addw s5, a0, s6
	sd s8, 216(a7)
	addw s8, a1, s5
	sd s11, 224(a7)
	slli s9, s8, 32
	add.uw s6, s7, s9
	sd s6, 232(a7)
	li a7, 4
	blt a2, a7, label86
	addiw a0, a0, 1
	li a7, 3
	blt a0, a7, label488
	addiw a1, a1, 1
	li a7, 2
	bge a1, a7, label802
	ld a0, 144(sp)
	mv a2, zero
	add s2, s2, a0
	mv a0, zero
	j label86
label2:
	auipc a0, %pcrel_hi(arr2)
	mv a6, zero
	mv a2, zero
	mv a1, zero
	addi a3, a0, %pcrel_lo(label2)
	mv a0, zero
	sd a3, 216(sp)
	j label3
.p2align 2
label220:
	li a7, 2
	bge a5, a7, label787
	mv a6, a5
.p2align 2
label3:
	ld a5, 152(sp)
	slli t1, a2, 3
	addiw a7, a6, 5
	addw s0, a6, a0
	sub t2, t1, a2
	mul t0, a0, a5
	slli t3, t2, 8
	slli a5, a6, 3
	add a4, a3, t0
	sub t1, a5, a6
	add t0, a4, t3
	addiw a5, a6, 1
	slli t2, t1, 7
	addiw t3, a6, 3
	addw t1, a0, a5
	add a4, t0, t2
	addw t5, a0, t3
	addiw t2, a6, 2
	addw t0, a1, t1
	addw t4, a0, t2
	addw t2, a1, t5
	addw t1, a1, t4
	addw t5, a0, a7
	addiw t4, a6, 4
	addw t6, a0, t4
	addw t4, a1, t5
	addw t3, a1, t6
	addiw t6, a6, 6
	mv a6, zero
	addw a7, a0, t6
	addw t6, a1, s0
	addw t5, a1, a7
.p2align 2
label9:
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
	bge a6, a7, label220
	addi a4, a4, 224
	j label9
.p2align 2
label787:
	addiw a2, a2, 1
	li a7, 3
	bge a2, a7, label804
	mv a6, zero
	j label3
.p2align 2
label804:
	addiw a0, a0, 1
	li a7, 2
	bge a0, a7, label813
	mv a6, zero
	mv a2, zero
	j label3
.p2align 2
label813:
	addiw a1, a1, 1
	li a0, 10
	bge a1, a0, label819
	ld a0, 128(sp)
	mv a6, zero
	mv a2, zero
	add a3, a3, a0
	mv a0, zero
	j label3
label819:
	ld a4, 224(sp)
	mv s5, zero
	mv a1, zero
	sd a4, 232(sp)
	sd zero, 256(sp)
label19:
	ld a0, 128(sp)
	ld a1, 256(sp)
	ld a3, 216(sp)
	mul a2, a1, a0
	li a0, 10
	add a3, a3, a2
	sd a3, 280(sp)
	bge a1, a0, label247
	ld a4, 232(sp)
	mv a1, zero
	sd a4, 320(sp)
label24:
	ld a5, 152(sp)
	li a4, 100
	ld a3, 280(sp)
	mul a0, a1, a5
	add a2, a3, a0
	bge a1, a4, label253
	ld a4, 320(sp)
	mv a3, zero
	mv a0, a4
	sub t1, zero, zero
	li a4, 1000
	slli t0, t1, 8
	add a5, a2, t0
	bge zero, a4, label259
.p2align 2
label36:
	mv a4, a0
	mv t0, zero
	sub t3, zero, zero
	li t4, 625
	slli t1, t3, 7
	slli t3, t4, 4
	add t2, a5, t1
	bge zero, t3, label271
.p2align 2
label41:
	mv t1, a4
	mv t3, zero
	sub t6, zero, zero
	ld t4, 112(sp)
	slli a6, t6, 5
	add t5, t2, a6
	bge zero, t4, label277
.p2align 2
label49:
	mv t4, t1
	mv t6, zero
	ld a6, 120(sp)
	bge zero, a6, label287
.p2align 2
label57:
	slli s0, t6, 3
	ld s3, 160(sp)
	sub a7, s0, t6
	sh2add a6, a7, t5
	li a7, 3
	ble s3, a7, label299
	lw s0, 0(t4)
	lw s4, 8(a6)
	lw s3, 12(t4)
	lw s1, 0(a6)
	lw s6, 12(a6)
	addw a7, s0, s1
	lw s2, 4(t4)
	lw s8, 4(a6)
	lw s7, 8(t4)
	addw s0, s2, s8
	addw s1, s4, s7
	addw s2, s3, s6
.p2align 2
label59:
	lui s6, 657125
	addiw s3, s6, -1067
	mul s7, s5, s3
	srli s4, s7, 32
	add s6, s4, s5
	li s4, 817
	srliw s10, s6, 31
	sraiw s8, s6, 9
	add s7, s10, s8
	mulw s9, s7, s4
	subw s8, s5, s9
	addw s6, a7, s8
	mul s10, s6, s3
	srli s9, s10, 32
	add s5, s9, s6
	srliw s11, s5, 31
	sraiw s7, s5, 9
	add s8, s11, s7
	mulw s9, s8, s4
	subw s10, s6, s9
	addw s5, s0, s10
	mul s8, s5, s3
	srli s9, s8, 32
	add s6, s9, s5
	srliw s10, s6, 31
	sraiw s7, s6, 9
	add s8, s10, s7
	mulw s11, s8, s4
	subw s9, s5, s11
	addw s6, s1, s9
	mul s7, s6, s3
	srli s8, s7, 32
	add s5, s8, s6
	srliw s10, s5, 31
	sraiw s3, s5, 9
	add s7, s10, s3
	ld s3, 160(sp)
	mulw s8, s7, s4
	li s4, 7
	subw s9, s6, s8
	addw s5, s2, s9
	bgt s3, s4, label59
	li a7, 4
	mv s1, s5
	mv s0, a7
	ble s3, a7, label335
.p2align 2
label65:
	sh2add a7, s0, t4
	j label66
.p2align 2
label70:
	addi a7, a7, 4
.p2align 2
label66:
	lw s2, 0(a7)
	lui s3, 657125
	li s7, 817
	addiw s4, s3, -1067
	mul s6, s1, s4
	srli s5, s6, 32
	add s3, s5, s1
	srliw s6, s3, 31
	sraiw s4, s3, 9
	add s5, s6, s4
	mulw s3, s5, s7
	sh2add s5, s0, a6
	subw s6, s1, s3
	addiw s0, s0, 1
	addw s4, s2, s6
	lw s7, 0(s5)
	ld s3, 160(sp)
	addw s1, s4, s7
	bgt s3, s0, label70
	addiw t6, t6, 1
	ld a6, 176(sp)
	ble a6, t6, label797
.p2align 2
label73:
	addi t4, t4, 8
	mv s5, s1
	ld a6, 120(sp)
	blt t6, a6, label57
label287:
	mv s1, s5
	addiw t3, t3, 1
	ld t4, 192(sp)
	bgt t4, t3, label56
	addiw t0, t0, 1
	ld t1, 208(sp)
	bgt t1, t0, label48
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label76
	addiw a1, a1, 1
	ld a0, 184(sp)
	bgt a0, a1, label35
	j label77
.p2align 2
label797:
	addiw t3, t3, 1
	ld t4, 192(sp)
	ble t4, t3, label810
.p2align 2
label56:
	addi t1, t1, 48
	mv s5, s1
	slli t4, t3, 3
	sub t6, t4, t3
	ld t4, 112(sp)
	slli a6, t6, 5
	add t5, t2, a6
	blt t3, t4, label49
label277:
	mv s1, s5
	addiw t0, t0, 1
	ld t1, 208(sp)
	bgt t1, t0, label48
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label76
	addiw a1, a1, 1
	ld a0, 184(sp)
	bgt a0, a1, label35
	j label77
label299:
	mv s0, zero
	mv s1, s5
	ld s3, 160(sp)
	mv s5, zero
	bgt s3, zero, label65
.p2align 2
label335:
	mv s1, s5
	addiw t6, t6, 1
	ld a6, 176(sp)
	bgt a6, t6, label73
	addiw t3, t3, 1
	ld t4, 192(sp)
	bgt t4, t3, label56
	addiw t0, t0, 1
	ld t1, 208(sp)
	bgt t1, t0, label48
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label76
	addiw a1, a1, 1
	ld a0, 184(sp)
	bgt a0, a1, label35
	j label77
.p2align 2
label810:
	addiw t0, t0, 1
	ld t1, 208(sp)
	ble t1, t0, label817
.p2align 2
label48:
	addi a4, a4, 240
	mv s5, s1
	slli t4, t0, 3
	sub t3, t4, t0
	li t4, 625
	slli t1, t3, 7
	slli t3, t4, 4
	add t2, a5, t1
	blt t0, t3, label41
label271:
	mv s1, s5
	addiw a3, a3, 1
	ld a4, 200(sp)
	ble a4, a3, label361
label76:
	addi a0, a0, 960
	mv s5, s1
	slli a4, a3, 3
	sub t1, a4, a3
	li a4, 1000
	slli t0, t1, 8
	add a5, a2, t0
	blt a3, a4, label36
label259:
	mv s1, s5
	addiw a1, a1, 1
	ld a0, 184(sp)
	bgt a0, a1, label35
	j label77
.p2align 2
label817:
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label76
	addiw a1, a1, 1
	ld a0, 184(sp)
	ble a0, a1, label77
label35:
	ld a0, 144(sp)
	mv s5, s1
	ld a4, 320(sp)
	add a4, a4, a0
	sd a4, 320(sp)
	j label24
label77:
	ld a1, 256(sp)
	ld a0, 168(sp)
	addiw a1, a1, 1
	bgt a0, a1, label79
	mv a0, s1
label80:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 344
	ret
label361:
	addiw a1, a1, 1
	ld a0, 184(sp)
	bgt a0, a1, label35
	j label77
label253:
	mv s1, s5
	j label77
label79:
	ld a0, 136(sp)
	mv s5, s1
	ld a4, 232(sp)
	add a4, a4, a0
	sd a4, 232(sp)
	sd a1, 256(sp)
	j label19
label247:
	mv a0, s5
	j label80
