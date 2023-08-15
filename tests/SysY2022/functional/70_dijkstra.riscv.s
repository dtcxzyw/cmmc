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
	# stack usage: CalleeArg[0] Local[128] RegSpill[0] CalleeSaved[88]
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
	li s4, 1
pcrel332:
	auipc a1, %pcrel_hi(e)
	mv s6, a0
	addi s5, a1, %pcrel_lo(pcrel332)
	lui a0, 16
	addiw s2, a0, -1
	ble s0, zero, label12
	addi a1, s5, 64
	mv a0, s4
	addi a2, a1, 4
	mv a3, s4
	mv a4, zero
	beq s4, s4, label279
	lui a5, 16
	addiw a4, a5, -1
.p2align 2
label279:
	sw a4, 0(a2)
	addiw a3, a3, 1
	blt s0, a3, label103
.p2align 2
label9:
	addi a2, a2, 4
	mv a4, zero
	beq a0, a3, label279
	lui a5, 16
	addiw a3, a3, 1
	addiw a4, a5, -1
	sw a4, 0(a2)
	bge s0, a3, label9
	addiw a0, a0, 1
	bge s0, a0, label11
label12:
	ble s6, zero, label13
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
label13:
	addi a0, s5, 64
	ble s0, zero, label19
	addi a0, a0, 4
	mv a1, s4
.p2align 2
label15:
	sh2add a2, a1, s1
	lw a3, 0(a0)
	sh2add a4, a1, s3
	addiw a1, a1, 1
	sw a3, 0(a2)
	sw zero, 0(a4)
	blt s0, a1, label19
	addi a0, a0, 4
	j label15
.p2align 2
label103:
	addiw a0, a0, 1
	blt s0, a0, label12
.p2align 2
label11:
	addi a1, a1, 64
	mv a3, s4
	mv a4, zero
	addi a2, a1, 4
	beq a0, s4, label279
	lui a5, 16
	addiw a3, s4, 1
	addiw a4, a5, -1
	sw a4, 0(a2)
	bge s0, a3, label9
	j label103
label19:
	addiw a0, s0, -1
	sw s4, 92(sp)
	ble a0, zero, label20
	mv a1, s4
	j label27
.p2align 2
label310:
	addiw a1, a1, 1
	blt a0, a1, label20
.p2align 2
label27:
	ble s0, zero, label150
	addi a2, s1, 4
	mv a3, s4
	mv a5, zero
	mv a4, s2
	lw t0, 0(a2)
	bgt s2, t0, label39
	addiw a3, s4, 1
	bge s0, a3, label38
	mv a2, zero
	mv t0, s3
	mv a4, zero
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label43
	j label42
.p2align 2
label39:
	sh2add t2, a3, s3
	lw t3, 0(t2)
	sltiu t1, t3, 1
	bne t1, zero, label282
	mv t0, a4
.p2align 2
label282:
	mv t2, a3
	bne t1, zero, label284
	mv t2, a5
.p2align 2
label284:
	mv a4, t0
	mv a5, t2
	addiw a3, a3, 1
	blt s0, a3, label300
.p2align 2
label38:
	addi a2, a2, 4
	lw t0, 0(a2)
	bgt a4, t0, label39
	addiw a3, a3, 1
	bge s0, a3, label38
	mv a2, a5
	sh2add t0, a5, s3
	slli a4, a5, 6
	sw s4, 0(t0)
	add a3, s5, a4
	bgt s0, zero, label43
	j label42
label20:
	ble s0, zero, label26
.p2align 2
label21:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bge s0, s4, label21
label26:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
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
label300:
	mv a2, a5
	sh2add t0, a5, s3
	slli a4, a5, 6
	sw s4, 0(t0)
	add a3, s5, a4
	ble s0, zero, label42
.p2align 2
label43:
	addi a3, a3, 4
	mv a4, s4
	lw a5, 0(a3)
	blt a5, s2, label47
	addiw a4, s4, 1
	bge s0, a4, label50
	addiw a1, a1, 1
	bge a0, a1, label27
	j label20
.p2align 2
label304:
	addiw a4, a4, 1
	blt s0, a4, label310
.p2align 2
label50:
	addi a3, a3, 4
	lw a5, 0(a3)
	bge a5, s2, label304
.p2align 2
label47:
	sh2add t1, a4, s1
	sh2add t3, a2, s1
	lw t0, 0(t1)
	lw t2, 0(t3)
	addw t1, a5, t2
	bgt t0, t1, label48
	addiw a4, a4, 1
	bge s0, a4, label50
	addiw a1, a1, 1
	bge a0, a1, label27
	j label20
.p2align 2
label48:
	sh2add a5, a4, s1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge s0, a4, label50
	addiw a1, a1, 1
	bge a0, a1, label27
	j label20
label150:
	mv a2, zero
	mv t0, s3
	mv a4, zero
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label43
label42:
	addiw a1, a1, 1
	bge a0, a1, label27
	j label20
