.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
e:
	.zero	1024
.text
.p2align 2
.globl main
main:
	addi sp, sp, -216
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 152
	sd s6, 16(sp)
	sd s3, 24(sp)
	addi s3, sp, 88
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
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
	jal getint
	mv s0, a0
	jal getint
pcrel319:
	auipc a2, %pcrel_hi(e)
	mv s6, a0
	addi s5, a2, %pcrel_lo(pcrel319)
	li a0, 1
	lui a2, 16
	addi a1, s5, 64
	mv s4, a0
	addiw s2, a2, -1
	blt s0, a0, label11
.p2align 2
label5:
	addi a2, a1, 4
	mv a3, s4
	mv a4, zero
	bne a0, s4, label269
.p2align 2
label270:
	sw a4, 0(a2)
	addiw a3, a3, 1
	bge s0, a3, label10
	addiw a0, a0, 1
	addi a1, a1, 64
	bge s0, a0, label5
	j label11
.p2align 2
label10:
	addi a2, a2, 4
	mv a4, zero
	beq a0, a3, label270
	lui a5, 16
	addiw a3, a3, 1
	addiw a4, a5, -1
	sw a4, 0(a2)
	bge s0, a3, label10
	addiw a0, a0, 1
	addi a1, a1, 64
	bge s0, a0, label5
label11:
	ble s6, zero, label12
	mv s7, s4
	j label51
label12:
	addi a1, s5, 64
	addiw a0, s0, -1
	bgt s0, zero, label13
	j label114
.p2align 2
label51:
	jal getint
	slli a1, a0, 6
	add s8, s5, a1
	jal getint
	sh2add s9, a0, s8
	jal getint
	addiw s7, s7, 1
	sw a0, 0(s9)
	bge s6, s7, label51
	j label12
label13:
	addi a1, a1, 4
	mv a2, s4
.p2align 2
label14:
	lw a3, 0(a1)
	sh2add a5, a2, s1
	sh2add a4, a2, s3
	addiw a2, a2, 1
	sw a3, 0(a5)
	sw zero, 0(a4)
	blt s0, a2, label114
	addi a1, a1, 4
	j label14
label114:
	sw s4, 92(sp)
	mv a1, s4
	blt a0, s4, label44
.p2align 2
label21:
	ble s0, zero, label134
	addi a2, s1, 4
	mv a3, s4
	mv a5, zero
	mv a4, s2
	lw t0, 0(a2)
	bgt s2, t0, label28
	addiw a3, s4, 1
	bge s0, a3, label32
	j label289
.p2align 2
label40:
	sh2add t1, a4, s1
	sh2add t3, a2, s1
	lw t0, 0(t1)
	lw t2, 0(t3)
	addw t1, a5, t2
	ble t0, t1, label177
	sh2add a5, a4, s1
	sw t1, 0(a5)
	addiw a4, a4, 1
	blt s0, a4, label184
.p2align 2
label43:
	addi a3, a3, 4
	lw a5, 0(a3)
	blt a5, s2, label40
	addiw a4, a4, 1
	bge s0, a4, label43
	addiw a1, a1, 1
	bge a0, a1, label21
label44:
	ble s0, zero, label50
.p2align 2
label45:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bge s0, s4, label45
label50:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 216
	ret
.p2align 2
label28:
	sh2add t3, a3, s3
	mv t1, t0
	lw t4, 0(t3)
	sltiu t2, t4, 1
	bne t2, zero, label273
	mv t1, a4
.p2align 2
label273:
	mv t0, a3
	bne t2, zero, label275
	mv t0, a5
.p2align 2
label275:
	mv a4, t1
	mv a5, t0
	addiw a3, a3, 1
	blt s0, a3, label151
.p2align 2
label32:
	addi a2, a2, 4
	lw t0, 0(a2)
	bgt a4, t0, label28
	addiw a3, a3, 1
	bge s0, a3, label32
	mv a2, a5
	slli a4, a5, 6
	sh2add a5, a5, s3
	add a3, s5, a4
	sw s4, 0(a5)
	bgt s0, zero, label36
	j label35
.p2align 2
label151:
	mv a2, a5
	slli a4, a5, 6
	sh2add a5, a5, s3
	add a3, s5, a4
	sw s4, 0(a5)
	ble s0, zero, label35
.p2align 2
label36:
	addi a3, a3, 4
	mv a4, s4
	lw a5, 0(a3)
	blt a5, s2, label40
	addiw a4, s4, 1
	bge s0, a4, label43
	addiw a1, a1, 1
	bge a0, a1, label21
	j label44
.p2align 2
label177:
	addiw a4, a4, 1
	bge s0, a4, label43
	addiw a1, a1, 1
	bge a0, a1, label21
	j label44
label134:
	mv a2, zero
	mv a5, s3
	mv a4, zero
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label36
label35:
	addiw a1, a1, 1
	bge a0, a1, label21
	j label44
.p2align 2
label184:
	addiw a1, a1, 1
	bge a0, a1, label21
	j label44
label289:
	mv a2, a5
	slli a4, a5, 6
	sh2add a5, a5, s3
	add a3, s5, a4
	sw s4, 0(a5)
	bgt s0, zero, label36
	j label35
.p2align 2
label269:
	lui a5, 16
	addiw a4, a5, -1
	j label270
