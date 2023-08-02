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
	sd s3, 8(sp)
	addi s3, sp, 152
	sd s5, 16(sp)
	addi s5, sp, 88
	sd s0, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
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
pcrel305:
	auipc a2, %pcrel_hi(e)
	mv s6, a0
	addi s2, a2, %pcrel_lo(pcrel305)
	li a0, 1
	lui a2, 16
	addi a1, s2, 64
	mv s4, a0
	addiw s1, a2, -1
	blt s0, a0, label11
.p2align 2
label5:
	addi a2, a1, 4
	mv a3, s4
	mv a4, zero
	beq a0, s4, label258
	lui a5, 16
	addiw a4, a5, -1
.p2align 2
label258:
	sw a4, 0(a2)
	addiw a3, a3, 1
	bge s0, a3, label9
	addiw a0, a0, 1
	addi a1, a1, 64
	bge s0, a0, label5
	j label11
.p2align 2
label9:
	addi a2, a2, 4
	mv a4, zero
	beq a0, a3, label258
	lui a5, 16
	addiw a4, a5, -1
	sw a4, 0(a2)
	addiw a3, a3, 1
	bge s0, a3, label9
	addiw a0, a0, 1
	addi a1, a1, 64
	bge s0, a0, label5
label11:
	ble s6, zero, label12
	mv s7, s4
	j label49
label12:
	addi a1, s2, 64
	addiw a0, s0, -1
	bgt s0, zero, label44
	j label13
.p2align 2
label49:
	jal getint
	slli a1, a0, 6
	add s8, s2, a1
	jal getint
	sh2add s9, a0, s8
	jal getint
	addiw s7, s7, 1
	sw a0, 0(s9)
	bge s6, s7, label49
	j label12
label44:
	addi a1, a1, 4
	mv a2, s4
.p2align 2
label45:
	lw a3, 0(a1)
	sh2add a4, a2, s3
	sh2add a5, a2, s5
	addiw a2, a2, 1
	sw a3, 0(a4)
	sw zero, 0(a5)
	blt s0, a2, label13
	addi a1, a1, 4
	j label45
label13:
	sw s4, 92(sp)
	mv a1, s4
	bge a0, s4, label23
label16:
	ble s0, zero, label22
	addi s1, s3, 4
.p2align 2
label18:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	blt s0, s4, label22
	addi s1, s1, 4
	j label18
.p2align 2
label23:
	addi a4, s3, 4
	addi a3, s5, 4
	mv t0, s1
	mv a2, zero
	mv a5, s4
	bge s0, s4, label39
	j label30
.p2align 2
label278:
	addiw a1, a1, 1
	bge a0, a1, label23
	j label16
label34:
	addiw a1, a1, 1
	bge a0, a1, label23
	j label16
.p2align 2
label39:
	lw t1, 0(a4)
	bgt t0, t1, label43
	addiw a5, a5, 1
	addi a4, a4, 4
	addi a3, a3, 4
	bge s0, a5, label39
	j label281
.p2align 2
label43:
	lw t4, 0(a3)
	mv t2, t1
	sltiu t3, t4, 1
	bne t3, zero, label261
	mv t2, t0
.p2align 2
label261:
	mv t1, a5
	bne t3, zero, label263
	mv t1, a2
.p2align 2
label263:
	mv t0, t2
	mv a2, t1
	addiw a5, a5, 1
	addi a4, a4, 4
	addi a3, a3, 4
	bge s0, a5, label39
	sh2add a4, t1, s5
	addi a3, s3, 4
	sw s4, 0(a4)
	mv a4, s4
	blt s0, s4, label34
.p2align 2
label35:
	slli t1, a2, 6
	add t2, s2, t1
	sh2add t0, a4, t2
	lw a5, 0(t0)
	blt a5, s1, label37
	addiw a4, a4, 1
	addi a3, a3, 4
	bge s0, a4, label35
	j label278
.p2align 2
label37:
	lw t0, 0(a3)
	sh2add t3, a2, s3
	lw t2, 0(t3)
	addw t1, a5, t2
	ble t0, t1, label162
	sw t1, 0(a3)
	addiw a4, a4, 1
	addi a3, a3, 4
	bge s0, a4, label35
	addiw a1, a1, 1
	bge a0, a1, label23
	j label16
.p2align 2
label162:
	addiw a4, a4, 1
	addi a3, a3, 4
	bge s0, a4, label35
	addiw a1, a1, 1
	bge a0, a1, label23
	j label16
label30:
	sh2add a4, a2, s5
	addi a3, s3, 4
	sw s4, 0(a4)
	mv a4, s4
	bge s0, s4, label35
	j label34
label22:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 216
	ret
.p2align 2
label281:
	sh2add a4, a2, s5
	addi a3, s3, 4
	sw s4, 0(a4)
	mv a4, s4
	bge s0, s4, label35
	j label34
