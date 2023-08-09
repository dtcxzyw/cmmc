.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
graph:
	.zero	3600
.align 8
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
pcrel363:
	auipc a1, %pcrel_hi(graph)
	lw a3, 0(a2)
	addi s2, a1, %pcrel_lo(pcrel363)
	addiw a2, a0, 1
	sd a2, 112(sp)
	addiw a2, a0, 2
	sd a2, 120(sp)
	addiw a2, a0, 3
	sd a2, 128(sp)
	ble a3, zero, label95
	li s4, 1
	mv s5, zero
.p2align 2
label2:
	ld a0, 104(sp)
	sh2add a1, a0, s1
	addi a0, s1, 4
	sw s4, 0(a1)
	li a1, 1
.p2align 2
label5:
	ld a2, 112(sp)
	ble a2, a1, label102
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ble a2, a1, label12
.p2align 2
label13:
	lw a2, 0(a0)
	lw t0, 0(a3)
	slli t1, a2, 4
	sub t2, t1, a2
	sh3add a5, t2, s2
	sh2add t1, t0, a5
	lw a2, 0(t1)
	bne a2, zero, label121
	addiw s4, s4, 1
	lw a0, 0(s3)
	ble s4, a0, label2
label336:
	mv a0, s5
label80:
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
label102:
	li a0, 1
	bne a0, zero, label17
	addiw s4, s4, 1
	lw a0, 0(s3)
	ble s4, a0, label2
	j label336
label12:
	addi a0, a0, 4
	j label5
.p2align 2
label121:
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 112(sp)
	bgt a2, a4, label13
	j label12
label17:
	lw a0, 0(s3)
	ble a0, zero, label132
	li s6, 1
	mv s7, zero
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s6, 4(a1)
	li a1, 1
	j label23
.p2align 2
label260:
	addiw s6, s6, 1
	lw a0, 0(s3)
	bgt s6, a0, label150
.p2align 2
label20:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s6, 4(a1)
	li a1, 1
.p2align 2
label23:
	ld a2, 120(sp)
	ble a2, a1, label140
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ble a2, a1, label248
.p2align 2
label75:
	lw a2, 0(a0)
	lw t1, 0(a3)
	slli t0, a2, 4
	sub t2, t0, a2
	sh3add a5, t2, s2
	sh2add a2, t1, a5
	lw t0, 0(a2)
	beq t0, zero, label260
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 120(sp)
	bgt a2, a4, label75
label248:
	addi a0, a0, 4
	j label23
label140:
	li a0, 1
	beq a0, zero, label28
	lw a0, 0(s3)
	ble a0, zero, label155
	li s8, 1
	mv s9, zero
.p2align 2
label31:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s8, 8(a1)
	li a1, 1
	ld a2, 128(sp)
	ble a2, a1, label161
.p2align 2
label62:
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ld a2, 128(sp)
	ble a2, a1, label66
.p2align 2
label67:
	lw a2, 0(a0)
	lw t1, 0(a3)
	slli t2, a2, 4
	sub t0, t2, a2
	sh3add a5, t0, s2
	sh2add a2, t1, a5
	lw t0, 0(a2)
	bne t0, zero, label237
	addiw s8, s8, 1
	lw a0, 0(s3)
	ble s8, a0, label31
label171:
	ld a2, 112(sp)
	max a0, a2, s7
	max s7, s9, a0
	j label28
label150:
	ld a0, 104(sp)
	addiw s4, s4, 1
	max a1, a0, s5
	lw a0, 0(s3)
	max s5, s7, a1
	ble s4, a0, label2
	j label336
label66:
	addi a0, a0, 4
	ld a2, 128(sp)
	bgt a2, a1, label62
label161:
	li a0, 1
	beq a0, zero, label39
	lw a0, 0(s3)
	ble a0, zero, label176
	li s10, 1
	mv s11, zero
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s10, 12(a1)
	li a1, 1
	j label47
label59:
	mv a0, s0
	mv a1, s1
	mv a2, s3
	jal maxCliques
	ld a2, 128(sp)
	max a1, a2, s11
	max s11, a0, a1
	addiw s10, s10, 1
	lw a0, 0(s3)
	bgt s10, a0, label218
.p2align 2
label44:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s10, 12(a1)
	li a1, 1
.p2align 2
label47:
	ble s0, a1, label184
.p2align 2
label50:
	addiw a1, a1, 1
	mv a3, a1
	sh2add a2, a1, s1
	ble s0, a1, label54
.p2align 2
label55:
	lw a4, 0(a0)
	lw t1, 0(a2)
	slli t0, a4, 4
	sub t2, t0, a4
	sh3add a5, t2, s2
	sh2add t0, t1, a5
	lw a4, 0(t0)
	bne a4, zero, label203
	mv a0, zero
