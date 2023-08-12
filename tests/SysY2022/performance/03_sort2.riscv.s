.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
.p2align 2
radixSort:
	# stack usage: CalleeArg[0] Local[192] RegSpill[0] CalleeSaved[64]
	addi sp, sp, -256
	mv a4, a0
	mv t1, a2
	mv a5, a3
	sd ra, 0(sp)
	xori t0, a0, -1
	addiw a3, a2, 1
	sd s0, 8(sp)
	slt a0, a3, a5
	mv s0, a1
	sltiu a3, t0, 1
	xori a2, a0, 1
	addi a1, sp, 64
	sd s5, 16(sp)
	or a0, a2, a3
	sd s2, 24(sp)
	li a2, 64
	addi s2, sp, 192
	sd s1, 32(sp)
	addi s1, sp, 128
	sd s6, 40(sp)
	sd s4, 48(sp)
	li s4, 16
	sd s3, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
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
	bne a0, zero, label2
	slliw a0, a4, 2
	addiw s3, a4, -1
	slti a3, a4, 8
	bge t1, a5, label114
	sh2add t0, t1, s0
	mv t2, t1
	lw t3, 0(t0)
	bgt a4, zero, label8
	j label9
.p2align 2
label337:
	mv t3, zero
.p2align 2
label9:
	andi t4, t3, 15
	addiw t2, t2, 1
	sh2add t3, t4, s2
	lw t5, 0(t3)
	addi t6, t5, 1
	sw t6, 0(t3)
	ble a5, t2, label114
	addi t0, t0, 4
	lw t3, 0(t0)
	ble a4, zero, label9
.p2align 2
label8:
	slli t4, t3, 1
	subw a7, a2, a0
	srl t6, t4, a7
	add a6, t3, t6
	sraw t5, a6, a0
	mv t3, t5
	bne a3, zero, label9
	j label337
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 256
	ret
label114:
	sw t1, 64(sp)
	addi a5, s2, 4
	lw t2, 192(sp)
	addw t0, t1, t2
	sw t0, 128(sp)
	li t0, 1
	j label13
label43:
	addi a5, a5, 16
label13:
	sh2add t2, t0, s1
	sh2add t3, t0, a1
	lw t4, -4(t2)
	addiw t0, t0, 4
	sw t4, 0(t3)
	lw t6, 0(a5)
	addw t5, t4, t6
	sw t5, 0(t2)
	sw t5, 4(t3)
	lw t6, 4(a5)
	addw t4, t5, t6
	sw t4, 4(t2)
	sw t4, 8(t3)
	lw t6, 8(a5)
	addw t5, t4, t6
	sw t5, 8(t2)
	sw t5, 12(t3)
	lw t6, 12(a5)
	addw t4, t5, t6
	li t5, 13
	sw t4, 12(t2)
	blt t0, t5, label43
	sw t4, 16(t3)
	lw t5, 16(a5)
	addw t0, t4, t5
	sw t0, 16(t2)
	sw t0, 20(t3)
	lw t5, 20(a5)
	addw t4, t0, t5
	sw t4, 20(t2)
	sw t4, 24(t3)
	lw t0, 24(a5)
	mv a5, zero
	addw t5, t4, t0
	mv t0, a1
	sw t5, 24(t2)
	mv t2, s1
	blt zero, s4, label31
	j label21
.p2align 2
label352:
	mv t4, t3
	slli t5, t3, 1
	srli a7, t5, 60
	add a6, t3, a7
	andi t6, a6, -16
	subw t5, t3, t6
	bne a5, t5, label40
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label34
.p2align 2
label351:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	bge a5, s4, label21
.p2align 2
label31:
	lw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label34
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label31
	j label21
.p2align 2
label39:
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	bge t3, t4, label351
.p2align 2
label34:
	sh2add t4, t3, s0
	lw t3, 0(t4)
	bgt a4, zero, label41
	mv t4, t3
.p2align 2
label37:
	slli t5, t4, 1
	srli a7, t5, 60
	add a6, t4, a7
	andi t6, a6, -16
	subw t5, t4, t6
	beq a5, t5, label39
.p2align 2
label40:
	sh2add t4, t5, a1
	lw t5, 0(t4)
	addi a7, t5, 1
	sh2add a6, t5, s0
	lw t6, 0(a6)
	sw t3, 0(a6)
	mv t3, t6
	sw a7, 0(t4)
	ble a4, zero, label352
.p2align 2
label41:
	slli t4, t3, 1
	subw a7, a2, a0
	srl t6, t4, a7
	add t5, t3, t6
	sraw a6, t5, a0
	mv t4, a6
	bne a3, zero, label37
	mv t4, zero
	mv a7, zero
	mv a6, zero
	mv t6, zero
	mv t5, zero
	bne a5, zero, label40
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label34
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label31
label21:
	sw t1, 64(sp)
	mv s5, a1
	mv s6, zero
	lw a0, 192(sp)
	addw a2, t1, a0
	sw a2, 128(sp)
label196:
	sh2add a0, s6, s1
	lw a2, 0(s5)
	lw a3, 0(a0)
.p2align 2
label27:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label2
	addi s5, s5, 4
	ble s6, zero, label196
	sh2add a0, s6, s1
	sh2add a4, s6, s2
	lw a2, -4(a0)
	sw a2, 0(s5)
	lw a1, 0(a4)
	addw a3, a2, a1
	sw a3, 0(a0)
	j label27
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel400:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel400)
	sd s0, 16(sp)
	mv a0, s1
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s1
	li a0, 8
	mv a3, s0
	jal radixSort
	mv a1, zero
	mv a2, zero
	mv a0, s1
.p2align 2
label373:
	lw a3, 0(a0)
	addiw a5, a1, 2
	remw a4, a3, a5
	mulw t0, a1, a4
	addiw a1, a1, 1
	addw a2, a2, t0
	ble s0, a1, label378
	addi a0, a0, 4
	j label373
label378:
	subw a3, zero, a2
	li a0, 102
	max s0, a3, a2
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
