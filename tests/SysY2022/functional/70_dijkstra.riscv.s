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
	addi sp, sp, -208
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 144
	sd s6, 16(sp)
	sd s4, 24(sp)
	addi s4, sp, 80
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
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
	jal getint
	mv s0, a0
	jal getint
	li s2, 65535
pcrel259:
	auipc a1, %pcrel_hi(e)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel259)
	li a0, 1
	mv s5, a0
	bge s0, a0, label34
label4:
	bgt s6, zero, label82
	j label5
.p2align 2
label34:
	slli a3, a0, 6
	mv a2, s5
	add a1, s3, a3
.p2align 2
label35:
	mv a3, zero
	beq a0, a2, label225
	li a3, 65535
.p2align 2
label225:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	bge s0, a2, label35
	addiw a0, a0, 1
	bge s0, a0, label34
	j label4
label82:
	mv s7, s5
	j label32
label5:
	addi a2, s3, 64
	addiw a0, s0, -1
	bgt s0, zero, label88
	j label87
.p2align 2
label32:
	jal getint
	slli a1, a0, 6
	add s8, s3, a1
	jal getint
	sh2add s8, a0, s8
	jal getint
	addiw s7, s7, 1
	sw a0, 0(s8)
	bge s6, s7, label32
	j label5
label87:
	sw s5, 84(sp)
	mv a1, s5
	j label7
label88:
	mv a1, s5
	j label30
label7:
	bge a0, a1, label93
	j label9
.p2align 2
label30:
	sh2add a4, a1, a2
	sh2add a5, a1, s1
	lw a3, 0(a4)
	sw a3, 0(a5)
	sh2add a3, a1, s4
	addiw a1, a1, 1
	sw zero, 0(a3)
	bge s0, a1, label30
	j label87
.p2align 2
label93:
	mv a4, s2
	mv a2, zero
	mv a3, s5
	bge s0, s5, label25
	j label236
label9:
	bgt s0, zero, label11
label10:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s4, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 208
	ret
.p2align 2
label11:
	sh2add a1, s5, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bge s0, s5, label11
	j label10
.p2align 2
label242:
	addiw a1, a1, 1
	bge a0, a1, label93
	j label9
label20:
	addiw a1, a1, 1
	bge a0, a1, label93
	j label9
.p2align 2
label25:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	bgt a4, a5, label29
	addiw a3, a3, 1
	bge s0, a3, label25
	j label239
.p2align 2
label29:
	sh2add t2, a3, s4
	lw t1, 0(t2)
	sltiu t0, t1, 1
	bne t0, zero, label221
	mv a5, a4
.p2align 2
label221:
	mv t1, a3
	bne t0, zero, label223
	mv t1, a2
.p2align 2
label223:
	mv a4, a5
	mv a2, t1
	addiw a3, a3, 1
	bge s0, a3, label25
	sh2add a4, t1, s4
	mv a3, s5
	sw s5, 0(a4)
	blt s0, s5, label20
.p2align 2
label21:
	slli a4, a2, 6
	add t0, s3, a4
	sh2add a5, a3, t0
	lw a4, 0(a5)
	blt a4, s2, label22
	addiw a3, a3, 1
	bge s0, a3, label21
	j label242
.p2align 2
label22:
	sh2add t0, a3, s1
	sh2add t1, a2, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label134
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label93
	j label9
.p2align 2
label134:
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label93
	j label9
label236:
	sh2add a4, a2, s4
	mv a3, s5
	sw s5, 0(a4)
	bge s0, s5, label21
	j label20
.p2align 2
label239:
	sh2add a4, a2, s4
	mv a3, s5
	sw s5, 0(a4)
	bge s0, s5, label21
	j label20
