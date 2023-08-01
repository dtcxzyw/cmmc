.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
e:
	.zero	1024
.text
.globl main
main:
.p2align 2
	addi sp, sp, -192
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 128
	sd s6, 16(sp)
	sd s3, 24(sp)
	addi s3, sp, 64
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s4, 48(sp)
	sd s2, 56(sp)
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
	jal getint
	mv s0, a0
	jal getint
	mv s4, a0
pcrel254:
	auipc a0, %pcrel_hi(e)
	addi s2, a0, %pcrel_lo(pcrel254)
	li a0, 1
	bge s0, a0, label33
label4:
	bgt s4, zero, label81
	j label7
.p2align 2
label33:
	slli a3, a0, 6
	li a2, 1
	add a1, s2, a3
.p2align 2
label34:
	mv a3, zero
	beq a0, a2, label222
	li a3, 65535
.p2align 2
label222:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	bge s0, a2, label34
	addiw a0, a0, 1
	bge s0, a0, label33
	j label4
label81:
	li s5, 1
.p2align 2
label5:
	jal getint
	slli a1, a0, 6
	add s6, s2, a1
	jal getint
	sh2add s6, a0, s6
	jal getint
	addiw s5, s5, 1
	sw a0, 0(s6)
	bge s4, s5, label5
label7:
	addi a1, s2, 64
	addiw a0, s0, -1
	bgt s0, zero, label99
label98:
	li a1, 1
	sw a1, 68(sp)
	j label11
label99:
	li a2, 1
.p2align 2
label8:
	sh2add a4, a2, a1
	sh2add a5, a2, s1
	lw a3, 0(a4)
	sw a3, 0(a5)
	sh2add a3, a2, s3
	addiw a2, a2, 1
	sw zero, 0(a3)
	bge s0, a2, label8
	j label98
label11:
	blt a0, a1, label29
.p2align 2
label116:
	li a4, 65535
	mv a2, zero
	li a3, 1
	bge s0, a3, label25
	j label17
.p2align 2
label232:
	addiw a1, a1, 1
	bge a0, a1, label116
label29:
	ble s0, zero, label30
	li s2, 1
	j label31
label30:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 192
	ret
.p2align 2
label31:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	bge s0, s2, label31
	j label30
.p2align 2
label25:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	bgt a4, a5, label28
	j label156
.p2align 2
label218:
	mv t1, a3
	bne t0, zero, label220
	mv t1, a2
.p2align 2
label220:
	addiw a3, a3, 1
	mv a4, a5
	mv a2, t1
	bge s0, a3, label25
	j label235
.p2align 2
label28:
	sh2add t1, a3, s3
	lw t2, 0(t1)
	sltiu t0, t2, 1
	bne t0, zero, label218
	mv a5, a4
	mv t1, a3
	mv t1, a2
	addiw a3, a3, 1
	bge s0, a3, label25
	sh2add a4, a2, s3
	li a3, 1
	sw a3, 0(a4)
	bge s0, a3, label21
	j label20
.p2align 2
label156:
	mv t0, zero
	mv a5, a4
	j label218
.p2align 2
label21:
	slli a4, a2, 6
	add a5, s2, a4
	sh2add t0, a3, a5
	li a5, 65535
	lw a4, 0(t0)
	blt a4, a5, label23
	addiw a3, a3, 1
	bge s0, a3, label21
	j label232
.p2align 2
label147:
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	j label29
.p2align 2
label23:
	sh2add t0, a3, s1
	sh2add t1, a2, s1
	lw a5, 0(t0)
	lw t0, 0(t1)
	addw a4, a4, t0
	ble a5, a4, label147
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	j label29
label17:
	sh2add a4, a2, s3
	li a3, 1
	sw a3, 0(a4)
	bge s0, a3, label21
label20:
	addiw a1, a1, 1
	bge a0, a1, label116
	j label29
.p2align 2
label235:
	sh2add a4, a2, s3
	li a3, 1
	sw a3, 0(a4)
	bge s0, a3, label21
	j label20
