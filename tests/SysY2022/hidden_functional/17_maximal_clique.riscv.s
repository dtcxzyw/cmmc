.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
graph:
	.zero	3600
.p2align 3
edges:
	.zero	4800
.text
.p2align 2
maxCliques:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[104]
	addi sp, sp, -144
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a1
	sd s6, 16(sp)
	sh2add a1, a0, a1
	sd s3, 24(sp)
	mv s3, a2
	sd s0, 32(sp)
	addiw s0, a0, 4
	sd s5, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd a0, 104(sp)
	sd a1, 136(sp)
pcrel371:
	auipc a1, %pcrel_hi(graph)
	lw a3, 0(a2)
	addi s2, a1, %pcrel_lo(pcrel371)
	addiw a2, a0, 1
	sd a2, 112(sp)
	addiw a2, a0, 2
	sd a2, 120(sp)
	addiw a2, a0, 3
	sd a2, 128(sp)
	ble a3, zero, label95
	li s4, 1
	mv s5, zero
	sh2add a1, a0, s1
	addi a0, s1, 4
	sw s4, 0(a1)
	li a1, 1
	j label7
.p2align 2
label122:
	addiw s4, s4, 1
	lw a0, 0(s3)
	bgt s4, a0, label336
.p2align 2
label4:
	ld a0, 104(sp)
	sh2add a1, a0, s1
	addi a0, s1, 4
	sw s4, 0(a1)
	li a1, 1
.p2align 2
label7:
	ld a2, 112(sp)
	ble a2, a1, label102
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ble a2, a1, label14
.p2align 2
label15:
	lw a2, 0(a0)
	lw t0, 0(a3)
	slli t1, a2, 4
	sub t2, t1, a2
	sh3add a5, t2, s2
	sh2add t1, t0, a5
	lw a2, 0(t1)
	beq a2, zero, label122
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 112(sp)
	bgt a2, a4, label15
	j label14
label102:
	li a0, 1
	beq a0, zero, label127
	lw a0, 0(s3)
	ble a0, zero, label132
	li s6, 1
	mv s7, zero
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s6, 4(a1)
	li a1, 1
	j label25
.p2align 2
label160:
	mv a0, zero
.p2align 2
label165:
	addiw s6, s6, 1
	lw a0, 0(s3)
	bgt s6, a0, label262
.p2align 2
label22:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s6, 4(a1)
	li a1, 1
.p2align 2
label25:
	ld a2, 120(sp)
	ble a2, a1, label140
.p2align 2
label28:
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ld a2, 120(sp)
	ble a2, a1, label32
.p2align 2
label33:
	lw a2, 0(a0)
	lw t1, 0(a3)
	slli t0, a2, 4
	sub t2, t0, a2
	sh3add a5, t2, s2
	sh2add t0, t1, a5
	lw a2, 0(t0)
	beq a2, zero, label160
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 120(sp)
	bgt a2, a4, label33
	j label32
label14:
	addi a0, a0, 4
	j label7
label336:
	mv a0, s5
label2:
	ld ra, 0(sp)
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
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 144
	ret
label32:
	addi a0, a0, 4
	ld a2, 120(sp)
	bgt a2, a1, label28
	j label140
label262:
	ld a0, 104(sp)
	addiw s4, s4, 1
	max a1, a0, s5
	lw a0, 0(s3)
	max s5, s7, a1
	ble s4, a0, label4
	j label336
label140:
	li a0, 1
	beq a0, zero, label165
	lw a0, 0(s3)
	ble a0, zero, label170
	li s8, 1
	mv s9, zero
	j label38
label176:
	li a0, 1
	bne a0, zero, label48
label46:
	addiw s8, s8, 1
	lw a0, 0(s3)
	bgt s8, a0, label186
.p2align 2
label38:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s8, 8(a1)
	li a1, 1
.p2align 2
label41:
	ld a2, 128(sp)
	ble a2, a1, label176
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ble a2, a1, label240
.p2align 2
label73:
	lw a2, 0(a0)
	lw t1, 0(a3)
	slli t2, a2, 4
	sub t0, t2, a2
	sh3add a5, t0, s2
	sh2add a2, t1, a5
	lw t0, 0(a2)
	bne t0, zero, label251
	addiw s8, s8, 1
	lw a0, 0(s3)
	ble s8, a0, label38
	j label186
label48:
	lw a0, 0(s3)
	ble a0, zero, label191
	li s10, 1
	mv s11, zero
.p2align 2
label49:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s10, 12(a1)
	li a1, 1
	ble s0, a1, label197
.p2align 2
label55:
	addiw a1, a1, 1
	mv a3, a1
	sh2add a2, a1, s1
	ble s0, a1, label59
.p2align 2
label60:
	lw a4, 0(a0)
	lw t0, 0(a2)
	slli t2, a4, 4
	sub t1, t2, a4
	sh3add a5, t1, s2
	sh2add t2, t0, a5
	lw a4, 0(t2)
	bne a4, zero, label216
	mv a0, zero
.p2align 2
label64:
	addiw s10, s10, 1
	lw a0, 0(s3)
	ble s10, a0, label49
	j label228
