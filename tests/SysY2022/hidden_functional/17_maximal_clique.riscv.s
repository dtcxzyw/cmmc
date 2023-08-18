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
pcrel357:
	auipc a1, %pcrel_hi(graph)
	lw a3, 0(a2)
	addi s2, a1, %pcrel_lo(pcrel357)
	addiw a2, a0, 1
	sd a2, 112(sp)
	addiw a2, a0, 2
	sd a2, 120(sp)
	addiw a2, a0, 3
	sd a2, 128(sp)
	ble a3, zero, label95
	li s4, 1
	mv s5, zero
	j label2
.p2align 2
label121:
	addiw s4, s4, 1
	lw a0, 0(s3)
	bgt s4, a0, label334
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
	ble a2, a1, label109
.p2align 2
label12:
	lw a2, 0(a0)
	lw t1, 0(a3)
	slli t2, a2, 4
	sub t0, t2, a2
	sh3add a5, t0, s2
	sh2add t2, t1, a5
	lw a2, 0(t2)
	beq a2, zero, label121
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 112(sp)
	bgt a2, a4, label12
label109:
	addi a0, a0, 4
	j label5
label17:
	lw a0, 0(s3)
	ble a0, zero, label132
	li s6, 1
	mv s7, zero
.p2align 2
label18:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s6, 4(a1)
	li a1, 1
	ld a2, 120(sp)
	ble a2, a1, label138
.p2align 2
label24:
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ld a2, 120(sp)
	ble a2, a1, label28
.p2align 2
label29:
	lw a2, 0(a0)
	lw t2, 0(a3)
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s2
	sh2add t0, t2, a5
	lw a2, 0(t0)
	bne a2, zero, label157
	mv a0, zero
.p2align 2
label163:
	addiw s6, s6, 1
	lw a0, 0(s3)
	ble s6, a0, label18
label323:
	ld a0, 104(sp)
	max a1, a0, s5
	max s5, s7, a1
label78:
	addiw s4, s4, 1
	lw a0, 0(s3)
	ble s4, a0, label2
label334:
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
	j label334
label28:
	addi a0, a0, 4
	ld a2, 120(sp)
	bgt a2, a1, label24
label138:
	li a0, 1
	beq a0, zero, label163
	lw a0, 0(s3)
	ble a0, zero, label168
	li s8, 1
	mv s9, zero
	j label34
.p2align 2
label251:
	addiw s8, s8, 1
	lw a0, 0(s3)
	bgt s8, a0, label184
.p2align 2
label34:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s8, 8(a1)
	li a1, 1
	ld a2, 128(sp)
	ble a2, a1, label174
.p2align 2
label65:
	addiw a1, a1, 1
	mv a4, a1
	sh2add a3, a1, s1
	ld a2, 128(sp)
	ble a2, a1, label69
.p2align 2
label70:
	lw a2, 0(a0)
	lw t2, 0(a3)
	slli t1, a2, 4
	sub t0, t1, a2
	sh3add a5, t0, s2
	sh2add t1, t2, a5
	lw a2, 0(t1)
	beq a2, zero, label251
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 128(sp)
	bgt a2, a4, label70
	j label69
.p2align 2
label157:
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 120(sp)
	bgt a2, a4, label29
	j label28
label69:
	addi a0, a0, 4
	ld a2, 128(sp)
	bgt a2, a1, label65
label174:
	li a0, 1
	bne a0, zero, label44
label42:
	addiw s8, s8, 1
	lw a0, 0(s3)
	ble s8, a0, label34
	j label184
label44:
	lw a0, 0(s3)
	ble a0, zero, label189
	li s10, 1
	mv s11, zero
.p2align 2
label45:
	ld a1, 136(sp)
	addi a0, s1, 4
	sw s10, 12(a1)
	li a1, 1