.p2align 2
label209:
	addiw s10, s10, 1
	lw a0, 0(s3)
	ble s10, a0, label44
label218:
	ld a2, 120(sp)
	addiw s8, s8, 1
	max a0, a2, s9
	max s9, s11, a0
	lw a0, 0(s3)
	ble s8, a0, label31
	j label171
label28:
	addiw s6, s6, 1
	lw a0, 0(s3)
	ble s6, a0, label20
	j label150
.p2align 2
label237:
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 128(sp)
	bgt a2, a4, label67
	j label66
label39:
	addiw s8, s8, 1
	lw a0, 0(s3)
	ble s8, a0, label31
	j label171
label54:
	addi a0, a0, 4
	bgt s0, a1, label50
label184:
	li a0, 1
	bne a0, zero, label59
	j label209
.p2align 2
label203:
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s0, a3, label55
	j label54
label132:
	mv s7, zero
	ld a0, 104(sp)
	max a1, a0, s5
	max s5, zero, a1
	addiw s4, s4, 1
	lw a0, 0(s3)
	ble s4, a0, label2
	j label336
label95:
	mv a0, zero
	j label80
label155:
	mv s9, zero
	ld a2, 112(sp)
	max a0, a2, s7
	max s7, zero, a0
	j label28
label176:
	mv s11, zero
	ld a2, 120(sp)
	max a0, a2, s9
	max s9, zero, a0
	j label39
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
pcrel621:
	auipc a1, %pcrel_hi(graph)
	addiw s6, a0, -3
	mv s3, a0
	addi s4, a1, %pcrel_lo(pcrel621)
pcrel622:
	auipc a0, %pcrel_hi(edges)
	addi s5, a0, %pcrel_lo(pcrel622)
	ble s3, zero, label383
	mv s7, s5
	mv s8, zero
	j label366
.p2align 2
label382:
	addi s7, s7, 8
.p2align 2
label366:
	jal getint
	sw a0, 0(s7)
	jal getint
	addiw s8, s8, 1
	sw a0, 4(s7)
	bgt s3, s8, label382
	li a0, 3
	ble s3, a0, label439
	mv a0, s5
	mv a1, zero
	j label378
.p2align 2
label381:
	addi a0, a0, 32
.p2align 2
label378:
	lw a3, 0(a0)
	addiw a1, a1, 4
	lw a2, 4(a0)
	slli a5, a3, 4
	slli t1, a2, 4
	sub t0, a5, a3
	sh3add a4, t0, s4
	sh2add a5, a2, a4
	sub a4, t1, a2
	sw s0, 0(a5)
	sh3add a5, a4, s4
	sh2add t0, a3, a5
	sw s0, 0(t0)
	lw a2, 8(a0)
	lw a3, 12(a0)
	slli a5, a2, 4
	sub t0, a5, a2
	sh3add a4, t0, s4
	slli t0, a3, 4
	sh2add a5, a3, a4
	sub a4, t0, a3
	sh3add t1, a4, s4
	sw s0, 0(a5)
	sh2add a5, a2, t1
	sw s0, 0(a5)
	lw a3, 16(a0)
	lw a2, 20(a0)
	slli t0, a3, 4
	slli t1, a2, 4
	sub a5, t0, a3
	sh3add a4, a5, s4
	sub a5, t1, a2
	sh2add t0, a2, a4
	sh3add a4, a5, s4
	sw s0, 0(t0)
	sh2add t0, a3, a4
	sw s0, 0(t0)
	lw a2, 24(a0)
	lw a3, 28(a0)
	slli a5, a2, 4
	sub t0, a5, a2
	sh3add a4, t0, s4
	slli t0, a3, 4
	sh2add t1, a3, a4
	sub a5, t0, a3
	sh3add a4, a5, s4
	sw s0, 0(t1)
	sh2add t1, a2, a4
	sw s0, 0(t1)
	bgt s6, a1, label381
label370:
	ble s3, a1, label383
	sh3add a0, a1, s5
	j label373
label376:
	addi a0, a0, 8
label373:
	lw a2, 0(a0)
	addiw a1, a1, 1
	lw a3, 4(a0)
	slli a5, a2, 4
	sub t1, a5, a2
	slli a5, a3, 4
	sh3add a4, t1, s4
	sub t1, a5, a3
	sh2add t0, a3, a4
	sw s0, 0(t0)
	sh3add t0, t1, s4
	sh2add a4, a2, t0
	sw s0, 0(a4)
	bgt s3, a1, label376
label383:
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
label439:
	mv a1, zero
	j label370
