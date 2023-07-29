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
	sd s1, 184(sp)
	addi s1, sp, 0
	sd s6, 176(sp)
	sd s3, 168(sp)
	addi s3, sp, 64
	sd s0, 160(sp)
	sd s5, 152(sp)
	sd s4, 144(sp)
	sd s2, 136(sp)
	sd ra, 128(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s4, a0
pcrel318:
	auipc a0, %pcrel_hi(e)
	addi s2, a0, %pcrel_lo(pcrel318)
	li a0, 1
	bge s0, a0, label77
	bgt s4, zero, label81
	addi a2, s2, 64
	addiw a0, s0, -1
	bgt s0, zero, label99
	li a1, 1
	sw a1, 68(sp)
	bge a0, a1, label116
	j label32
label81:
	li s5, 1
	j label5
label99:
	li a1, 1
	j label8
label116:
	li a4, 65535
	mv a2, zero
	li a3, 1
	bge s0, a3, label25
	mv a4, s3
	sw a3, 0(s3)
	addiw a1, a1, 1
	bge a0, a1, label116
	bgt s0, zero, label167
	j label32
.p2align 2
label21:
	slli a4, a2, 6
	add t0, s2, a4
	sh2add a5, a3, t0
	li t0, 65535
	lw a4, 0(a5)
	blt a4, t0, label22
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	bgt s0, zero, label167
	j label32
.p2align 2
label25:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	bgt a4, a5, label28
	mv t0, zero
	mv a5, a4
	mv t1, a3
	mv t1, a2
	addiw a3, a3, 1
	bge s0, a3, label25
	sh2add a4, a2, s3
	li a3, 1
	sw a3, 0(a4)
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	bgt s0, zero, label167
	j label32
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
	addiw a1, a1, 1
	bge a0, a1, label116
	bgt s0, zero, label167
label32:
	li a0, 10
	jal putch
	ld ra, 128(sp)
	mv a0, zero
	ld s2, 136(sp)
	ld s4, 144(sp)
	ld s5, 152(sp)
	ld s0, 160(sp)
	ld s3, 168(sp)
	ld s6, 176(sp)
	ld s1, 184(sp)
	addi sp, sp, 192
	ret
.p2align 2
label22:
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a5, 0(t1)
	lw t1, 0(t0)
	addw a4, a4, t1
	bgt a5, a4, label23
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	bgt s0, zero, label167
	j label32
.p2align 2
label23:
	sh2add a5, a3, s1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	ble s0, zero, label32
label167:
	li s2, 1
	j label30
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
	sh2add a4, t1, s3
	li a3, 1
	sw a3, 0(a4)
	bge s0, a3, label21
	addiw a1, a1, 1
	bge a0, a1, label116
	bgt s0, zero, label167
	j label32
label77:
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
	bge s0, a0, label77
	bgt s4, zero, label81
	addi a2, s2, 64
	addiw a0, s0, -1
	bgt s0, zero, label99
	li a1, 1
	sw a1, 68(sp)
	bge a0, a1, label116
	j label32
.p2align 2
label8:
	sh2add a4, a1, a2
	sh2add a5, a1, s1
	lw a3, 0(a4)
	sw a3, 0(a5)
	sh2add a3, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a3)
	bge s0, a1, label8
	li a1, 1
	sw a1, 68(sp)
	bge a0, a1, label116
	bgt s0, zero, label167
	j label32
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
	addi a2, s2, 64
	addiw a0, s0, -1
	bgt s0, zero, label99
	li a1, 1
	sw a1, 68(sp)
	bge a0, a1, label116
	j label32
.p2align 2
label30:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	bge s0, s2, label30
	j label32