label186:
	ld a2, 112(sp)
	max a0, a2, s7
	max s7, s9, a0
label78:
	addiw s6, s6, 1
	lw a0, 0(s3)
	ble s6, a0, label22
	j label262
label240:
	addi a0, a0, 4
	j label41
label59:
	addi a0, a0, 4
	bgt s0, a1, label55
label197:
	li a0, 1
	bne a0, zero, label66
	j label64
label132:
	mv s7, zero
	ld a0, 104(sp)
	max a1, a0, s5
	max s5, zero, a1
	addiw s4, s4, 1
	lw a0, 0(s3)
	ble s4, a0, label4
	j label336
label228:
	ld a2, 120(sp)
	max a0, a2, s9
	max s9, s11, a0
	j label46
.p2align 2
label216:
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s0, a3, label60
	j label59
label66:
	mv a0, s0
	mv a1, s1
	mv a2, s3
	jal maxCliques
	addiw s10, s10, 1
	ld a2, 128(sp)
	max a1, a2, s11
	max s11, a0, a1
	lw a0, 0(s3)
	ble s10, a0, label49
	j label228
label95:
	mv a0, zero
	j label2
.p2align 2
label251:
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 128(sp)
	bgt a2, a4, label73
	j label240
label170:
	mv s9, zero
	ld a2, 112(sp)
	max a0, a2, s7
	max s7, zero, a0
	j label78
label127:
	addiw s4, s4, 1
	lw a0, 0(s3)
	ble s4, a0, label4
	j label336
label191:
	mv s11, zero
	ld a2, 120(sp)
	max a0, a2, s9
	max s9, zero, a0
	j label46
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[124] RegSpill[0] CalleeSaved[80]
	addi sp, sp, -208
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 200
	sd s6, 16(sp)
	sd s2, 24(sp)
	addi s2, sp, 80
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
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
	jal getint
	sw a0, 200(sp)
	jal getint
	li s0, 1
pcrel630:
	auipc a1, %pcrel_hi(graph)
	addiw s6, a0, -3
	mv s3, a0
	addi s4, a1, %pcrel_lo(pcrel630)
pcrel631:
	auipc a0, %pcrel_hi(edges)
	addi s5, a0, %pcrel_lo(pcrel631)
	ble s3, zero, label391
	mv s7, s5
	mv s8, zero
.p2align 2
label374:
	jal getint
	sw a0, 0(s7)
	jal getint
	addiw s8, s8, 1
	sw a0, 4(s7)
	ble s3, s8, label378
	addi s7, s7, 8
	j label374
label378:
	li a0, 3
	ble s3, a0, label448
	mv a0, s5
	mv a1, zero
	j label380
.p2align 2
label383:
	addi a0, a0, 32
.p2align 2
label380:
	lw a2, 0(a0)
	addiw a1, a1, 4
	lw a3, 4(a0)
	slli a5, a2, 4
	sub t0, a5, a2
	sh3add a4, t0, s4
	slli t0, a3, 4
	sh2add a5, a3, a4
	sub a4, t0, a3
	sw s0, 0(a5)
	sh3add a5, a4, s4
	sh2add t1, a2, a5
	sw s0, 0(t1)
	lw a4, 8(a0)
	lw a2, 12(a0)
	slli a5, a4, 4
	sub t0, a5, a4
	slli a5, a2, 4
	sh3add a3, t0, s4
	sh2add t1, a2, a3
	sub a3, a5, a2
	sw s0, 0(t1)
	sh3add t1, a3, s4
	sh2add t0, a4, t1
	sw s0, 0(t0)
	lw a3, 16(a0)
	lw a2, 20(a0)
	slli a5, a3, 4
	sub t0, a5, a3
	sh3add a4, t0, s4
	slli t0, a2, 4
	sh2add a5, a2, a4
	sub t1, t0, a2
	sw s0, 0(a5)
	sh3add a5, t1, s4
	sh2add a4, a3, a5
	sw s0, 0(a4)
	lw a2, 24(a0)
	lw a3, 28(a0)
	slli t0, a2, 4
	sub a5, t0, a2
	sh3add a4, a5, s4
	slli a5, a3, 4
	sh2add t0, a3, a4
	sub a4, a5, a3
	sw s0, 0(t0)
	sh3add t0, a4, s4
	sh2add t1, a2, t0
	sw s0, 0(t1)
	bgt s6, a1, label383
label384:
	ble s3, a1, label391
	sh3add a0, a1, s5
	j label387
label390:
	addi a0, a0, 8
label387:
	lw a2, 0(a0)
	addiw a1, a1, 1
	lw a3, 4(a0)
	slli a5, a2, 4
	sub t0, a5, a2
	sh3add a4, t0, s4
	slli t0, a3, 4
	sh2add a5, a3, a4
	sub t1, t0, a3
	sw s0, 0(a5)
	sh3add a5, t1, s4
	sh2add a4, a2, a5
	sw s0, 0(a4)
	bgt s3, a1, label390
label391:
	mv a0, s0
	mv a1, s2
	mv a2, s1
	jal maxCliques
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 208
	ret
label448:
	mv a1, zero
	j label384
