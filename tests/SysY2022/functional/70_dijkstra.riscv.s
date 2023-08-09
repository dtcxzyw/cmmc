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
pcrel322:
	auipc a2, %pcrel_hi(e)
	mv s6, a0
	addi s5, a2, %pcrel_lo(pcrel322)
	li a0, 1
	lui a2, 16
	addi a1, s5, 64
	mv s4, a0
	addiw s2, a2, -1
	bge s0, a0, label5
	j label11
.p2align 2
label9:
	addiw a0, a0, 1
	addi a1, a1, 64
	blt s0, a0, label11
.p2align 2
label5:
	addi a2, a1, 4
	mv a3, s4
	mv a4, zero
	beq a0, s4, label270
	lui a5, 16
	addiw a4, a5, -1
.p2align 2
label270:
	sw a4, 0(a2)
	addiw a3, a3, 1
	blt s0, a3, label9
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
label12:
	addi a1, s5, 64
	addiw a0, s0, -1
	ble s0, zero, label114
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
label19:
	bge a0, a1, label28
label21:
	ble s0, zero, label27
.p2align 2
label22:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bge s0, s4, label22
label27:
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
label297:
	addiw a1, a1, 1
	blt a0, a1, label21
.p2align 2
label28:
	ble s0, zero, label145
	addi a2, s1, 4
	mv a3, s4
	mv a5, zero
	mv a4, s2
	lw t0, 0(a2)
	bgt s2, t0, label50
	addiw a3, s4, 1
	bge s0, a3, label49
	mv a2, zero
	mv a4, s3
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label31
	j label152
.p2align 2
label272:
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
	blt s0, a3, label295
.p2align 2
label49:
	addi a2, a2, 4
	lw t0, 0(a2)
	ble a4, t0, label294
.p2align 2
label50:
	sh2add t4, a3, s3
	mv t1, t0
	lw t3, 0(t4)
	sltiu t2, t3, 1
	bne t2, zero, label273
	j label272
.p2align 2
label295:
	mv a2, a5
	sh2add a4, a5, s3
	slli a5, a5, 6
	sw s4, 0(a4)
	add a3, s5, a5
	ble s0, zero, label152
.p2align 2
label31:
	addi a3, a3, 4
	mv a4, s4
	lw a5, 0(a3)
	blt a5, s2, label37
	addiw a4, s4, 1
	bge s0, a4, label36
	addiw a1, a1, 1
	bge a0, a1, label28
	j label21
.p2align 2
label289:
	addiw a4, a4, 1
	blt s0, a4, label297
.p2align 2
label36:
	addi a3, a3, 4
	lw a5, 0(a3)
	bge a5, s2, label289
.p2align 2
label37:
	sh2add t1, a4, s1
	sh2add t3, a2, s1
	lw t0, 0(t1)
	lw t2, 0(t3)
	addw t1, a5, t2
	ble t0, t1, label175
	sh2add a5, a4, s1
	addiw a4, a4, 1
	sw t1, 0(a5)
	bge s0, a4, label36
	addiw a1, a1, 1
	bge a0, a1, label28
	j label21
.p2align 2
label294:
	addiw a3, a3, 1
	bge s0, a3, label49
	mv a2, a5
	sh2add a4, a5, s3
	slli a5, a5, 6
	sw s4, 0(a4)
	add a3, s5, a5
	bgt s0, zero, label31
	j label152
.p2align 2
label175:
	addiw a4, a4, 1
	bge s0, a4, label36
	addiw a1, a1, 1
	bge a0, a1, label28
	j label21
label145:
	mv a2, zero
	mv a4, s3
	mv a5, zero
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label31
label152:
	addiw a1, a1, 1
	j label19
