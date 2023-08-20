.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	40000
.p2align 3
b:
	.zero	40000
.p2align 3
res:
	.zero	40000
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s7, 32(sp)
	sd s3, 40(sp)
	sd s6, 48(sp)
	sd s1, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	li s5, 3
	addiw s0, a0, -3
	li s4, 400
pcrel277:
	auipc a1, %pcrel_hi(a)
	mv s2, a0
	addi s7, a1, %pcrel_lo(pcrel277)
pcrel278:
	auipc a0, %pcrel_hi(b)
pcrel279:
	auipc a1, %pcrel_hi(res)
	addi s3, a0, %pcrel_lo(pcrel278)
	addi s6, a1, %pcrel_lo(pcrel279)
	ld a0, 104(sp)
	ble a0, zero, label13
	mv s1, s7
	mv s8, zero
	bgt s2, zero, label8
	j label6
.p2align 2
label12:
	addi s9, s9, 4
.p2align 2
label9:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s2, s10, label12
	addiw s8, s8, 1
	ld a0, 104(sp)
	ble a0, s8, label13
.p2align 2
label7:
	addi s1, s1, 400
	ble s2, zero, label6
.p2align 2
label8:
	mv s9, s1
	mv s10, zero
	j label9
label13:
	jal getint
	mv s9, a0
	jal getint
	mv s1, a0
	ble s9, zero, label22
	mv s8, zero
	j label14
.p2align 2
label20:
	addi s10, s10, 400
.p2align 2
label17:
	jal getint
	addiw s11, s11, 1
	sh2add a1, s8, s10
	sw a0, 0(a1)
	bgt s1, s11, label20
	addiw s8, s8, 1
	ble s9, s8, label22
.p2align 2
label14:
	ble s1, zero, label21
	mv s10, s3
	mv s11, zero
	j label17
label22:
	ld a0, 104(sp)
	ble a0, zero, label65
	mv a1, s6
	mv a2, zero
	mv a3, zero
	mv a0, s7
	bgt s1, zero, label27
	j label52
.p2align 2
label250:
	addiw a2, a2, 1
	ld a0, 104(sp)
	ble a0, a2, label245
.p2align 2
label53:
	addi a1, a1, 400
	mul a3, a2, s4
	add a0, s7, a3
	ble s1, zero, label52
.p2align 2
label27:
	mv a3, a1
	mv a4, zero
	bgt s2, zero, label33
	li a4, 1
	bgt s1, a4, label32
	j label133
.p2align 2
label51:
	addi t0, t0, 4
.p2align 2
label47:
	sh2add t3, t1, a5
	lw t4, 0(t0)
	addiw t1, t1, 1
	lw t6, 0(t3)
	mulw t5, t4, t6
	addw t2, t2, t5
	bgt s2, t1, label51
	sw t2, 0(a3)
	addiw a4, a4, 1
	ble s1, a4, label250
.p2align 2
label32:
	addi a3, a3, 4
	ble s2, zero, label246
.p2align 2
label33:
	mul t0, a4, s4
	lw t2, 0(a3)
	add a5, s3, t0
	ble s2, s5, label141
	mv t0, a0
	mv t1, zero
.p2align 2
label35:
	sh2add t3, t1, a5
	lw t4, 0(t0)
	addiw t1, t1, 4
	lw t5, 0(t3)
	lw a6, 4(t0)
	lw t6, 4(t3)
	mulw s8, t4, t5
	mulw a7, a6, t6
	lw a6, 8(t0)
	addw t6, a7, s8
	lw t5, 8(t3)
	mulw a7, a6, t5
	lw t5, 12(t0)
	addw t4, t6, a7
	lw a7, 12(t3)
	mulw t6, t5, a7
	addw a6, t4, t6
	addw t2, t2, a6
	ble s0, t1, label170
	addi t0, t0, 16
	j label35
.p2align 2
label170:
	mv t3, t2
	ble s2, t1, label248
.p2align 2
label46:
	sh2add t0, t1, a0
	mv t2, t3
	j label47
.p2align 2
label141:
	mv t1, zero
	mv t3, t2
	mv t2, zero
	bgt s2, zero, label46
	sw zero, 0(a3)
	addiw a4, a4, 1
	bgt s1, a4, label32
	addiw a2, a2, 1
	ld a0, 104(sp)
	bgt a0, a2, label53
	j label245
.p2align 2
label248:
	sw t2, 0(a3)
	addiw a4, a4, 1
	bgt s1, a4, label32
	addiw a2, a2, 1
	ld a0, 104(sp)
	bgt a0, a2, label53
	j label245
label21:
	addiw s8, s8, 1
	bgt s9, s8, label14
	j label22
label245:
	mv s0, zero
	bgt s1, zero, label60
	j label58
.p2align 2
label64:
	addi s2, s2, 4
.p2align 2
label61:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	jal putch
	addiw s3, s3, 1
	bgt s1, s3, label64
.p2align 2
label58:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addiw s0, s0, 1
	ble a0, s0, label65
	addi s6, s6, 400
	ble s1, zero, label58
.p2align 2
label60:
	mv s2, s6
	mv s3, zero
	j label61
label65:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s7, 32(sp)
	ld s3, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label6:
	addiw s8, s8, 1
	ld a0, 104(sp)
	bgt a0, s8, label7
	j label13
label52:
	addiw a2, a2, 1
	ld a0, 104(sp)
	bgt a0, a2, label53
	j label245
.p2align 2
label246:
	addiw a4, a4, 1
	bgt s1, a4, label32
label133:
	addiw a2, a2, 1
	ld a0, 104(sp)
	bgt a0, a2, label53
	j label245
