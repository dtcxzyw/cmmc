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
	sd s9, 72(sp)
	sd s8, 80(sp)
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
label103:
	addiw a0, a0, 1
	addi a1, a1, 64
	blt s0, a0, label11
.p2align 2
label5:
	addi a2, a1, 4
	mv a3, s4
	mv a4, zero
	beq a0, s4, label272
	lui a5, 16
	addiw a4, a5, -1
.p2align 2
label272:
	sw a4, 0(a2)
	addiw a3, a3, 1
	blt s0, a3, label103
.p2align 2
label9:
	addi a2, a2, 4
	mv a4, zero
	beq a0, a3, label272
	lui a5, 16
	addiw a3, a3, 1
	addiw a4, a5, -1
	sw a4, 0(a2)
	bge s0, a3, label9
	addiw a0, a0, 1
	addi a1, a1, 64
	bge s0, a0, label5
label11:
	ble s6, zero, label14
	mv s7, s4
.p2align 2
label12:
	jal getint
	slli a1, a0, 6
	add s9, s5, a1
	jal getint
	sh2add s8, a0, s9
	jal getint
	addiw s7, s7, 1
	sw a0, 0(s8)
	bge s6, s7, label12
label14:
	addi a1, s5, 64
	addiw a0, s0, -1
	ble s0, zero, label15
	addi a1, a1, 4
	mv a2, s4
	j label49
.p2align 2
label52:
	addi a1, a1, 4
.p2align 2
label49:
	sh2add a3, a2, s1
	lw a4, 0(a1)
	sh2add a5, a2, s3
	addiw a2, a2, 1
	sw a4, 0(a3)
	sw zero, 0(a5)
	bge s0, a2, label52
label15:
	sw s4, 92(sp)
	mv a1, s4
label16:
	bge a0, a1, label25
	j label18
.p2align 2
label34:
	sh2add t1, a4, s1
	sh2add t2, a2, s1
	lw t0, 0(t1)
	lw t3, 0(t2)
	addw t1, a5, t3
	bgt t0, t1, label35
	addiw a4, a4, 1
	blt s0, a4, label292
.p2align 2
label33:
	addi a3, a3, 4
	lw a5, 0(a3)
	blt a5, s2, label34
	addiw a4, a4, 1
	bge s0, a4, label33
	addiw a1, a1, 1
	blt a0, a1, label18
.p2align 2
label25:
	ble s0, zero, label147
	addi a2, s1, 4
	mv a3, s4
	mv a5, zero
	mv a4, s2
	lw t0, 0(a2)
	bgt s2, t0, label47
	addiw a3, s4, 1
	bge s0, a3, label46
	mv a2, zero
	mv a4, s3
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label28
	j label154
.p2align 2
label274:
	mv t1, a4
.p2align 2
label275:
	mv t0, a3
	bne t2, zero, label277
	mv t0, a5
.p2align 2
label277:
	mv a4, t1
	mv a5, t0
	addiw a3, a3, 1
	blt s0, a3, label297
.p2align 2
label46:
	addi a2, a2, 4
	lw t0, 0(a2)
	ble a4, t0, label296
.p2align 2
label47:
	sh2add t4, a3, s3
	mv t1, t0
	lw t3, 0(t4)
	sltiu t2, t3, 1
	bne t2, zero, label275
	j label274
label18:
	ble s0, zero, label19
.p2align 2
label20:
	addi s1, s1, 4
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s4, s4, 1
	bge s0, s4, label20
label19:
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
	ld s9, 72(sp)
	ld s8, 80(sp)
	addi sp, sp, 216
	ret
.p2align 2
label297:
	mv a2, a5
	sh2add a4, a5, s3
	slli a5, a5, 6
	sw s4, 0(a4)
	add a3, s5, a5
	ble s0, zero, label154
.p2align 2
label28:
	addi a3, a3, 4
	mv a4, s4
	lw a5, 0(a3)
	blt a5, s2, label34
	addiw a4, s4, 1
	bge s0, a4, label33
	addiw a1, a1, 1
	bge a0, a1, label25
	j label18
.p2align 2
label296:
	addiw a3, a3, 1
	bge s0, a3, label46
	mv a2, a5
	sh2add a4, a5, s3
	slli a5, a5, 6
	sw s4, 0(a4)
	add a3, s5, a5
	bgt s0, zero, label28
	j label154
.p2align 2
label35:
	sh2add a5, a4, s1
	addiw a4, a4, 1
	sw t1, 0(a5)
	bge s0, a4, label33
	addiw a1, a1, 1
	bge a0, a1, label25
	j label18
label147:
	mv a2, zero
	mv a4, s3
	mv a5, zero
	sw s4, 0(s3)
	mv a3, s5
	bgt s0, zero, label28
label154:
	addiw a1, a1, 1
	j label16
.p2align 2
label292:
	addiw a1, a1, 1
	bge a0, a1, label25
	j label18
