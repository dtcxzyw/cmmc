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
	sd s4, 24(sp)
	addi s4, sp, 88
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
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
	lui a1, 16
pcrel292:
	auipc a2, %pcrel_hi(e)
	mv s6, a0
	addiw s2, a1, -1
	addi s3, a2, %pcrel_lo(pcrel292)
	li a0, 1
	mv s5, a0
	blt s0, a0, label8
.p2align 2
label4:
	slli a3, a0, 6
	mv a2, s5
	add a1, s3, a3
.p2align 2
label5:
	mv a3, zero
	beq a0, a2, label254
	lui a5, 16
	addiw a3, a5, -1
.p2align 2
label254:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw a3, 0(a4)
	bge s0, a2, label5
	addiw a0, a0, 1
	bge s0, a0, label4
label8:
	ble s6, zero, label11
	mv s7, s5
.p2align 2
label9:
	jal getint
	slli a1, a0, 6
	add s8, s3, a1
	jal getint
	sh2add s9, a0, s8
	jal getint
	addiw s7, s7, 1
	sw a0, 0(s9)
	bge s6, s7, label9
label11:
	addi a2, s3, 64
	addiw a0, s0, -1
	bgt s0, zero, label112
label111:
	sw s5, 92(sp)
	mv a1, s5
	j label13
label112:
	mv a1, s5
	j label36
label13:
	bge a0, a1, label117
	j label32
.p2align 2
label36:
	sh2add a4, a1, a2
	sh2add a5, a1, s1
	lw a3, 0(a4)
	sh2add a4, a1, s4
	addiw a1, a1, 1
	sw a3, 0(a5)
	sw zero, 0(a4)
	bge s0, a1, label36
	j label111
.p2align 2
label117:
	mv a4, s2
	mv a2, zero
	mv a3, s5
	bge s0, s5, label27
	j label19
.p2align 2
label276:
	addiw a1, a1, 1
	bge a0, a1, label117
label32:
	ble s0, zero, label35
.p2align 2
label33:
	sh2add a1, s5, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bge s0, s5, label33
label35:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s4, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 216
	ret
label22:
	addiw a1, a1, 1
	bge a0, a1, label117
	j label32
.p2align 2
label27:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	bgt a4, a5, label31
	addiw a3, a3, 1
	bge s0, a3, label27
	j label274
.p2align 2
label31:
	sh2add t3, a3, s4
	mv t0, a5
	lw t2, 0(t3)
	sltiu t1, t2, 1
	bne t1, zero, label257
	mv t0, a4
.p2align 2
label257:
	mv a5, a3
	bne t1, zero, label259
	mv a5, a2
.p2align 2
label259:
	mv a4, t0
	mv a2, a5
	addiw a3, a3, 1
	bge s0, a3, label27
	sh2add a4, a5, s4
	mv a3, s5
	sw s5, 0(a4)
	blt s0, s5, label22
.p2align 2
label23:
	slli a5, a2, 6
	add t0, s3, a5
	sh2add t1, a3, t0
	lw a4, 0(t1)
	blt a4, s2, label24
	addiw a3, a3, 1
	bge s0, a3, label23
	j label276
.p2align 2
label24:
	sh2add t0, a3, s1
	sh2add t2, a2, s1
	lw a5, 0(t0)
	lw t1, 0(t2)
	addw t0, a4, t1
	ble a5, t0, label147
	sh2add a4, a3, s1
	sw t0, 0(a4)
	addiw a3, a3, 1
	bge s0, a3, label23
	addiw a1, a1, 1
	bge a0, a1, label117
	j label32
.p2align 2
label147:
	addiw a3, a3, 1
	bge s0, a3, label23
	addiw a1, a1, 1
	bge a0, a1, label117
	j label32
label19:
	sh2add a4, a2, s4
	mv a3, s5
	sw s5, 0(a4)
	bge s0, s5, label23
	j label22
.p2align 2
label274:
	sh2add a4, a2, s4
	mv a3, s5
	sw s5, 0(a4)
	bge s0, s5, label23
	j label22
