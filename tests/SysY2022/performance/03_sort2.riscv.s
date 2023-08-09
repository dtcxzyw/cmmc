.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
.p2align 2
radixSort:
	addi sp, sp, -256
	mv a4, a0
	mv t1, a2
	mv a5, a3
	sd ra, 0(sp)
	xori t2, a0, -1
	addiw a0, a2, 1
	sltiu t0, t2, 1
	sd s0, 8(sp)
	slt a3, a0, a3
	mv s0, a1
	xori a2, a3, 1
	sd s5, 16(sp)
	addi a1, sp, 64
	or a0, a2, t0
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
	bge t1, a5, label4
	sh2add t0, t1, s0
	mv t2, t1
	lw t3, 0(t0)
	bgt a4, zero, label35
.p2align 2
label36:
	andi t5, t3, 15
	addiw t2, t2, 1
	sh2add t3, t5, s2
	lw t4, 0(t3)
	addi t6, t4, 1
	sw t6, 0(t3)
	ble a5, t2, label4
	addi t0, t0, 4
	lw t3, 0(t0)
	ble a4, zero, label36
.p2align 2
label35:
	slli t4, t3, 1
	subw t5, a2, a0
	srl t6, t4, t5
	add a6, t3, t6
	sraw a7, a6, a0
	mv t3, a7
	bne a3, zero, label36
	mv t3, zero
	j label36
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
label4:
	sw t1, 64(sp)
	lw t0, 192(sp)
	addw a5, t1, t0
	sw a5, 128(sp)
	sw a5, 68(sp)
	lw t2, 196(sp)
	addw t0, a5, t2
	sw t0, 132(sp)
	sw t0, 72(sp)
	lw t2, 200(sp)
	addw a5, t0, t2
	sw a5, 136(sp)
	sw a5, 76(sp)
	lw t2, 204(sp)
	addw t0, a5, t2
	sw t0, 140(sp)
	sw t0, 80(sp)
	lw t2, 208(sp)
	addw a5, t0, t2
	sw a5, 144(sp)
	sw a5, 84(sp)
	lw t2, 212(sp)
	addw t0, a5, t2
	sw t0, 148(sp)
	sw t0, 88(sp)
	lw a5, 216(sp)
	addw t2, t0, a5
	sw t2, 152(sp)
	sw t2, 92(sp)
	lw t0, 220(sp)
	addw a5, t2, t0
	sw a5, 156(sp)
	sw a5, 96(sp)
	lw t2, 224(sp)
	addw t0, a5, t2
	sw t0, 160(sp)
	sw t0, 100(sp)
	lw a5, 228(sp)
	addw t2, t0, a5
	sw t2, 164(sp)
	sw t2, 104(sp)
	lw t0, 232(sp)
	addw a5, t2, t0
	sw a5, 168(sp)
	sw a5, 108(sp)
	lw t2, 236(sp)
	addw t0, a5, t2
	sw t0, 172(sp)
	sw t0, 112(sp)
	lw a5, 240(sp)
	addw t2, t0, a5
	sw t2, 176(sp)
	sw t2, 116(sp)
	lw t0, 244(sp)
	addw a5, t2, t0
	sw a5, 180(sp)
	sw a5, 120(sp)
	lw t2, 248(sp)
	addw t0, a5, t2
	mv t2, s1
	sw t0, 184(sp)
	sw t0, 124(sp)
	lw t3, 252(sp)
	addw a5, t0, t3
	mv t0, a1
	sw a5, 188(sp)
	mv a5, zero
	blt zero, s4, label19
	j label9
.p2align 2
label366:
	mv t4, t3
	slli t5, t3, 1
	srli a6, t5, 60
	add t6, t3, a6
	andi a7, t6, -16
	subw t5, t3, a7
	bne a5, t5, label28
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label22
.p2align 2
label365:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	bge a5, s4, label9
.p2align 2
label19:
	lw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label22
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label19
	j label9
.p2align 2
label27:
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	bge t3, t4, label365
.p2align 2
label22:
	sh2add t4, t3, s0
	lw t3, 0(t4)
	bgt a4, zero, label29
	mv t4, t3
.p2align 2
label25:
	slli t5, t4, 1
	srli a6, t5, 60
	add t6, t4, a6
	andi a7, t6, -16
	subw t5, t4, a7
	beq a5, t5, label27
.p2align 2
label28:
	sh2add t4, t5, a1
	lw t5, 0(t4)
	addi a7, t5, 1
	sh2add a6, t5, s0
	lw t6, 0(a6)
	sw t3, 0(a6)
	mv t3, t6
	sw a7, 0(t4)
	ble a4, zero, label366
.p2align 2
label29:
	slli t4, t3, 1
	subw a7, a2, a0
	srl t5, t4, a7
	add a6, t3, t5
	sraw t6, a6, a0
	mv t4, t6
	bne a3, zero, label25
	mv t4, zero
	mv a6, zero
	mv t6, zero
	mv a7, zero
	mv t5, zero
	bne a5, zero, label28
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label22
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label19
label9:
	sw t1, 64(sp)
	mv s5, a1
	mv s6, zero
	lw a0, 192(sp)
	addw a2, t1, a0
	sw a2, 128(sp)
	j label13
label14:
	sh2add a0, s6, s1
	sh2add a4, s6, s2
	lw a2, -4(a0)
	sw a2, 0(s5)
	lw a1, 0(a4)
	addw a3, a2, a1
	sw a3, 0(a0)
.p2align 2
label15:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label2
	addi s5, s5, 4
	bgt s6, zero, label14
label13:
	lw a2, 0(s5)
	sh2add a0, s6, s1
	lw a3, 0(a0)
	j label15
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel462:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel462)
	sd s1, 16(sp)
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s0
	li a0, 8
	mv a3, s1
	jal radixSort
	li a0, 4
	addiw a1, s1, -4
	ble s1, a0, label405
	mv a0, s0
	mv a3, zero
	mv a2, zero
.p2align 2
label387:
	lw a4, 0(a0)
	addiw a5, a3, 3
	addiw t3, a3, 1
	lw t0, 4(a0)
	remw t2, t0, a5
	addiw t0, a3, 2
	remw t4, a4, t0
	addiw a4, a3, 4
	mulw t1, t2, t3
	lw t3, 8(a0)
	mulw t5, a3, t4
	remw t4, t3, a4
	addw t2, t1, t5
	lw t3, 12(a0)
	mulw t5, t0, t4
	addiw t0, a3, 5
	addw t1, t2, t5
	remw t4, t3, t0
	mulw t2, a5, t4
	addw a3, t1, t2
	addw a2, a2, a3
	ble a1, a4, label391
	addi a0, a0, 16
	mv a3, a4
	j label387
label391:
	sh2add s0, a4, s0
.p2align 2
label393:
	lw a0, 0(s0)
	addiw a5, a4, 2
	remw a1, a0, a5
	mulw a3, a4, a1
	addiw a4, a4, 1
	addw a2, a2, a3
	ble s1, a4, label398
	addi s0, s0, 4
	j label393
label398:
	subw a1, zero, a2
	li a0, 102
	max s0, a1, a2
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label405:
	mv a2, zero
	mv a4, zero
	j label393
