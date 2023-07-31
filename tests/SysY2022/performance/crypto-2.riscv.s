.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buffer:
	.zero	131072
.text
.globl main
main:
.p2align 2
	addi sp, sp, -416
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 96
	sd s5, 16(sp)
	sd s1, 24(sp)
	addi s1, sp, 72
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
pcrel533:
	auipc a1, %pcrel_hi(buffer)
	mv a3, s2
	addi a0, a1, %pcrel_lo(pcrel533)
	sd zero, 72(sp)
	mv a1, s3
	sd zero, 80(sp)
	sw zero, 88(sp)
	ble s3, zero, label39
.p2align 2
label54:
	mv a2, zero
.p2align 2
label5:
	slliw a5, a3, 13
	addw a3, a5, a3
	slli a4, a3, 1
	srli t0, a4, 47
	add t1, a3, t0
	sraiw a5, t1, 17
	addw a4, a3, a5
	li a3, 270369
	mulw a5, a4, a3
	slli t0, a5, 1
	srli t1, t0, 47
	add t2, a5, t1
	sraiw t3, t2, 17
	addw a5, a5, t3
	mulw t0, a5, a3
	slli t1, t0, 1
	srli t3, t1, 47
	add t4, t0, t3
	sraiw t2, t4, 17
	addw t1, t0, t2
	mulw a3, t1, a3
	slli t2, a3, 1
	srli t0, t2, 47
	add t3, a3, t0
	sraiw t2, t3, 17
	addw a3, a3, t2
	slli t3, a3, 5
	addw t0, t3, a3
	slli t4, t0, 1
	mv a3, t0
	srli t3, t4, 56
	add t2, t0, t3
	andi t4, t2, -256
	slli t2, t1, 5
	subw t0, t0, t4
	addw t1, t2, t1
	slli t5, t1, 1
	srli t4, t5, 56
	add t3, t1, t4
	andi t2, t3, -256
	slli t3, a5, 5
	subw t1, t1, t2
	addw a5, t3, a5
	slli t4, a5, 1
	srli t5, t4, 56
	add t2, a5, t5
	andi t3, t2, -256
	slli t2, a4, 5
	subw a5, a5, t3
	addw a4, t2, a4
	slli t3, a4, 1
	srli t2, t3, 56
	add t4, a4, t2
	andi t3, t4, -256
	subw t2, a4, t3
	sh2add a4, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a4)
	sw a5, 4(a4)
	sw t1, 8(a4)
	sw t0, 12(a4)
	li a4, 32000
	blt a2, a4, label5
	li a4, 128000
	li a5, 128
	add a2, a0, a4
	sw a5, 0(a2)
	li a2, 32001
	j label9
.p2align 2
label19:
	addiw t4, t0, 4
	addiw t5, t0, 8
	addiw t6, t0, 12
	mv a6, zero
	mv a7, zero
.p2align 2
label20:
	addw s4, t0, a6
	sh2add s2, s4, a0
	lw s3, 0(s2)
	slli s6, s3, 24
	lw s5, 4(s2)
	lw s7, 8(s2)
	slli s4, s5, 16
	slli s5, s7, 8
	addw s3, s4, s6
	lw s6, 12(s2)
	addw s4, s3, s5
	sh2add s2, a7, s0
	addw s5, t4, a6
	addw s3, s4, s6
	addiw a7, a7, 4
	sw s3, 0(s2)
	sh2add s3, s5, a0
	lw s4, 0(s3)
	slli s6, s4, 24
	lw s7, 4(s3)
	slli s5, s7, 16
	addw s4, s5, s6
	lw s5, 8(s3)
	slli s6, s5, 8
	lw s5, 12(s3)
	addw s4, s4, s6
	addw s3, s4, s5
	addw s5, t5, a6
	sw s3, 4(s2)
	sh2add s3, s5, a0
	lw s4, 0(s3)
	slli s6, s4, 24
	lw s7, 4(s3)
	slli s5, s7, 16
	lw s7, 8(s3)
	addw s4, s5, s6
	lw s6, 12(s3)
	slli s5, s7, 8
	addw s4, s4, s5
	addw s5, t6, a6
	addw s3, s4, s6
	addiw a6, a6, 16
	sw s3, 8(s2)
	sh2add s3, s5, a0
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	lw s6, 8(s3)
	addw s4, s5, s7
	slli s5, s6, 8
	lw s6, 12(s3)
	addw s4, s4, s5
	addw s3, s4, s6
	sw s3, 12(s2)
	li s2, 16
	blt a7, s2, label20
	li t5, 16
