.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
radixSort:
.p2align 2
	addi sp, sp, -248
	mv a4, a0
	mv t3, a2
	mv t2, a3
	sd s0, 136(sp)
	addiw a2, a2, 1
	mv s0, a1
	sd s5, 240(sp)
	slt a1, a2, a3
	sd s3, 64(sp)
	xori a2, a0, -1
	xori a0, a1, 1
	addi s3, sp, 0
	sd s2, 232(sp)
	sltiu a1, a2, 1
	addi s2, sp, 72
	or a0, a0, a1
	sd s1, 224(sp)
	addi s1, sp, 144
	sd s4, 216(sp)
	sd ra, 208(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	bne a0, zero, label2
	li a1, -21844
	li a2, -5460
	addiw t0, a4, -1364
	addiw a5, a4, -340
	addiw a3, a4, -84
	addiw s4, a4, -1
	addw a0, a4, a1
	addw t1, a4, a2
	addiw a1, a4, -4
	addiw a2, a4, -20
	bge t3, t2, label38
	mv t4, t3
	j label4
.p2align 2
label7:
	li a6, 16
	bgt a1, a6, label8
	mv t5, t6
	mv t6, zero
	li t6, 4
	slli a6, t5, 1
	srli a7, a6, 48
	add t5, t5, a7
	sraiw a6, t5, 16
	bgt a1, t6, label246
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a6, a6, 1
	srli s5, a6, 60
	add a7, t6, s5
	sraiw t6, a7, 4
	bgt a4, t5, label33
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 0(t5)
	bgt t2, t4, label4
label38:
	sw t3, 144(sp)
	lw t4, 0(sp)
	addw t2, t3, t4
	sw t2, 72(sp)
	sw t2, 148(sp)
	lw t4, 4(sp)
	addw t2, t2, t4
	sw t2, 76(sp)
	sw t2, 152(sp)
	lw t4, 8(sp)
	addw t2, t2, t4
	sw t2, 80(sp)
	sw t2, 156(sp)
	lw t4, 12(sp)
	addw t2, t2, t4
	sw t2, 84(sp)
	sw t2, 160(sp)
	lw t4, 16(sp)
	addw t2, t2, t4
	sw t2, 88(sp)
	sw t2, 164(sp)
	lw t4, 20(sp)
	addw t2, t2, t4
	sw t2, 92(sp)
	sw t2, 168(sp)
	lw t4, 24(sp)
	addw t2, t2, t4
	sw t2, 96(sp)
	sw t2, 172(sp)
	lw t4, 28(sp)
	addw t2, t2, t4
	sw t2, 100(sp)
	sw t2, 176(sp)
	lw t4, 32(sp)
	addw t2, t2, t4
	sw t2, 104(sp)
	sw t2, 180(sp)
	lw t4, 36(sp)
	addw t2, t2, t4
	sw t2, 108(sp)
	sw t2, 184(sp)
	lw t4, 40(sp)
	addw t2, t2, t4
	sw t2, 112(sp)
	sw t2, 188(sp)
	lw t4, 44(sp)
	addw t2, t2, t4
	sw t2, 116(sp)
	sw t2, 192(sp)
	lw t4, 48(sp)
	addw t2, t2, t4
	sw t2, 120(sp)
	sw t2, 196(sp)
	lw t4, 52(sp)
	addw t2, t2, t4
	sw t2, 124(sp)
	sw t2, 200(sp)
	lw t4, 56(sp)
	addw t2, t2, t4
	sw t2, 128(sp)
	sw t2, 204(sp)
	lw t4, 60(sp)
	addw t5, t2, t4
	mv t2, zero
	sw t5, 132(sp)
	li t4, 16
	blt zero, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label41:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label905:
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	j label907
.p2align 2
label61:
	lui a6, 1
	bgt t0, a6, label64
	mv t6, zero
	li t6, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	j label909
.p2align 2
label79:
	addiw t5, t5, 1
	slli a7, t6, 1
	srli s5, a7, 60
	add a6, t6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label79
	slli t5, t6, 1
	srli a6, t5, 60
	add a7, t6, a6
	andi a6, a7, -16
	subw t5, t6, a6
	bne t2, t5, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label909:
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	j label911
.p2align 2
label64:
	lui a6, 4
	bgt t1, a6, label67
	mv t5, zero
	lui t6, 1
	sext.w t5, t6
	bgt t1, t5, label65
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	j label913
.p2align 2
label76:
	addiw t6, t6, 4
	slli a6, t5, 1
	srli a7, a6, 48
	add t5, t5, a7
	sraiw a6, t5, 16
	bgt a1, t6, label452
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli s5, a7, 60
	add a6, a6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label79
	slli t5, t6, 1
	srli a6, t5, 60
	add a7, t6, a6
	andi a6, a7, -16
	subw t5, t6, a6
	bne t2, t5, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label452:
	mv t5, a6
	j label76
.p2align 2
label911:
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	j label907
.p2align 2
label913:
	slli t5, t6, 1
	srli a6, t5, 60
	add a7, t6, a6
	andi a6, a7, -16
	subw t5, t6, a6
	bne t2, t5, label51
.p2align 2
label915:
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	j label911
.p2align 2
label67:
	lui t6, 64
	bgt a0, t6, label425
	mv t5, zero
	lui a6, 16
	sext.w t6, a6
	bgt a0, t6, label436
	lui t6, 4
	sext.w t5, t6
	bgt a0, t5, label72
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label65
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	j label917
.p2align 2
label72:
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label72
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label65
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
.p2align 2
label921:
	slli t5, t6, 1
	srli a6, t5, 60
	add a7, t6, a6
	andi a6, a7, -16
	subw t5, t6, a6
	bne t2, t5, label51
	j label915
.p2align 2
label45:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	sh2add t6, t5, s0
	lw t4, 0(t6)
	bgt a4, zero, label52
	mv t6, t4
	slli t5, t4, 1
	srli a6, t5, 60
	add a7, t4, a6
	andi a6, a7, -16
	subw t5, t4, a6
	bne t2, t5, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label51:
	sh2add t5, t5, s1
	lw t6, 0(t5)
	sh2add a7, t6, s0
	addi t6, t6, 1
	lw a6, 0(a7)
	sw t4, 0(a7)
	mv t4, a6
	sw t6, 0(t5)
	bgt a4, zero, label52
	mv t6, a6
	slli t5, a6, 1
	srli a6, t5, 60
	add a7, t4, a6
	andi a6, a7, -16
	subw t5, t4, a6
	bne t2, t5, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label52:
	li t6, 4
	bgt a4, t6, label53
	mv t5, zero
	mv t6, t4
	li t5, 1
	slli a7, t4, 1
	srli s5, a7, 60
	add a6, t4, s5
	sraiw t6, a6, 4
	bgt a4, t5, label79
	slli t5, t6, 1
	srli a6, t5, 60
	add a7, t6, a6
	andi a6, a7, -16
	subw t5, t6, a6
	bne t2, t5, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label62:
	addiw t6, t6, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	j label911
.p2align 2
label74:
	addiw t6, t5, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label446:
	mv t5, t6
	j label74
.p2align 2
label53:
	li t6, 16
	bgt a1, t6, label54
	mv t5, t4
	mv t6, zero
	li t6, 4
	slli a6, t4, 1
	srli a7, a6, 48
	add t5, t4, a7
	sraiw a6, t5, 16
	bgt a1, t6, label452
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli s5, a7, 60
	add a6, a6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label79
	slli t5, t6, 1
	srli a6, t5, 60
	add a7, t6, a6
	andi a6, a7, -16
	subw t5, t6, a6
	bne t2, t5, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label917:
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	j label920
.p2align 2
label425:
	mv t6, zero
.p2align 2
label68:
	lui a6, 128
	lui a7, 64
	addw t5, t6, a6
	addw t6, t6, a7
	bgt a0, t5, label68
	mv t5, t6
	lui a6, 16
	addw t6, t6, a6
	bgt a0, t6, label436
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label72
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label65
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	j label918
.p2align 2
label920:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli s5, a7, 60
	add a6, a6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label79
	j label921
.p2align 2
label54:
	li t6, 64
	bgt a2, t6, label55
	mv t5, zero
	li t6, 16
	bgt a2, t6, label446
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label55:
	li t5, 256
	bgt a3, t5, label58
	mv t6, zero
	li t6, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label58:
	li a6, 1024
	bgt a5, a6, label61
	mv t5, zero
	li t5, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	j label905
.p2align 2
label918:
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	j label920
.p2align 2
label70:
	lui a6, 16
	addw t6, t5, a6
	bgt a0, t6, label436
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label72
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label65
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	j label920
.p2align 2
label436:
	mv t5, t6
	j label70
.p2align 2
label56:
	addiw t6, t6, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
	sw t3, 144(sp)
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label59:
	addiw t5, t5, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label45
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label41
.p2align 2
label907:
	sw t3, 144(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, t3, a0
	sw a1, 72(sp)
	li a0, 16
	blt zero, a0, label85
	j label2
.p2align 2
label65:
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label65
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label62
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label59
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label56
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label446
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label452
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label79
	mv t5, zero
	bne t2, zero, label51
	j label915
.p2align 2
label20:
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label20
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label22
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
.p2align 2
label30:
	addiw t6, t6, 4
	slli a6, t5, 1
	srli a7, a6, 48
	add t5, t5, a7
	sraiw a6, t5, 16
	bgt a1, t6, label246
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a6, a6, 1
	srli s5, a6, 60
	add a7, t6, s5
	sraiw t6, a7, 4
	bgt a4, t5, label33
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 0(t5)
	bgt t2, t4, label4
	j label38
.p2align 2
label246:
	mv t5, a6
	j label30
.p2align 2
label18:
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label18
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label20
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label22
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
.p2align 2
label895:
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 0(t5)
	bgt t2, t4, label4
	j label38
.p2align 2
label28:
	addiw t6, t5, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
.p2align 2
label240:
	mv t5, t6
	j label28
.p2align 2
label4:
	sh2add t5, t4, s0
	lw t6, 0(t5)
	bgt a4, zero, label6
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 0(t5)
	bgt t2, t4, label4
	j label38
.p2align 2
label22:
	addiw t6, t6, 1024
	bgt t0, t6, label22
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
label13:
	lui t6, 64
	bgt a0, t6, label199
	mv t5, zero
	lui a6, 16
	sext.w t6, a6
	bgt a0, t6, label210
	lui t6, 4
	sext.w t5, t6
	bgt a0, t5, label18
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label20
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label22
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	j label894
.p2align 2
label199:
	mv t6, zero
.p2align 2
label14:
	lui a7, 128
	lui a6, 64
	addw t5, t6, a7
	addw t6, t6, a6
	bgt a0, t5, label14
	mv t5, t6
	lui a6, 16
	addw t6, t6, a6
	bgt a0, t6, label210
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label18
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label20
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label22
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	j label892
.p2align 2
label16:
	lui a6, 16
	addw t6, t5, a6
	bgt a0, t6, label210
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label18
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label20
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label22
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
.p2align 2
label894:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a6, a6, 1
	srli s5, a6, 60
	add a7, t6, s5
	sraiw t6, a7, 4
	bgt a4, t5, label33
	j label895
.p2align 2
label210:
	mv t5, t6
	j label16
.p2align 2
label33:
	addiw t5, t5, 1
	slli a6, t6, 1
	srli s5, a6, 60
	add a7, t6, s5
	sraiw t6, a7, 4
	bgt a4, t5, label33
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 0(t5)
	bgt t2, t4, label4
	j label38
.p2align 2
label8:
	li t6, 64
	bgt a2, t6, label9
	mv t5, zero
	li t6, 16
	bgt a2, t6, label240
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
.p2align 2
label9:
	li t5, 256
	bgt a3, t5, label10
	mv a6, zero
	li a6, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
.p2align 2
label892:
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	j label894
.p2align 2
label10:
	li t6, 1024
	bgt a5, t6, label11
	mv t5, zero
	li t5, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
.p2align 2
label11:
	lui t5, 1
	bgt t0, t5, label12
	mv t6, zero
	j label22
.p2align 2
label26:
	addiw a6, a6, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
label12:
	lui t6, 4
	bgt t1, t6, label13
	mv t5, zero
	j label20
.p2align 2
label24:
	addiw t5, t5, 256
	bgt a5, t5, label24
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label26
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label240
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label246
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label33
	addiw t4, t4, 1
	mv t5, s3
	lw t6, 0(s3)
	addi a6, t6, 1
	sw a6, 0(s3)
	bgt t2, t4, label4
	j label38
.p2align 2
label6:
	li a6, 4
	bgt a4, a6, label7
	mv t5, zero
	li t5, 1
	slli a6, t6, 1
	srli s5, a6, 60
	add a7, t6, s5
	sraiw t6, a7, 4
	bgt a4, t5, label33
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 0(t5)
	bgt t2, t4, label4
	j label38
label2:
	ld ra, 208(sp)
	ld s4, 216(sp)
	ld s1, 224(sp)
	ld s2, 232(sp)
	ld s3, 64(sp)
	ld s5, 240(sp)
	ld s0, 136(sp)
	addi sp, sp, 248
	ret
.p2align 2
label85:
	bgt s5, zero, label87
.p2align 2
label86:
	sh2add a0, s5, s1
	sh2add a1, s5, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	blt s5, a0, label85
	j label2
label87:
	addiw a1, s5, -1
	sh2add a2, a1, s2
	sh2add a1, s5, s1
	lw a0, 0(a2)
	sh2add a2, s5, s3
	sw a0, 0(a1)
	lw a1, 0(a2)
	sh2add a2, s5, s2
	addw a0, a0, a1
	sw a0, 0(a2)
	j label86
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel1035:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel1035)
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
	bgt s0, zero, label963
	mv s0, zero
label961:
	li a0, 102
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
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
label963:
	addiw a2, s0, -4
	li a1, 4
	bgt s0, a1, label981
	mv a0, zero
	mv a3, zero
	j label967
label981:
	mv a1, zero
	mv a0, zero
label964:
	sh2add a4, a1, s1
	addiw a5, a1, 3
	addiw t3, a1, 1
	lw a3, 0(a4)
	lw t0, 4(a4)
	remw t2, t0, a5
	addiw t0, a1, 2
	remw a3, a3, t0
	mulw t1, t2, t3
	lw t2, 8(a4)
	lw a4, 12(a4)
	mulw t3, a1, a3
	addiw a3, a1, 4
	addw t1, t1, t3
	addiw a1, a1, 5
	remw t3, t2, a3
	mulw t2, t0, t3
	addw t0, t1, t2
	remw t1, a4, a1
	mulw a4, a5, t1
	addw a1, t0, a4
	addw a0, a0, a1
	ble a2, a3, label967
	mv a1, a3
	j label964
label967:
	sh2add a2, a3, s1
	addiw a4, a3, 2
	lw a1, 0(a2)
	remw a2, a1, a4
	mulw a1, a3, a2
	addiw a3, a3, 1
	addw a0, a0, a1
	bgt s0, a3, label967
	mv s0, a0
	j label961