.p2align 2
label48:
	ble s0, a1, label195
	addiw a1, a1, 1
	mv a3, a1
	sh2add a2, a1, s1
	ble s0, a1, label202
.p2align 2
label55:
	lw a4, 0(a0)
	lw t1, 0(a2)
	slli t2, a4, 4
	sub t0, t2, a4
	sh3add a5, t0, s2
	sh2add t2, t1, a5
	lw a4, 0(t2)
	bne a4, zero, label213
	mv a0, zero
.p2align 2
label220:
	addiw s10, s10, 1
	lw a0, 0(s3)
	ble s10, a0, label45
label63:
	ld a2, 120(sp)
	addiw s8, s8, 1
	max a0, a2, s9
	max s9, s11, a0
	lw a0, 0(s3)
	ble s8, a0, label34
label184:
	ld a2, 112(sp)
	max a0, a2, s7
	max s7, s9, a0
label74:
	addiw s6, s6, 1
	lw a0, 0(s3)
	ble s6, a0, label18
	j label323
.p2align 2
label213:
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s0, a3, label55
label202:
	addi a0, a0, 4
	j label48
label195:
	li a0, 1
	beq a0, zero, label220
	mv a0, s0
	mv a1, s1
	mv a2, s3
	jal maxCliques
	ld a2, 128(sp)
	max a1, a2, s11
	max s11, a0, a1
	addiw s10, s10, 1
	lw a0, 0(s3)
	ble s10, a0, label45
	j label63
label189:
	mv s11, zero
	ld a2, 120(sp)
	max a0, a2, s9
	max s9, zero, a0
	j label42
label132:
	mv s7, zero
	ld a0, 104(sp)
	max a1, a0, s5
	max s5, zero, a1
	j label78
label168:
	mv s9, zero
	ld a2, 112(sp)
	max a0, a2, s7
	max s7, zero, a0
	j label74
label95:
	mv a0, zero
	j label80
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
	ble s3, zero, label377
	mv s7, s5
	mv s8, zero
.p2align 2
label360:
	jal getint
	sw a0, 0(s7)
	jal getint
	addiw s8, s8, 1
	sw a0, 4(s7)
	ble s3, s8, label364
	addi s7, s7, 8
	j label360
label364:
	li a0, 3
	ble s3, a0, label434
	mv a0, s5
	mv a1, zero
	j label366
.p2align 2
label369:
	addi a0, a0, 32
.p2align 2
label366:
	ld a3, 0(a0)
	addiw a1, a1, 4
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a3, t1, a4
	sw s0, 0(t0)
	sh3add t0, a3, s4
	sh2add a5, a2, t0
	sw s0, 0(a5)
	ld a3, 8(a0)
	srai a4, a3, 32
	sext.w a2, a3
	slli t1, a2, 4
	sub t0, t1, a2
	sh3add a5, t0, s4
	slli t0, a4, 4
	sh2add t1, a4, a5
	sub a3, t0, a4
	sw s0, 0(t1)
	sh3add t1, a3, s4
	sh2add a5, a2, t1
	sw s0, 0(a5)
	ld a3, 16(a0)
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a3, t1, a4
	sh3add a5, a3, s4
	sw s0, 0(t0)
	sh2add t0, a2, a5
	sw s0, 0(t0)
	ld a3, 24(a0)
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a3, t1, a4
	sh3add a5, a3, s4
	sw s0, 0(t0)
	sh2add t0, a2, a5
	sw s0, 0(t0)
	bgt s6, a1, label369
label370:
	ble s3, a1, label377
	sh3add a0, a1, s5
	j label373
label376:
	addi a0, a0, 8
label373:
	ld a3, 0(a0)
	addiw a1, a1, 1
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a5, t1, a4
	sw s0, 0(t0)
	sh3add t0, a5, s4
	sh2add a3, a2, t0
	sw s0, 0(a3)
	bgt s3, a1, label376
label377:
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
label434:
	mv a1, zero
	j label370