.p2align 2
label23:
	sh2add t4, t5, s0
	addiw t5, t5, 4
	lw t6, -12(t4)
	lw a7, -32(t4)
	addw a6, t6, a7
	lw t6, -56(t4)
	lw a7, -64(t4)
	addw s2, a6, a7
	subw a6, t6, s2
	srliw a7, a6, 31
	add s2, a6, a7
	andi a7, s2, -2
	subw s3, a6, a7
	sh1add a6, a6, s3
	sw a6, 0(t4)
	lw s2, -8(t4)
	lw s3, -28(t4)
	addw s2, s2, s3
	lw a7, -52(t4)
	lw s3, -60(t4)
	addw a6, a6, a7
	addw s4, s2, s3
	subw a7, a7, s4
	srliw s2, a7, 31
	add s4, a7, s2
	andi s3, s4, -2
	subw s2, a7, s3
	sh1add a7, a7, s2
	sw a7, 4(t4)
	lw a7, -4(t4)
	lw s3, -24(t4)
	addw t6, t6, a7
	lw s2, -48(t4)
	addw a7, t6, s3
	subw t6, s2, a7
	srliw s3, t6, 31
	add a7, t6, s3
	andi s2, a7, -2
	subw a7, t6, s2
	sh1add t6, t6, a7
	sw t6, 8(t4)
	lw t6, -20(t4)
	lw a7, -44(t4)
	addw a6, a6, t6
	subw t6, a7, a6
	srliw a7, t6, 31
	add a6, t6, a7
	andi a7, a6, -2
	subw a6, t6, a7
	sh1add t6, t6, a6
	sw t6, 12(t4)
	li t4, 80
	blt t5, t4, label23
	mv s2, a4
	mv a6, a5
	mv t4, t1
	mv a7, t2
	mv t5, t3
	mv t6, zero
	li s3, 80
	bge zero, s3, label32
.p2align 2
label33:
	li s3, 20
	bge t6, s3, label333
	li s4, 1518500249
	mv s3, zero
.p2align 2
label35:
	slliw s6, t5, 5
	addw s5, s2, s6
	addw s4, s4, s5
	addw s2, s3, s4
	slli s3, t5, 1
	srli s5, s3, 59
	add s4, t5, s5
	andi s3, s4, -32
	sh2add s4, t6, s0
	subw s5, t5, s3
	addiw t6, t6, 1
	addw s2, s2, s5
	lw s5, 0(s4)
	addw s3, s2, s5
	slli s5, a7, 1
	slliw s2, a7, 30
	srli s4, s5, 34
	add s6, a7, s4
	sraiw s5, s6, 30
	slli s7, s5, 30
	subw a7, a7, s7
	addw s4, s2, a7
	mv a7, t5
	mv s2, a6
	mv t5, s3
	mv a6, t4
	mv t4, s4
	li s3, 80
	blt t6, s3, label33
	addw t3, t3, t5
	addw t2, t2, a7
	addw t1, t1, s4
	addw a5, a5, a6
	addw a4, a4, s2
	addiw t0, t0, 64
	bgt a2, t0, label19
.p2align 2
label38:
	lw a2, 72(sp)
	addiw a1, a1, -1
	addw t3, t3, a2
	subw t0, zero, t3
	sw t0, 72(sp)
	lw t3, 76(sp)
	addw t0, t2, t3
	subw a2, zero, t0
	sw a2, 76(sp)
	lw t2, 80(sp)
	addw t0, t1, t2
	subw a2, zero, t0
	sw a2, 80(sp)
	lw t0, 84(sp)
	addw a2, a5, t0
	subw a5, zero, a2
	sw a5, 84(sp)
	lw a2, 88(sp)
	addw a4, a4, a2
	subw a5, zero, a4
	sw a5, 88(sp)
	bgt a1, zero, label54
label39:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s1
	li a0, 5
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 416
	ret
.p2align 2
label333:
	addw s5, t4, a7
	slti s4, t6, 60
	mv s6, zero
	subw s3, s5, a6
	bne s4, zero, label503
	j label520
.p2align 2
label526:
	mv s4, s6
	j label35
.p2align 2
label503:
	slti s5, t6, 40
	bne s5, zero, label505
	mv s3, s6
.p2align 2
label505:
	li s6, -1894007588
	bne s4, zero, label507
	li s6, -899497722
.p2align 2
label507:
	li s4, 1859775361
	bne s5, zero, label35
	j label526
.p2align 2
label520:
	mv s6, s3
	slti s5, t6, 40
	bne s5, zero, label505
	li s6, -1894007588
	bne s4, zero, label507
	li s6, -899497722
	li s4, 1859775361
	j label526
.p2align 2
label9:
	sh2add a5, a2, a0
	addiw a4, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a4, 63
	beq a5, t0, label11
	mv a2, a4
	j label9
.p2align 2
label11:
	sh2add a4, a4, a0
	li a5, 125
	addiw a2, a2, 5
	li t1, -1732584194
	mv t0, zero
	xori t3, t1, -1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw a5, 8(a4)
	li a5, 271733878
	sw zero, 12(a4)
	xori t2, a5, -1
	li a4, -1009589776
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	sd zero, 256(sp)
	sd zero, 264(sp)
	sd zero, 272(sp)
	sd zero, 280(sp)
	sd zero, 288(sp)
	sd zero, 296(sp)
	sd zero, 304(sp)
	sd zero, 312(sp)
	sd zero, 320(sp)
	sd zero, 328(sp)
	sd zero, 336(sp)
	sd zero, 344(sp)
	sd zero, 352(sp)
	sd zero, 360(sp)
	sd zero, 368(sp)
	sd zero, 376(sp)
	sd zero, 384(sp)
	sd zero, 392(sp)
	sd zero, 400(sp)
	sd zero, 408(sp)
	bgt a2, zero, label19
	j label38
.p2align 2
label32:
	addw t3, t3, t5
	addw t2, t2, a7
	addw t1, t1, t4
	addw a5, a5, a6
	addw a4, a4, s2
	addiw t0, t0, 64
	bgt a2, t0, label19
	j label38
